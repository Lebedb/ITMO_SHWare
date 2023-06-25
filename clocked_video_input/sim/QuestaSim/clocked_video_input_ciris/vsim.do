vcd file tb_cvi_ciris.vcd;
vcd add -r /*;

add wave -noupdate -expand -group cvi_ciris /tb_cvi_ciris/INST_cvi_ciris/clk_itu_i
add wave -noupdate -expand -group cvi_ciris /tb_cvi_ciris/INST_cvi_ciris/clk_avalon_sv_i
add wave -noupdate -expand -group cvi_ciris /tb_cvi_ciris/INST_cvi_ciris/rst_n
add wave -noupdate -expand -group cvi_ciris /tb_cvi_ciris/INST_cvi_ciris/itu_data_i
add wave -noupdate -expand -group cvi_ciris /tb_cvi_ciris/INST_cvi_ciris/h_sync_i
add wave -noupdate -expand -group cvi_ciris /tb_cvi_ciris/INST_cvi_ciris/v_sync_i
add wave -noupdate -expand -group cvi_ciris /tb_cvi_ciris/INST_cvi_ciris/dout_ready
add wave -noupdate -expand -group cvi_ciris /tb_cvi_ciris/INST_cvi_ciris/dout_valid
add wave -noupdate -expand -group cvi_ciris /tb_cvi_ciris/INST_cvi_ciris/dout_sop
add wave -noupdate -expand -group cvi_ciris /tb_cvi_ciris/INST_cvi_ciris/dout_eop
add wave -noupdate -expand -group cvi_ciris /tb_cvi_ciris/INST_cvi_ciris/dout_data
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/clk_i
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/rst_n_i
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/itu_data_i
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/work_ena_i
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/dout_data
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/dout_valid
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/dout_sop
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/dout_eop
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/width_o
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/height_o
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/interlaced_o
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/state
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/itu_data_ff
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/data_shift_reg
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/sav
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/eav
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/v_bit_ff
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/v_bit_prev_ff
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/sav_ff
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/start_frame
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/end_frame
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/row_valid_ff
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/first_row_valid_ff
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/frame_active_ff
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/avst_data_buff
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/avst_valid_ff
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/width_cnt
add wave -noupdate -group bt656_decoder /tb_cvi_ciris/INST_cvi_ciris/genblk2/bt656_decoder/height_cnt
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/clk_i
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/clk_itu_i
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/rst_n
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/din_data
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/din_valid
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/din_sop
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/din_eop
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/width_i
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/height_i
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/interlaced_i
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/dout_ready
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/dout_valid
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/dout_data
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/end_of_video_o
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/width_o
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/height_o
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/interlaced_o
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/vip_ctrl_send_o
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/state
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/sop_fifo
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/eop_fifo
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/valid_fifo
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/data_fifo
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/start_frame
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/end_frame
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/rdreq
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/rdreq_ff
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/data_fifo_i
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/fifo_empty
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/data_fifo_o
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/stp_rdfull
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/stp_rdusedw
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/stp_wrempty
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/stp_wrfull
add wave -noupdate -group bt_to_avst /tb_cvi_ciris/INST_cvi_ciris/INST_bt_to_avst/stp_wrusedw
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/clk
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/rst
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/din_ready
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/din_valid
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/din_data
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/dout_ready
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/dout_valid
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/dout_sop
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/dout_eop
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/dout_data
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/end_of_video
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/width
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/height
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/interlaced
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/vip_ctrl_send
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/vip_ctrl_busy
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/state
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/sop
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/eop
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/data
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/control_valid
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/end_of_video_valid
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/video_packet_ended_control_packet_not_started
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/write_control
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/control_data
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/control_header_state
add wave -noupdate -group encoder /tb_cvi_ciris/INST_cvi_ciris/INTS_alt_vipvfr131_common_control_packet_encoder/control_header_data

configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps

run -all
wave zoom full