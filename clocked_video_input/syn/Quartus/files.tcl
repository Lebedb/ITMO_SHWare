set_global_assignment -name POST_MODULE_SCRIPT_FILE "quartus_sh:module.tcl" 
set_global_assignment -name VERILOG_FILE ../../../../../common/common_lib/rtl/alt_vipvfr131_common_stream_output.v -library work  
set_global_assignment -name VERILOG_FILE ../../../../../common/common_lib/rtl/alt_vipvfr131_common_control_packet_encoder.v -library work  
set_global_assignment -name SYSTEMVERILOG_FILE ../../../../../common/common_lib2/ram/async_ram/rtl/crs_lib_async_ram.sv -library work  
set_global_assignment -name SYSTEMVERILOG_FILE ../../rtl/bt_to_avst.sv -library work  
set_global_assignment -name SYSTEMVERILOG_FILE ../../rtl/bt656_decoder.sv -library work  
set_global_assignment -name SYSTEMVERILOG_FILE ../../rtl/bt601_decoder.sv -library work  
set_global_assignment -name SYSTEMVERILOG_FILE ../../rtl/cvi_ciris.sv -library work  
set_global_assignment -name SYSTEMVERILOG_FILE ../../../../../common/common_lib2/fifo/crs_lib_dc_fifo/rtl/crs_lib_dc_fifo.sv -library work  
