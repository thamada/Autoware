# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "./.Xil/Vivado-9522-ubuntu/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7k70tfbg676-2

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    # Skipping read_* RTL commands because this is post-elab optimize flow
    set rt::useElabCache true
    if {$rt::useElabCache == false} {
      rt::read_verilog -include /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources {
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/timescale.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_defines.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_pri_dec.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/async_fifo.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_defines.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_rfram_generic.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_spram_64x14.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_spram_512x20.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_spram_64x24.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_spram_64x22.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_gmultp2_32x32.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_spram_2048x32_bw.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_mem2reg.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_reg2mem.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_defines.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_crc5.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_crc16.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_arb.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_pri_enc.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/FifoBuffer.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/mgt/rocketio_wrapper_tile_gt.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_sb_fifo.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_ctrl.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_immu_tlb.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_cfgr.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_dc_fsm.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_ic_tag.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_operandmuxes.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_mult_mac.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_ic_fsm.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_lsu.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_alu.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_genpc.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_dc_ram.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_freeze.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_wbmux.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_if.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_ic_ram.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_sprs.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_dc_tag.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_rf.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_dpram_256x32.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_except.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_dmmu_tlb.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_ep_rf.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_pa.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_pe.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_pd.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_idma.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_utmi_ls.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_msel.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/rtlRam.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/mgt/rocketio_wrapper_tile_gt_usrclk_source.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/mgt/rocketio_wrapper_tile.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/mgt/rocketio_wrapper_tile_gt_frame_gen.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/mgt/rocketio_wrapper_tile_gt_frame_check.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_du.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_tt.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_ic_top.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_dc_top.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_dmmu_top.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_immu_top.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_pic.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_pm.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_iwb_biu.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_wb_biu.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_sb.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_qmem_top.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_cpu.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_utmi_if.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_rf.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_wb.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_mem_arb.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_pl.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_rf.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_master_if.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_slave_if.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/fftTop.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/mgtTop.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/clock_generator.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/or1200/or1200_top.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/usbf/usbf_top.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/wb_conmax/wb_conmax_top.v
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/top.v
    }
      rt::read_vhdl -lib bftLib {
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/bftLib/core_transform.vhdl
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/bftLib/bft_package.vhdl
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/bftLib/round_3.vhdl
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/bftLib/round_2.vhdl
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/bftLib/round_4.vhdl
      /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/bftLib/round_1.vhdl
    }
      rt::read_vhdl -lib xil_defaultlib /home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.srcs/sources_1/imports/Sources/bft.vhdl
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification true
    set rt::SDCFileList ./.Xil/Vivado-9522-ubuntu/realtime/top_synth.xdc
    rt::sdcChecksum
    set rt::top top
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter ramStyle auto
    rt::set_parameter merge_flipflops true
# MODE: 
    rt::set_parameter webTalkPath {/home/hamada/git/Autoware/fpga/proj/autoware_reconfacc/autoware_reconfacc.cache/wt}
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-9522-ubuntu/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
      rt::run_synthesis -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    if { $rt::flowresult == 1 } { return -code error }

    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] && [info exists rt::doParallel] && $rt::doParallel} { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] && [info exists rt::doParallel] && $rt::doParallel} { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
