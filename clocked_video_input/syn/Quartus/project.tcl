load_package flow 
project_new cvi_ciris 
remove_all_global_assignments -name *_FILE 
source files.tcl 
set_global_assignment -name FAMILY "Cyclone IV" 
set_global_assignment -name DEVICE "EP4CE115F29C7" 
set_global_assignment -name TOP_LEVEL_ENTITY "cvi_ciris" 
set_global_assignment -name NUM_PARALLEL_PROCESSORS "ALL" 
set_global_assignment -name VHDL_INPUT_VERSION "VHDL_2008" 
set_global_assignment -name VERILOG_INPUT_VERSION "SYSTEMVERILOG_2005" 
set_global_assignment -name optimization_technique "BALANCED" 
