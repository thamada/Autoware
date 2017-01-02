# Time-stamp: <2017-01-03 00:51:32 hamada>
#
# Copyrignt(c) 2017, Tsuyoshi Hamada. All rights reserved.
#

BASE_DIR = ./xilinx-xcu035-fbva676-3-e/xilinx-xcu035-fbva676-3-e.runs


all: synth impl


synth:
	make -C ${BASE_DIR}/synth/

impl: 
	make -C  ${BASE_DIR}/impl/



clean:
	make -C ${BASE_DIR}/synth/ clean
	make -C ${BASE_DIR}/impl/ clean

