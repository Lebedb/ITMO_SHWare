module bt_to_avst #(
    // video data params
    parameter BITS_PER_SYMBOL  = 8                                 ,
    parameter SYMBOLS_PER_BEAT = 1                                 ,
    parameter HEIGHT           = 480                               ,
    parameter WIDTH            = 640                               ,
    // dcfifo params
    parameter FIFODEPTH        = 256                               ,
    parameter FIFODW           = BITS_PER_SYMBOL*SYMBOLS_PER_BEAT+3
) (
    // main signals
    input  logic                                        clk_i          , // main clock
    input  logic                                        clk_itu_i      , // clock from camera
    input  logic                                        rst_n          ,
    // from decoder
    input  logic [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] din_data       ,
    input  logic                                        din_valid      ,
    input  logic                                        din_sop        ,
    input  logic                                        din_eop        ,
    input  logic [                                15:0] width_i        ,
    input  logic [                                15:0] height_i       ,
    input  logic [                                 3:0] interlaced_i   ,
    // Avalon-ST source interface (external)
    input  logic                                        dout_ready     ,
    output logic                                        dout_valid     ,
    output logic [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] dout_data      ,
    // encoder control signals
    output logic                                        end_of_video_o ,
    output logic [                                15:0] width_o        ,
    output logic [                                15:0] height_o       ,
    output logic [                                 3:0] interlaced_o   ,
    output logic                                        vip_ctrl_send_o
    // virtual debug
    //output logic [          $clog2(WIDTH*2*HEIGHT)-1:0] virtual_debug_word_cnt_o
);

/*------------------------------------------------------------------------------
--  Declare
------------------------------------------------------------------------------*/
// FSM
    typedef enum logic [1:0] {IDLE, START, DATA, END} statetype;
    statetype state;

// fifo
    logic                                        sop_fifo     ;
    logic                                        eop_fifo     ;
    logic                                        valid_fifo   ;
    logic [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] data_fifo    ;

// video
    logic start_frame;
    logic end_frame  ;

// fifo declare
    logic              rdreq      ;
    logic              rdreq_ff   ;
    logic [FIFODW-1:0] data_fifo_i;
    logic              fifo_empty ;
    logic [FIFODW-1:0] data_fifo_o;

// stp signals
    logic                         stp_rdfull ;
    logic [$clog2(FIFODEPTH)-1:0] stp_rdusedw;
    logic                         stp_wrempty;
    logic                         stp_wrfull ;
    logic [$clog2(FIFODEPTH)-1:0] stp_wrusedw;

/*------------------------------------------------------------------------------
--  FIFO
------------------------------------------------------------------------------*/
//                         [10]     [9]       [8]       [7:0]
    assign data_fifo_i = {din_eop, din_sop, din_valid, din_data};

    crs_lib_dc_fifo #(
        .DW      (FIFODW              ),
        .AW      ($clog2(FIFODEPTH)   ),
        .N       (1                   ),
        .MAX_SIZE(1<<$clog2(FIFODEPTH)),
        .VENDOR  ("FPGA"              )  // "FPGA"(universal), ASIC PARAMETERS ("ARTISAN",AVANT","VIRAGE"),"MODEL"
    ) crs_lib_dc_fifo_inst (
        .rd_clk_i (clk_i      ),
        .wr_clk_i (clk_itu_i  ),
        .rst_i    (rst_n      ),
        .clr_i    ('0         ),
        .din_i    (data_fifo_i),
        .we_i     (din_valid  ),
        .dout_o   (data_fifo_o),
        .re_i     (rdreq      ),
        .full_o   (stp_rdfull ),
        .empty_o  (fifo_empty ),
        .full_n_o (           ),
        .empty_n_o(           ),
        .level_o  (           )
    );


/*------------------------------------------------------------------------------
--  Functional
------------------------------------------------------------------------------*/
    assign eop_fifo   = data_fifo_o[FIFODW-1  ];
    assign sop_fifo   = data_fifo_o[FIFODW-2  ];
    assign valid_fifo = data_fifo_o[FIFODW-3  ];
    assign data_fifo  = data_fifo_o[FIFODW-4:0];

    assign rdreq = ( (state == IDLE || state == END) && ~fifo_empty ) ? '1 : ( dout_ready && ~fifo_empty );

    always_ff @(posedge clk_i or negedge rst_n) begin : proc_rdreq_ff
        if ( ~rst_n ) begin
            rdreq_ff <= '0;
        end else if ( end_of_video_o && dout_valid ) begin
            rdreq_ff <= '0;
        end else if ( dout_ready ) begin
            rdreq_ff <= rdreq;
        end
    end

/*------------------------------------------------------------------------------
--  FSM
------------------------------------------------------------------------------*/
// conditions FSM
    assign start_frame = sop_fifo && valid_fifo && data_fifo == '0;
    assign end_frame   = eop_fifo && valid_fifo;

    always_ff @(posedge clk_i or negedge rst_n) begin : proc_state
        if ( ~rst_n ) begin
            state           <= IDLE;
            dout_valid      <= '0;
            dout_data       <= '0;
            end_of_video_o  <= '0;
            vip_ctrl_send_o <= '0;
        end else begin
            case ( state )
                IDLE :
                    begin
                        if ( start_frame ) begin
                            state           <= START;
                            vip_ctrl_send_o <= '1;
                            dout_data       <= '0;
                        end
                    end

                START :
                    begin
                        state           <= DATA;
                        dout_valid      <= '0;
                        vip_ctrl_send_o <= '0;
                        dout_data       <= data_fifo;
                    end

                DATA :
                    begin
                        if ( end_frame ) begin
                            state          <= END;
                            dout_valid     <= '1;
                            dout_data      <= data_fifo;
                            end_of_video_o <= '1;
                        end else if ( dout_ready ) begin
                            dout_valid <= rdreq_ff;
                            dout_data  <= data_fifo;
                        end
                    end

                END :
                    begin
                        if ( dout_ready ) begin
                            state          <= IDLE;
                            dout_valid     <= '0;
                            end_of_video_o <= '0;
                        end
                    end
            endcase
        end
    end

/*------------------------------------------------------------------------------
-- encoder control signals
------------------------------------------------------------------------------*/
    assign width_o      = width_i;
    assign height_o     = height_i;
    assign interlaced_o = interlaced_i;

/*------------------------------------------------------------------------------
--  virtual debug
------------------------------------------------------------------------------*/
/*
    always_ff @(posedge clk_i or negedge rst_n) begin : proc_virtual_debug_word_cnt_o
    if ( ~rst_n ) begin
    virtual_debug_word_cnt_o <= '0;
    end else if ( vip_ctrl_send_o ) begin
    virtual_debug_word_cnt_o <= '0;
    end else if ( dout_valid && dout_ready ) begin
    virtual_debug_word_cnt_o <= virtual_debug_word_cnt_o + 1'b1;
    end
    end
*/
endmodule : bt_to_avst