# 
# Synthesis run script generated by Vivado
# 

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
set_msg_config -id {HDL-1065} -limit 10000
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/GitCode/SketchSystem/imageProcessingSystem.cache/wt [current_project]
set_property parent.project_path D:/GitCode/SketchSystem/imageProcessingSystem.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_repo_paths d:/GitCode/ImageProcessingofSketch [current_project]
set_property ip_output_repo d:/GitCode/SketchSystem/imageProcessingSystem.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0.xci
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/bd_44e3_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_18/bd_44e3_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_25/bd_44e3_s02a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_28/bd_44e3_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_35/bd_44e3_m01s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_36/bd_44e3_m01arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_37/bd_44e3_m01rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_38/bd_44e3_m01awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_39/bd_44e3_m01wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_40/bd_44e3_m01bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_29/bd_44e3_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_30/bd_44e3_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_31/bd_44e3_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_32/bd_44e3_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_33/bd_44e3_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_26/bd_44e3_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_27/bd_44e3_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_19/bd_44e3_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_20/bd_44e3_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_21/bd_44e3_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_13/bd_44e3_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_14/bd_44e3_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/bd_44e3_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/bd_44e3_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/bd_44e3_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_7/bd_44e3_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_8/bd_44e3_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/bd_44e3_psr0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/bd_44e3_psr0_0.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/bd_44e3_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/bd_44e3_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/bd_44e3_psr_aclk1_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/bd_44e3_psr_aclk1_0.xdc]
set_property used_in_implementation false [get_files -all d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir D:/GitCode/SketchSystem/imageProcessingSystem.runs/system_axi_smc_0_synth_1 -new_name system_axi_smc_0 -ip [get_ips system_axi_smc_0]]

if { $cached_ip eq {} } {

synth_design -top system_axi_smc_0 -part xc7z020clg484-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix system_axi_smc_0_ system_axi_smc_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_axi_smc_0_stub.v
 lappend ipCachedFiles system_axi_smc_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_axi_smc_0_stub.vhdl
 lappend ipCachedFiles system_axi_smc_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_axi_smc_0_sim_netlist.v
 lappend ipCachedFiles system_axi_smc_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_axi_smc_0_sim_netlist.vhdl
 lappend ipCachedFiles system_axi_smc_0_sim_netlist.vhdl

 config_ip_cache -add -dcp system_axi_smc_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips system_axi_smc_0]
}

rename_ref -prefix_all system_axi_smc_0_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system_axi_smc_0.dcp
create_report "system_axi_smc_0_synth_1_synth_report_utilization_0" "report_utilization -file system_axi_smc_0_utilization_synth.rpt -pb system_axi_smc_0_utilization_synth.pb"

if { [catch {
  file copy -force D:/GitCode/SketchSystem/imageProcessingSystem.runs/system_axi_smc_0_synth_1/system_axi_smc_0.dcp d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force D:/GitCode/SketchSystem/imageProcessingSystem.runs/system_axi_smc_0_synth_1/system_axi_smc_0.dcp d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force D:/GitCode/SketchSystem/imageProcessingSystem.runs/system_axi_smc_0_synth_1/system_axi_smc_0_stub.v d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/GitCode/SketchSystem/imageProcessingSystem.runs/system_axi_smc_0_synth_1/system_axi_smc_0_stub.vhdl d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/GitCode/SketchSystem/imageProcessingSystem.runs/system_axi_smc_0_synth_1/system_axi_smc_0_sim_netlist.v d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/GitCode/SketchSystem/imageProcessingSystem.runs/system_axi_smc_0_synth_1/system_axi_smc_0_sim_netlist.vhdl d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir D:/GitCode/SketchSystem/imageProcessingSystem.ip_user_files/ip/system_axi_smc_0]} {
  catch { 
    file copy -force d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0_stub.v D:/GitCode/SketchSystem/imageProcessingSystem.ip_user_files/ip/system_axi_smc_0
  }
}

if {[file isdir D:/GitCode/SketchSystem/imageProcessingSystem.ip_user_files/ip/system_axi_smc_0]} {
  catch { 
    file copy -force d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_axi_smc_0/system_axi_smc_0_stub.vhdl D:/GitCode/SketchSystem/imageProcessingSystem.ip_user_files/ip/system_axi_smc_0
  }
}
