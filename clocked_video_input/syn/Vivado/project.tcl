create_project cvi_ciris ./ 
# project properties 
set_property "part" "xc7a12tcpg238-3" [current_project] 
set_property "target_language" "verilog" [current_project] 
set_property "top" "cvi_ciris" [get_property srcset [current_run]] 
source files.tcl 
update_compile_order -fileset sources_1 
update_compile_order -fileset sim_1 
exit 
