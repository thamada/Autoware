# Time-stamp: <2017-01-03 00:41:46 hamada>
#
# Copyright(c) 2017 by Tsuyoshi Hamada. All Rights Reserved.
#

all:
	vivado -log top.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source top.tcl -notrace


clean:
	rm -rf *.pb *.jou *.rpx *.dcp *.vdi .*.rst .Xil 
	rm -rf .*.rst
	rm -rf top_control_sets_placed.rpt
	rm -rf top_drc_*.rpt
	rm -rf top_methodology_drc_routed.rpt
	rm -rf top_clock_utilization_routed.rpt
	rm -rf top_io_placed.rpt
	rm -rf top_route_status.rpt

#	rm -rf top_power_routed.rpt
#	rm -rf *.rpt 

