# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.cache/wt [current_project]
set_property parent.project_path C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib {
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/MUX4.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/regfile.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/sign_extend.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/sl2.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/PC.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/MUX2.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/main_decoder.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/alu_decoder.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/ALU.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/adder.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/datapath.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/control_unit.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/display.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/clkdiv.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/MIPS.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/imem.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/dmem.v
  C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/disdiv.v
}
read_verilog -library Data C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/sources_1/new/top.v
read_xdc C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/constrs_1/new/Nexys-4-DDR-Master.xdc
set_property used_in_implementation false [get_files C:/Users/ECHOES/Desktop/backup3_no_clear/MIPS_single_cycle_32bit/MIPS_single_cycle_32bit.srcs/constrs_1/new/Nexys-4-DDR-Master.xdc]

synth_design -top top -part xc7a100tcsg324-1
write_checkpoint -noxdef top.dcp
catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
