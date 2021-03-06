proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

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

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.cache/wt [current_project]
  set_property parent.project_dir /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed [current_project]
  add_files -quiet /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.runs/synth_1/system_top.dcp
  read_xdc -ref system_sys_ps7_0 -cells inst /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_ps7_0/system_sys_ps7_0.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_ps7_0/system_sys_ps7_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_iic_main_0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_iic_main_0/system_axi_iic_main_0_board.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_iic_main_0/system_axi_iic_main_0_board.xdc]
  read_xdc -ref system_sys_rstgen_0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0.xdc]
  read_xdc -prop_thru_buffers -ref system_sys_rstgen_0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0_board.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0_board.xdc]
  read_xdc -ref system_axi_hdmi_core_0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/ipshared/analog.com/axi_hdmi_tx_v1_0/008f4d65/axi_hdmi_tx_constr.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/ipshared/analog.com/axi_hdmi_tx_v1_0/008f4d65/axi_hdmi_tx_constr.xdc]
  read_xdc -ref system_axi_hdmi_dma_0 -cells U0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_hdmi_dma_0/system_axi_hdmi_dma_0.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_hdmi_dma_0/system_axi_hdmi_dma_0.xdc]
  read_xdc -ref system_sys_audio_clkgen_0 -cells inst /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0.xdc]
  read_xdc -prop_thru_buffers -ref system_sys_audio_clkgen_0 -cells inst /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0_board.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0_board.xdc]
  read_xdc -ref system_axi_spdif_tx_core_0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/ipshared/analog.com/axi_spdif_tx_v1_0/7e62f61d/axi_spdif_tx_constr.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/ipshared/analog.com/axi_spdif_tx_v1_0/7e62f61d/axi_spdif_tx_constr.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_iic_fmc_0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_iic_fmc_0/system_axi_iic_fmc_0_board.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_iic_fmc_0/system_axi_iic_fmc_0_board.xdc]
  read_xdc -ref system_axi_gpio_0_0 -cells U0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_gpio_0_0 -cells U0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc]
  read_xdc -ref system_pqueue_0_1 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/ipshared/ngn.cs.colorado.edu/pqueue_v1_0/1d519e33/constrs_1/imports/verilog/runQueue.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/ipshared/ngn.cs.colorado.edu/pqueue_v1_0/1d519e33/constrs_1/imports/verilog/runQueue.xdc]
  read_xdc -ref system_axi_gpio_1_0 -cells U0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_gpio_1_0 -cells U0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0_board.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0_board.xdc]
  read_xdc -ref system_axi_gpio_2_0 -cells U0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_2_0/system_axi_gpio_2_0.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_2_0/system_axi_gpio_2_0.xdc]
  read_xdc -prop_thru_buffers -ref system_axi_gpio_2_0 -cells U0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_2_0/system_axi_gpio_2_0_board.xdc
  set_property processing_order EARLY [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_gpio_2_0/system_axi_gpio_2_0_board.xdc]
  read_xdc /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/constrs_1/new/system_top.xdc
  read_xdc /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/common/zed/zed_system_constr.xdc
  read_xdc -ref system_axi_hdmi_dma_0 -cells U0 /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_hdmi_dma_0/system_axi_hdmi_dma_0_clocks.xdc
  set_property processing_order LATE [get_files /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.srcs/sources_1/bd/system/ip/system_axi_hdmi_dma_0/system_axi_hdmi_dma_0_clocks.xdc]
  link_design -top system_top -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  catch {update_ip_catalog -quiet -current_ip_cache {/home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.cache} }
  opt_design 
  write_checkpoint -force system_top_opt.dcp
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  write_checkpoint -force system_top_placed.dcp
  catch { report_io -file system_top_io_placed.rpt }
  catch { report_clock_utilization -file system_top_clock_utilization_placed.rpt }
  catch { report_utilization -file system_top_utilization_placed.rpt -pb system_top_utilization_placed.pb }
  catch { report_control_sets -verbose -file system_top_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force system_top_routed.dcp
  catch { report_drc -file system_top_drc_routed.rpt -pb system_top_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -file system_top_timing_summary_routed.rpt -pb system_top_timing_summary_routed.pb }
  catch { report_power -file system_top_power_routed.rpt -pb system_top_power_summary_routed.pb }
  catch { report_route_status -file system_top_route_status.rpt -pb system_top_route_status.pb }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  write_bitstream -force system_top.bit 
  if { [file exists /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.runs/synth_1/system_top.hwdef] } {
    catch { write_sysdef -hwdef /home/michael/ecen5139_final_project/hdl_ad7511_fork/projects/adv7511/zed/adv7511_zed.runs/synth_1/system_top.hwdef -bitfile system_top.bit -meminfo system_top_bd.bmm -file system_top.sysdef }
  }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

