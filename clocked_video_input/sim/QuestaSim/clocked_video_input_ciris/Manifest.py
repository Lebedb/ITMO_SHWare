action = "simulation"
sim_tool = "modelsim"
sim_top = "tb_cvi_ciris"

sim_post_cmd = "vsim -voptargs=+acc -do vsim.do -i tb_cvi_ciris"

modules = {
  "local" : [ "../../../tb/tb_cvi_ciris" ],
}
