module cvi_ciris #(
    // video data
    parameter BITS_PER_SYMBOL  = 8             ,
    parameter SYMBOLS_PER_BEAT = 1             ,
    parameter HEIGHT           = 600           ,
    parameter WIDTH            = 800           ,
    parameter SYNC_SIGNALS     = "Embedded"    ,
    parameter FAMILY           = "Cyclone IV E",
    parameter FIFO_NUMWORDS    = 128           ,
    parameter DEF_METASTAB     = "OFF"
) (
    input                                         clk_itu_i      ,
    input                                         clk_avalon_sv_i,
    input                                         rst_n          ,
    input  [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] itu_data_i     ,
    input                                         h_sync_i       ,
    input                                         v_sync_i       ,
    input                                         dout_ready     ,
    output                                        dout_valid     ,
    output                                        dout_sop       ,
    output                                        dout_eop       ,
    output [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] dout_data
);

    localparam DATA_W = BITS_PER_SYMBOL * SYMBOLS_PER_BEAT;

/*------------------------------------------------------------------------------
--  Declare
------------------------------------------------------------------------------*/
// bt601_decoder -> bt_to_avst
    logic [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] data_bt_avst     ;
    logic                                        valid_bt_avst    ;
    logic                                        sop_bt_avst      ;
    logic                                        eop_bt_avst      ;
    logic [                                15:0] btdata_width     ;
    logic [                                15:0] btdata_height    ;
    logic [                                 3:0] btdata_interlaced;

// bt_to_avst -> encoder
    logic                                        ready_bt_encoder     ;
    logic [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] data_bt_encoder      ;
    logic                                        valid_bt_encoder     ;
    logic                                        eov_bt_encoder       ;
    logic                                        vcs_bt_encoder       ;
    logic [                                15:0] width_bt_encoder     ;
    logic [                                15:0] height_bt_encoder    ;
    logic [                                 3:0] interlaced_bt_encoder;

// encoder -> output
    logic                                        ready_encoder_output;
    logic                                        valid_encoder_output;
    logic                                        sop_encoder_output  ;
    logic                                        eop_encoder_output  ;
    logic [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] data_encoder_output ;

// sync

    logic [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] itu_data_i_w    ;
    logic                                        h_sync_i_w      ;
    logic                                        v_sync_i_w      ;

/*------------------------------------------------------------------------------
--  Synchronizer
------------------------------------------------------------------------------*/
    generate
        if ( DEF_METASTAB == "ON" ) begin
            
            logic [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] data_in_ff      ;
            logic [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] sync_itu_data_ff;

            if ( SYNC_SIGNALS == "Separate" ) begin

                logic h_sync_ff ;
                logic h_sync_ff1;

                logic v_sync_ff ;
                logic v_sync_ff1;

                always_ff @(posedge clk_itu_i or negedge rst_n) begin
                    if ( ~rst_n ) begin
                        data_in_ff       <= '0;
                        sync_itu_data_ff <= '0;
                    end else begin
                        data_in_ff       <= itu_data_i;
                        sync_itu_data_ff <= data_in_ff;
                    end
                end

                always_ff @(posedge clk_itu_i or negedge rst_n) begin : proc_h_sync_ff
                    if ( ~rst_n ) begin
                        h_sync_ff  <= '0;
                        h_sync_ff1 <= '0;
                    end else begin
                        h_sync_ff  <= h_sync_i;
                        h_sync_ff1 <= h_sync_ff;
                    end
                end

                always_ff @(posedge clk_itu_i or negedge rst_n) begin : proc_v_sync_ff
                    if ( ~rst_n ) begin
                        v_sync_ff  <= '0;
                        v_sync_ff1 <= '0;
                    end else begin
                        v_sync_ff  <= v_sync_i;
                        v_sync_ff1 <= v_sync_ff;
                    end
                end

                assign h_sync_i_w   = h_sync_ff1;
                assign v_sync_i_w   = v_sync_ff1;
                assign itu_data_i_w = sync_itu_data_ff;

            end else if ( SYNC_SIGNALS == "Embedded" ) begin

                always_ff @(posedge clk_itu_i or negedge rst_n) begin
                    if ( ~rst_n ) begin
                        data_in_ff       <= '0;
                        sync_itu_data_ff <= '0;
                    end else begin
                        data_in_ff       <= itu_data_i;
                        sync_itu_data_ff <= data_in_ff;
                    end
                end

                assign itu_data_i_w = sync_itu_data_ff;
            end

        end else if ( DEF_METASTAB == "OFF" ) begin

            if ( SYNC_SIGNALS == "Separate" ) begin

                assign h_sync_i_w   = h_sync_i;
                assign v_sync_i_w   = v_sync_i;
                assign itu_data_i_w = itu_data_i;

            end else if ( SYNC_SIGNALS == "Embedded" ) begin

                assign itu_data_i_w = itu_data_i;

            end
        end
    endgenerate


/*------------------------------------------------------------------------------
--  Connections
------------------------------------------------------------------------------*/
    generate
        if ( SYNC_SIGNALS == "Separate" ) begin
            bt601_decoder #(
                .HEIGHT(HEIGHT                          ),
                .WIDTH (WIDTH                           ),
                .DW    (BITS_PER_SYMBOL*SYMBOLS_PER_BEAT)
            ) bt601_decoder (
                // Main
                .clk_i       (clk_itu_i        ),
                .rst_n       (rst_n            ),
                // ITU input
                .itu_data_i  (itu_data_i_w     ),
                .h_sync_i    (h_sync_i_w       ),
                .v_sync_i    (v_sync_i_w       ),
                // Output
                .dout_data   (data_bt_avst     ),
                .dout_valid  (valid_bt_avst    ),
                .dout_sop    (sop_bt_avst      ),
                .dout_eop    (eop_bt_avst      ),
                // frame params
                .width_o     (btdata_width     ),
                .height_o    (btdata_height    ),
                .interlaced_o(btdata_interlaced)
            );
        end else if ( SYNC_SIGNALS == "Embedded" ) begin
            bt656_decoder #(
                .HEIGHT(HEIGHT                          ),
                .WIDTH (WIDTH                           ),
                .DW    (BITS_PER_SYMBOL*SYMBOLS_PER_BEAT)
            ) bt656_decoder (
                // Main
                .clk_i       (clk_itu_i        ),
                .rst_n_i     (rst_n            ),
                // ITU input
                .itu_data_i  (itu_data_i_w     ),
                .work_ena_i  ('1               ),
                // Avst output
                .dout_data   (data_bt_avst     ),
                .dout_valid  (valid_bt_avst    ),
                .dout_sop    (sop_bt_avst      ),
                .dout_eop    (eop_bt_avst      ),
                // frame params
                .width_o     (btdata_width     ),
                .height_o    (btdata_height    ),
                .interlaced_o(btdata_interlaced)
            );
        end
    endgenerate


    bt_to_avst #(
        .BITS_PER_SYMBOL (BITS_PER_SYMBOL ),
        .SYMBOLS_PER_BEAT(SYMBOLS_PER_BEAT),
        .HEIGHT          (HEIGHT          ),
        .WIDTH           (WIDTH           ),
        .FIFODEPTH       (FIFO_NUMWORDS   )
    ) INST_bt_to_avst (
        .clk_i          (clk_avalon_sv_i      ),
        .clk_itu_i      (clk_itu_i            ),
        .rst_n          (rst_n                ),
        .din_data       (data_bt_avst         ),
        .din_valid      (valid_bt_avst        ),
        .din_sop        (sop_bt_avst          ),
        .din_eop        (eop_bt_avst          ),
        .width_i        (btdata_width         ),
        .height_i       (btdata_height        ),
        .interlaced_i   (btdata_interlaced    ),
        .dout_ready     (ready_bt_encoder     ),
        .dout_valid     (valid_bt_encoder     ),
        .dout_data      (data_bt_encoder      ),
        .end_of_video_o (eov_bt_encoder       ),
        .width_o        (width_bt_encoder     ),
        .height_o       (height_bt_encoder    ),
        .interlaced_o   (interlaced_bt_encoder),
        .vip_ctrl_send_o(vcs_bt_encoder       )
    );

    alt_vipvfr131_common_control_packet_encoder #(
        .BITS_PER_SYMBOL (BITS_PER_SYMBOL ),
        .SYMBOLS_PER_BEAT(SYMBOLS_PER_BEAT)
    ) INTS_alt_vipvfr131_common_control_packet_encoder (
        .clk          (clk_avalon_sv_i      ),
        .rst          (~rst_n               ),
        .din_ready    (ready_bt_encoder     ),
        .din_valid    (valid_bt_encoder     ),
        .din_data     (data_bt_encoder      ),
        //
        .end_of_video (eov_bt_encoder       ),
        .width        (width_bt_encoder     ),
        .height       (height_bt_encoder    ),
        .interlaced   (interlaced_bt_encoder),
        .vip_ctrl_send(vcs_bt_encoder       ),
        //
        .dout_ready   (ready_encoder_output ),
        .dout_valid   (valid_encoder_output ),
        .dout_sop     (sop_encoder_output   ),
        .dout_eop     (eop_encoder_output   ),
        .dout_data    (data_encoder_output  ),
        .vip_ctrl_busy(                     )
    );

    alt_vipvfr131_common_stream_output #(.DATA_WIDTH(DATA_W)) INST_alt_vipvfr131_common_stream_output (
        .clk       (clk_avalon_sv_i     ),
        .rst       (~rst_n              ),
        .dout_ready(dout_ready          ),
        .dout_valid(dout_valid          ),
        .dout_sop  (dout_sop            ),
        .dout_eop  (dout_eop            ),
        .dout_data (dout_data           ),
        .int_ready (ready_encoder_output),
        .int_valid (valid_encoder_output),
        .int_sop   (sop_encoder_output  ),
        .int_eop   (eop_encoder_output  ),
        .int_data  (data_encoder_output ),
        .enable    (1'b1                ),
        .synced    (                    )
    );

endmodule : cvi_ciris