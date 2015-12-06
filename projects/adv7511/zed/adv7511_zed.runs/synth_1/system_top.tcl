# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -id {BD 41-1276}  -severity {CRITICAL WARNING}  -new_severity {ERROR} 
set_msg_config  -id {Board 49-4}  -string {{CRITICAL WARNING: [Board 49-4] Problem parsing board_part file - /Xilinx/Vivado/2014.2/data/boards/board_parts/kintex7/kc705/0.9/board_part.xml, The board part 'xc7k325tffg900-2' is either not supported or invalid.}}  -suppress 
set_msg_config  -id {BD 41-1348}  -new_severity {INFO} 
set_msg_config  -id {BD 41-1343}  -new_severity {INFO} 
set_msg_config  -id {BD 41-1306}  -new_severity {INFO} 
set_msg_config  -id {IP_Flow 19-1687}  -new_severity {INFO} 
set_msg_config  -id {filemgmt 20-1763}  -new_severity {INFO} 
set_msg_config  -id {Board 49-4}  -string {{CRITICAL WARNING: [Board 49-4] Problem parsing board_part file - /Xilinx/Vivado/2014.2/data/boards/board_parts/zynq/zc706/1.0/board_part.xml, The board part 'xc7z045ffg900-2' is either not supported or invalid.}}  -suppress 
set_msg_config  -id {Board 49-4}  -string {{CRITICAL WARNING: [Board 49-4] Problem parsing board_part file - /Xilinx/Vivado/2014.2/data/boards/board_parts/zynq/zc706/0.9/board_part.xml, The board part 'xc7z045ffg900-2' is either not supported or invalid.}}  -suppress 
set_msg_config  -id {Board 49-4}  -string {{CRITICAL WARNING: [Board 49-4] Problem parsing board_part file - /Xilinx/Vivado/2014.2/data/boards/board_parts/kintex7/kc705/1.0/board_part.xml, The board part 'xc7k325tffg900-2' is either not supported or invalid.}}  -suppress 
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.0 [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
set_property ip_repo_paths {
  /home/michael/ecen5139_final_project/hdl_ad7511_fork/library
  /home/michael/ecen5139_final_project/CAV_MidtermPriorityQueue_Verilog_Runner
  /Xilinx/xapp1173/VHLS_proj
  /Xilinx/hdl/library
  /home/michael/ecen5139_final_project/project_1
} [current_fileset]
add_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/coefficients.coe
add_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/imports/FIR_Master/coefficients.coe

add_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_ps7_0/system_sys_ps7_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_iic_main_0/system_axi_iic_main_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_iic_main_0/system_axi_iic_main_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_xbar_0/system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/ipshared/analog.com/axi_hdmi_tx_v1_0/008f4d65/axi_hdmi_tx_constr.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_hdmi_dma_0/system_axi_hdmi_dma_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_hdmi_dma_0/system_axi_hdmi_dma_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_hdmi_dma_0/system_axi_hdmi_dma_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/ipshared/analog.com/axi_spdif_tx_v1_0/7e62f61d/axi_spdif_tx_constr.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_iic_fmc_0/system_axi_iic_fmc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_iic_fmc_0/system_axi_iic_fmc_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_xbar_1/system_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/ipshared/xilinx.com/runQueue_v1_0/7922ae85/constraints/runQueue_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/ipshared/ngn.cs.colorado.edu/pqueue_v1_0/1d519e33/constrs_1/imports/verilog/runQueue.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_2_0/system_axi_gpio_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_2_0/system_axi_gpio_2_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_2_0/system_axi_gpio_2_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_auto_pc_1/system_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_auto_pc_2/system_auto_pc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/system_ooc.xdc]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/system.bd]

read_verilog -library xil_defaultlib {
  /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/imports/hdl/system_wrapper.v
  /home/michael/ecen5139_final_project/hdl_ad7511_fork/library/common/ad_iobuf.v
  /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/system_top.v
}
read_xdc /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/constrs_1/new/system_top.xdc
set_property used_in_implementation false [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/constrs_1/new/system_top.xdc]

read_xdc /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/common/zed/zed_system_constr.xdc
set_property used_in_implementation false [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/common/zed/zed_system_constr.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.cache/wt [current_project]
set_property parent.project_dir /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed [current_project]
catch { write_hwdef -file system_top.hwdef }
synth_design -top system_top -part xc7z020clg484-1
write_checkpoint system_top.dcp
report_utilization -file system_top_utilization_synth.rpt -pb system_top_utilization_synth.pb
