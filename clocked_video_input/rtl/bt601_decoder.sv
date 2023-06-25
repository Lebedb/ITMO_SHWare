module bt601_decoder #(
    parameter HEIGHT = 480,
    parameter WIDTH  = 640,
    parameter DW     = 8
) (
    // Main
    input  logic                      clk_i       ,
    input  logic                      rst_n       ,
    // ITU input
    input  logic [            DW-1:0] itu_data_i  ,
    input  logic                      h_sync_i    ,
    input  logic                      v_sync_i    ,
    // Output
    output logic [            DW-1:0] dout_data   ,
    output logic                      dout_valid  ,
    output logic                      dout_sop    ,
    output logic                      dout_eop    ,
    // frame params
    output logic [ $clog2(WIDTH)-1:0] width_o     ,
    output logic [$clog2(HEIGHT)-1:0] height_o    ,
    output logic [               3:0] interlaced_o
    // test pix
    //output logic [              19:0] test_pix_cnt_in ,
    //output logic [              19:0] test_pix_cnt_out
);

/*------------------------------------------------------------------------------
--  Declare
------------------------------------------------------------------------------*/
//// FSM
//
    typedef enum logic [2:0] {IDLE, START, FIRST_ROW, DATA, END} statetype;
    statetype state;

//// frame detect
//
    logic                    h_sync_ff  ;
    logic                    v_sync_ff  ;
    logic                    start_frame;
    logic                    end_frame  ;
    logic [      DW-1:0] data_buff  ;
    logic                    line_start ;

//// frame param counters
//
    logic [$clog2(WIDTH)-1:0] width_cnt ;
    logic [$clog2(WIDTH)-1:0] height_cnt;

/*------------------------------------------------------------------------------
--  Conditions
------------------------------------------------------------------------------*/
    always_ff @(posedge clk_i or negedge rst_n) begin : proc_h_sync_ff
        h_sync_ff <= ( ~rst_n ) ? '0 : h_sync_i;
    end

    always_ff @(posedge clk_i or negedge rst_n) begin : proc_v_sync_ff
        v_sync_ff <= ( ~rst_n ) ? '0 : v_sync_i;
    end

    assign start_frame = v_sync_i && ~v_sync_ff;
    assign end_frame   = ~v_sync_i && v_sync_ff;
    assign line_start  = h_sync_i && ~h_sync_ff;

/*------------------------------------------------------------------------------
--  Functional
------------------------------------------------------------------------------*/
////
//
    always_ff @(posedge clk_i or negedge rst_n) begin : proc_data_buff
        data_buff <= ( ~rst_n ) ? '0 : itu_data_i;
    end

//// FSM
//
    always_ff @(posedge clk_i or negedge rst_n) begin : proc_state
        if ( ~rst_n ) begin
            state      <= IDLE;
            dout_data  <= '0;
            dout_valid <= '0;
            dout_sop   <= '0;
            dout_eop   <= '0;
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
                        dout_valid <= h_sync_i;
                        dout_data  <= ( h_sync_ff ) ? data_buff : dout_data;
                    end

                FIRST_ROW :
                    begin
                        if ( ~h_sync_i && h_sync_ff ) begin
                            state      <= DATA;
                            dout_valid <= h_sync_i;
                        end else begin
                            dout_valid <= ( h_sync_i && h_sync_ff );
                            dout_data  <= ( h_sync_i && h_sync_ff ) ? data_buff : dout_data;
                        end
                    end

                DATA :
                    begin
                        if ( end_frame ) begin
                            state      <= END;
                            dout_eop   <= '1;
                            dout_valid <= '1;
                            dout_data  <= data_buff;
                        end else begin
                            dout_valid <= h_sync_ff;
                            dout_data  <= ( h_sync_ff ) ? data_buff : dout_data;
                        end
                            end

                 END :
                     begin
                         state      <= IDLE;
                         dout_eop   <= '0;
                         dout_valid <= '0;
                     end
             endcase
         end
     end

/*------------------------------------------------------------------------------
--  Frame params
------------------------------------------------------------------------------*/
    always_ff @(posedge clk_i or negedge rst_n) begin : proc_width_cnt
        if ( ~rst_n ) begin
            width_cnt <= '0;
        end else if ( end_frame || line_start ) begin
            width_cnt <= '0;
        end else if ( h_sync_i ) begin
            width_cnt <= width_cnt + 1'b1;
        end
    end

    always_ff @(posedge clk_i or negedge rst_n) begin : proc_height_cnt
        if ( ~rst_n ) begin
            height_cnt <= '0;
        end else if ( end_frame ) begin
            height_cnt <= '0;
        end else if ( line_start ) begin
            height_cnt <= height_cnt + 1'b1;
        end
    end

    always_ff @(posedge clk_i or negedge rst_n) begin : proc_width_o
        if ( ~rst_n ) begin
            width_o <= WIDTH;
        end else if ( end_frame ) begin
            width_o <= width_cnt/2 + 1;
        end
    end

    always_ff @(posedge clk_i or negedge rst_n) begin : proc_height_o
     if ( ~rst_n ) begin
         height_o <= HEIGHT;
     end else if ( end_frame ) begin
         height_o <= height_cnt;
     end
    end

    assign interlaced_o = 4'b0010;

/*------------------------------------------------------------------------------
--  TEST
------------------------------------------------------------------------------*/
/*
    always_ff @(posedge clk_i or negedge rst_n) begin : proc_test_pix_cnt_in
        if ( ~rst_n ) begin
            test_pix_cnt_in <= '0;
        end else if ( end_frame ) begin
            test_pix_cnt_in <= '0;
            $display("width from camera %d", test_pix_cnt_in);
        end else if ( h_sync_ff && v_sync_i ) begin
            test_pix_cnt_in <= test_pix_cnt_in + 1'b1;
        end
    end

    always_ff @(posedge clk_i or negedge rst_n) begin : proc_test_pix_cnt_out
        if ( ~rst_n ) begin
            test_pix_cnt_out <= '0;
        end else if ( dout_eop && dout_valid ) begin
            test_pix_cnt_out <= '0;
            $display("width from decoder %d", test_pix_cnt_out);
        end else if ( dout_valid && ( state == DATA || state == FIRST_ROW ) ) begin
            test_pix_cnt_out <= test_pix_cnt_out + 1'b1;
        end
    end
*/
endmodule // bt601_decoder