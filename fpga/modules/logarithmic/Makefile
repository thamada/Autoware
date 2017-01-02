# Time-stamp: <2017-01-03 02:55:44 hamada>
#
# Copyrignt(c) 2017, Tsuyoshi Hamada. All rights reserved.
#

BASE_DIR = ./xilinx/xilinx.runs


all: synth impl


synth:
	make -C ${BASE_DIR}/synth_1/

impl: 
	make -C  ${BASE_DIR}/impl_1/



clean:
	make -C ${BASE_DIR}/synth_1/ clean
	make -C ${BASE_DIR}/impl_1/ clean

