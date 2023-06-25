`timescale 1ns/1ns

module tb_cvi_ciris #(
    // video data
    parameter BITS_PER_SYMBOL  = 8  ,
    parameter SYMBOLS_PER_BEAT = 1  ,
    parameter WIDTH            = 300,
    parameter HEIGHT           = 4
);
    localparam ITU_ACTIVE_LINE = HEIGHT;

/*------------------------------------------------------------------------------
--  IO
------------------------------------------------------------------------------*/
    logic                                        clk_itu_i       = '0;
    logic                                        clk_avalon_sv_i = '0;
    logic                                        rst_n           = '0;
    logic [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] itu_data_i      = '0;
    logic                                        h_sync_i        = '0;
    logic                                        v_sync_i        = '0;
    logic                                        dout_ready      = '1;
    logic                                        dout_valid          ;
    logic                                        dout_sop            ;
    logic                                        dout_eop            ;
    logic [BITS_PER_SYMBOL*SYMBOLS_PER_BEAT-1:0] dout_data           ;

/*------------------------------------------------------------------------------
--  Declare
------------------------------------------------------------------------------*/
    logic [$clog2(WIDTH*HEIGHT*2)-1:0] cnt_pix_output;

/*------------------------------------------------------------------------------
--  Connections
------------------------------------------------------------------------------*/
    cvi_ciris #(
        .BITS_PER_SYMBOL (BITS_PER_SYMBOL ),
        .SYMBOLS_PER_BEAT(SYMBOLS_PER_BEAT),
        .HEIGHT          (HEIGHT          ),
        .WIDTH           (WIDTH           )
    ) INST_cvi_ciris (
        .clk_itu_i      (clk_itu_i      ),
        .clk_avalon_sv_i(clk_avalon_sv_i),
        .rst_n          (rst_n          ),
        .itu_data_i     (itu_data_i     ),
        .h_sync_i       (h_sync_i       ),
        .v_sync_i       (v_sync_i       ),
        .dout_ready     (dout_ready     ),
        .dout_valid     (dout_valid     ),
        .dout_sop       (dout_sop       ),
        .dout_eop       (dout_eop       ),
        .dout_data      (dout_data      )
    );

/*------------------------------------------------------------------------------
--  CLK
------------------------------------------------------------------------------*/
    initial
        begin
            #50 clk_avalon_sv_i = '0;
            forever
                #5  clk_avalon_sv_i = !clk_avalon_sv_i;
        end

    initial
        begin
            #50 clk_itu_i = '0;
            forever
                #15 clk_itu_i = !clk_itu_i  ;
        end


    task wait_clk_av(int i);
        repeat(i) @(posedge clk_avalon_sv_i);
    endtask : wait_clk_av

    task wait_clk_itu(int q);
        repeat(q) @(posedge clk_itu_i);
    endtask : wait_clk_itu


/*------------------------------------------------------------------------------
--  Random dout_ready generation
------------------------------------------------------------------------------*/
// dout_ready
    bit [7:0] ready_random;
    always_ff @(posedge clk_avalon_sv_i) begin
        ready_random <= $urandom% 100;
    end

    always_ff @(posedge clk_avalon_sv_i) begin
        if ( ready_random < 60 ) begin
            dout_ready <= '1;
        end else begin
            dout_ready <= '0;
        end
    end


/*------------------------------------------------------------------------------
--  Testing
------------------------------------------------------------------------------*/
    initial
        begin
            $display("START TEST");
            wait_clk_itu(WIDTH/2);
            rst_n = '1;
            wait_clk_itu(WIDTH/2);
            //
            itu_data_i[5:4] = 2'b11;
            wait_clk_itu(WIDTH/2);
            //
            end_frame();
            wait_clk_itu(WIDTH/4);
            //
            itu656_frame();
            wait_clk_itu(1);
            //
            itu656_frame();
            //
            wait_clk_itu(WIDTH/2);
            $display("END TEST");
            $stop;
        end

/*------------------------------------------------------------------------------
--  Virtual debug counters
------------------------------------------------------------------------------*/
    always_ff @(posedge clk_avalon_sv_i or negedge rst_n) begin : proc_cnt_pix_output
        if ( ~rst_n ) begin
            cnt_pix_output <= '0;
        end else if ( dout_sop && dout_valid ) begin 
            cnt_pix_output <= '0;
        end else if ( dout_valid && ~dout_sop ) begin
            cnt_pix_output <= cnt_pix_output + 1'b1;
        end
    end

property check_pix_out_sum;
    @(posedge clk_avalon_sv_i) dout_eop && dout_valid |=> 
                                ( cnt_pix_output == (WIDTH*HEIGHT*2) )
endproperty

assert property (check_pix_out_sum)
    $display("line out is full");
else $error("data missed", $time());

/*------------------------------------------------------------------------------
--  Tasks
------------------------------------------------------------------------------*/
    task itu656_frame();
        begin
            start_frame();
            wait_clk_itu(10);
            sav();
            repeat (WIDTH*2)
                begin
                    itu_data_i = {$random}% (253);
                    wait_clk_itu(1);
                end
            // eav
            eav();
            wait_clk_itu({$random}% (300));
            // video data
            repeat (HEIGHT-2)
                begin
                    sav();

                    repeat (WIDTH*2)
                        begin
                            itu_data_i = {$random}% (253);
                            wait_clk_itu(1);
                        end

                    eav();
                    wait_clk_itu({$random}% (300));
                end
            // last strobe of frame

            sav();

            repeat (WIDTH*2)
                begin
                    itu_data_i = {$random}% (253);
                    wait_clk_itu(1);
                end

            eav();

            wait_clk_itu({$random}% (300));

            end_frame();
        end
    endtask : itu656_frame

    task start_frame();
        itu_data_i = 8'hFF;
        wait_clk_itu(1);

        itu_data_i = 8'h00;
        wait_clk_itu(1);

        itu_data_i = 8'h00;
        wait_clk_itu(1);

        itu_data_i[5] = 0;
        itu_data_i[4] = 1;
        $display("***************");
        $display("* Start frame *");
        $display("***************");
        wait_clk_itu(1);
    endtask : start_frame

    task sav();
        itu_data_i = 8'hFF;
        wait_clk_itu(1);

        itu_data_i = 8'h00;
        wait_clk_itu(1);

        itu_data_i = 8'h00;
        wait_clk_itu(1);

        itu_data_i[4] = 0;
        wait_clk_itu(1);
    endtask : sav

    task eav();
        itu_data_i = 8'hFF;
        wait_clk_itu(1);

        itu_data_i = 8'h00;
        wait_clk_itu(1);

        itu_data_i = 8'h00;
        wait_clk_itu(1);

        itu_data_i[4] = 1;
        wait_clk_itu(1);
    endtask : eav

    task end_frame();
        begin
            itu_data_i = 8'hFF;
            wait_clk_itu(1);

            itu_data_i = 8'h00;
            wait_clk_itu(1);

            itu_data_i = 8'h00;
            wait_clk_itu(1);

            itu_data_i[5] = 1;
        end
    endtask : end_frame

endmodule : tb_cvi_ciris