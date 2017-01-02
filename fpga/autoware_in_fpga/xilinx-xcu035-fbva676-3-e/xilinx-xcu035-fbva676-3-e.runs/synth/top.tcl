# Time-stamp: <2017-01-02 23:34:01 hamada>
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xcku035-fbva676-3-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/hamada/git/Autoware/fpga/autoware_in_fpga/xilinx-xcu035-fbva676-3-e/xilinx-xcu035-fbva676-3-e.cache/wt [current_project]
set_property parent.project_path /home/hamada/git/Autoware/fpga/autoware_in_fpga/xilinx-xcu035-fbva676-3-e/xilinx-xcu035-fbva676-3-e.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo /home/hamada/git/Autoware/fpga/autoware_in_fpga/xilinx-xcu035-fbva676-3-e/xilinx-xcu035-fbva676-3-e.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  /home/hamada/git/Autoware/fpga/pgpg_mem/dpram.vhd
  /home/hamada/git/Autoware/fpga/pgpg_mem/pg_module.vhd
  /home/hamada/git/Autoware/fpga/dmaw_mem_we.vhd
  /home/hamada/git/Autoware/fpga/pgpg_mem/calc.vhd
  /home/hamada/git/Autoware/fpga/dmaw_state.vhd
  /home/hamada/git/Autoware/fpga/dmaw_mem_adr.vhd
  /home/hamada/git/Autoware/fpga/dmaw_start_adr.vhd
  /home/hamada/git/Autoware/fpga/pgpg_mem/pipe_sts.vhd
  /home/hamada/git/Autoware/fpga/pgpg_mem/adr_dec.vhd
  /home/hamada/git/Autoware/fpga/pgpg_mem/jmem.vhd
  /home/hamada/git/Autoware/fpga/pgpg_mem/setn.vhd
  /home/hamada/git/Autoware/fpga/pgpg_mem/pg_pipe.vhd
  /home/hamada/git/Autoware/fpga/dmar_dbus_hiz.vhd
  /home/hamada/git/Autoware/fpga/dmar_mem_adr.vhd
  /home/hamada/git/Autoware/fpga/pgpg_mem/pgpg_mem.vhd
  /home/hamada/git/Autoware/fpga/dmar_mem_re.vhd
  /home/hamada/git/Autoware/fpga/dmar_state.vhd
  /home/hamada/git/Autoware/fpga/dmar_start_adr.vhd
  /home/hamada/git/Autoware/fpga/dmaw.vhd
  /home/hamada/git/Autoware/fpga/dmar.vhd
  /home/hamada/git/Autoware/fpga/user.vhd
  /home/hamada/git/Autoware/fpga/clk_muldiv.vhd
  /home/hamada/git/Autoware/fpga/top.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top top -part xcku035-fbva676-3-e


write_checkpoint -force -noxdef top.dcp

catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
