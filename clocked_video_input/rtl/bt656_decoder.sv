module bt656_decoder #(
    parameter WIDTH  = 640,
    parameter HEIGHT = 480,
    parameter DW     = 8    // DW = 8 or 10
) (
    // main
    input                 clk_i       ,
    input                 rst_n_i     ,
    //
    input        [DW-1:0] itu_data_i  ,
    input                 work_ena_i  ,
    //
    output logic [DW-1:0] dout_data   ,
    output logic          dout_valid  ,
    output logic          dout_sop    ,
    output logic          dout_eop    ,
    // frame params
    output logic [  15:0] width_o     ,
    output logic [  15:0] height_o    ,
    output logic [   3:0] interlaced_o
);
/*------------------------------------------------------------------------------
--  Sync bit params
------------------------------------------------------------------------------*/
    localparam V = ( DW == 8 ) ? 5 : 7; // V bit number
    localparam H = ( DW == 8 ) ? 4 : 6; // H bit number

/*------------------------------------------------------------------------------
--  Declare
------------------------------------------------------------------------------*/
// FSM
    typedef enum logic [2:0] {IDLE, START, FIRST_ROW, DATA, END} statetype;
    statetype state;

// control pack detection and analysis
    logic [  DW-1:0] itu_data_ff       ;
    logic [DW*3-1:0] data_shift_reg    ;
    logic            sav               ;
    logic            eav               ;
    logic            v_bit_ff          ;
    logic            v_bit_prev_ff     ;
    logic            sav_ff            ;
    logic            start_frame       ;
    logic            end_frame         ;
    logic            row_valid_ff      ;
    logic            first_row_valid_ff;
    logic            frame_active_ff   ;

    logic [DW-1:0] avst_data_buff;
    logic          avst_valid_ff ;

    logic [15:0] width_cnt ;
    logic [15:0] height_cnt;
/*------------------------------------------------------------------------------
--  BT656 decoding
------------------------------------------------------------------------------*/
    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_itu_data_ff
        if ( ~rst_n_i ) begin
            itu_data_ff <= 0;
        end else if ( work_ena_i ) begin
            itu_data_ff <= itu_data_i;
        end
    end

    // Сдвиговый регистр для определения синхропосылки
    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_data_shift_reg
        data_shift_reg <= ( ~rst_n_i ) ? '0 : {data_shift_reg[DW*2-1:0], itu_data_ff};
    end

    assign sav = ( data_shift_reg == 24'hFF0000 ) && ( itu_data_ff[H] == '0 ); // НАС
    assign eav = ( data_shift_reg == 24'hFF0000 ) && ( itu_data_ff[H] == '1 ); // КАС

    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_sav_ff
        if ( ~rst_n_i ) begin
            sav_ff <= '0;
        end else if ( sav ) begin
            sav_ff <= '1;
        end else begin
            sav_ff <= '0;
        end
    end

    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_v_bit_ff
        if ( ~rst_n_i ) begin
            v_bit_ff <= '0;
        end else if ( eav || sav ) begin
            v_bit_ff <= itu_data_ff[V];
        end
    end

    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_v_bit_prev_ff
        v_bit_prev_ff <= ( ~rst_n_i ) ? '0 : v_bit_ff;
    end

    // Начало и конец кадра ловим по перепаду V бита в синхропосылке
    assign start_frame = ( ~v_bit_ff && v_bit_prev_ff );
    assign end_frame   = ( v_bit_ff && ~v_bit_prev_ff );

    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_row_valid_ff
        if ( ~rst_n_i ) begin
            row_valid_ff <= '0;
        end else if ( &itu_data_i ) begin
            row_valid_ff <= '0;
        end else if ( sav ) begin
            row_valid_ff <= '1;
        end
    end

    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_first_row_valid_ff
        if ( ~rst_n_i ) begin
            first_row_valid_ff <= '0;
        end else if ( &itu_data_i ) begin
            first_row_valid_ff <= '0;
        end else if ( sav_ff && row_valid_ff ) begin
            first_row_valid_ff <= '1;
        end
    end


    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_frame_active_ff
        if ( ~rst_n_i ) begin
            frame_active_ff <= '0;
        end else if ( start_frame ) begin
            frame_active_ff <= '1;
        end else if ( end_frame ) begin
            frame_active_ff <= '0;
        end
    end

/*------------------------------------------------------------------------------
--  BT656 to AVST on camera clock
------------------------------------------------------------------------------*/
    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_avst_data_buff
        if ( ~rst_n_i ) begin
            avst_data_buff <= '0;
        end else if ( row_valid_ff ) begin
            avst_data_buff <= itu_data_ff;
        end
    end

// FSM
    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_FSM
        if ( ~rst_n_i ) begin
            state      <= IDLE;
            dout_data  <= '0;
            dout_sop   <= '0;
            dout_eop   <= '0;
            dout_valid <= '0;
        end else begin
            case ( state )
                IDLE :
                    begin
                        if ( start_frame ) begin
                            dout_sop   <= '1;
                            dout_data  <= '0;
                            dout_valid <= '1;
                            state      <= START;
                        end
                    end

                START :
                    begin
                        state      <= FIRST_ROW;
                        dout_sop   <= '0;
                        dout_valid <= row_valid_ff;
                        dout_data  <= itu_data_ff;
                    end

                FIRST_ROW :
                    begin
                        if ( eav ) begin
                            state      <= DATA;
                            dout_valid <= row_valid_ff;
                            dout_data  <= avst_data_buff;
                        end else begin
                            dout_valid <= first_row_valid_ff;
                            dout_data  <= avst_data_buff;
                        end
                    end

                DATA :
                    begin
                        if ( end_frame ) begin
                            state      <= END;
                            dout_eop   <= '1;
                            dout_valid <= '1;
                            dout_data  <= avst_data_buff;
                        end else begin
                            dout_valid <= row_valid_ff;
                            dout_data  <= avst_data_buff;
                        end
                    end

                END :
                    begin
                        state      <= IDLE;
                        dout_eop   <= '0;
                        dout_valid <= '0;
                    end
            endcase // state
        end
    end

// frame counters
    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_width_cnt
        if ( ~rst_n_i ) begin
            width_cnt <= '0;
        end else if ( dout_sop || ( sav && ~itu_data_ff[V] ) ) begin // в конце кадра счетчик не сбрасывается в 0 
            width_cnt <= '0;                                         // и успевает передать значение
        end else if ( dout_valid && ~dout_sop ) begin
            width_cnt <= width_cnt + 1'b1;
        end
    end

    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_height_cnt
        if ( ~rst_n_i ) begin
            height_cnt <= '0;
        end else if ( dout_sop ) begin
            height_cnt <= '0;
        end else if ( eav && frame_active_ff ) begin
            height_cnt <= height_cnt + 1'b1;
        end
    end

    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_width_o
        if ( ~rst_n_i ) begin
            width_o <= WIDTH;
        end else if ( dout_eop ) begin
            width_o <= width_cnt/2;
        end
    end

    always_ff @(posedge clk_i or negedge rst_n_i) begin : proc_height_o
        if ( ~rst_n_i ) begin
            height_o <= HEIGHT;
        end else if ( dout_eop ) begin
            height_o <= height_cnt;
        end
    end

    assign interlaced_o = 4'b0010;

endmodule : bt656_decoder