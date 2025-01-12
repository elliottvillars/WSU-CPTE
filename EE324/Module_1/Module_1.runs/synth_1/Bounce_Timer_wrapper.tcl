# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL-1065} -limit 10000
set_msg_config  -ruleid {1}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design xlslice_v1_0_1_xlslice__parameterized2 has unconnected port Din[15]}}  -suppress 
set_msg_config  -ruleid {2}  -id {Synth 8-3331}  -suppress 
create_project -in_memory -part xc7z007sclg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.cache/wt [current_project]
set_property parent.project_path C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths c:/Users/Sergaljerk/AppData/Roaming/Xilinx/ip_repo [current_project]
set_property ip_output_repo c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/sources_1/imports/Parts/ssd_dec.v
  C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/sources_1/imports/Parts/ssd_mux.v
  C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/sources_1/imports/Parts/stopwatch_ssd_driver.v
  C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/sources_1/imports/Parts/HZ_Counter.v
  C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/sources_1/new/Bounce_Counter_FSM.v
  C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/sources_1/bd/Bounce_Timer/hdl/Bounce_Timer_wrapper.v
}
add_files C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/sources_1/bd/Bounce_Timer/Bounce_Timer.bd
set_property used_in_implementation false [get_files -all c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/sources_1/bd/Bounce_Timer/ip/Bounce_Timer_rst_clk_100MHz_100M_0/Bounce_Timer_rst_clk_100MHz_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/sources_1/bd/Bounce_Timer/ip/Bounce_Timer_rst_clk_100MHz_100M_0/Bounce_Timer_rst_clk_100MHz_100M_0.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/sources_1/bd/Bounce_Timer/Bounce_Timer_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/constrs_1/new/Bounce_RTM_cons.xdc
set_property used_in_implementation false [get_files C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_1/Module_1.srcs/constrs_1/new/Bounce_RTM_cons.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top Bounce_Timer_wrapper -part xc7z007sclg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Bounce_Timer_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Bounce_Timer_wrapper_utilization_synth.rpt -pb Bounce_Timer_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
