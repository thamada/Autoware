/*
 *                              .--------------. .----------------. .------------.
 *                             | .------------. | .--------------. | .----------. |
 *                             | | ____  ____ | | | ____    ____ | | |   ______ | |
 *                             | ||_   ||   _|| | ||_   \  /   _|| | | .' ___  || |
 *       ___  _ __   ___ _ __  | |  | |__| |  | | |  |   \/   |  | | |/ .'   \_|| |
 *      / _ \| '_ \ / _ \ '_ \ | |  |  __  |  | | |  | |\  /| |  | | || |       | |
 *       (_) | |_) |  __/ | | || | _| |  | |_ | | | _| |_\/_| |_ | | |\ `.___.'\| |
 *      \___/| .__/ \___|_| |_|| ||____||____|| | ||_____||_____|| | | `._____.'| |
 *           | |               | |            | | |              | | |          | |
 *           |_|               | '------------' | '--------------' | '----------' |
 *                              '--------------' '----------------' '------------'
 *
 *  openHMC - An Open Source Hybrid Memory Cube Controller
 *  (C) Copyright 2014 Computer Architecture Group - University of Heidelberg
 *  www.ziti.uni-heidelberg.de
 *  B6, 26
 *  68159 Mannheim
 *  Germany
 *
 *  Contact: openhmc@ziti.uni-heidelberg.de
 *  http://ra.ziti.uni-heidelberg.de/openhmc
 *
 *   This source file is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU Lesser General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This source file is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Lesser General Public License for more details.
 *
 *   You should have received a copy of the GNU Lesser General Public License
 *   along with this source file.  If not, see <http://www.gnu.org/licenses/>.
 *
 *
 */

//
//
// small_pkt_hdelay_test sequence
//
//


`ifndef small_pkt_hdelay_test_SEQ_SV
`define small_pkt_hdelay_test_SEQ_SV

class small_pkt_hdelay_test_seq extends hmc_base_seq;
	
	openhmc_init_seq init;
	hmc_model_init_seq bfm;
	openhmc_check_seq check;
	hmc_small_pkts_hdelay_seq work;

	function new(string name="small_pkt_hdelay_test_seq");
		super.new(name);
	endfunction : new

	`uvm_object_utils(small_pkt_hdelay_test_seq)
	`uvm_declare_p_sequencer(vseqr)

	virtual task body();

		`uvm_info(get_type_name(), "starting small_pkt_hdelay_test_seq", UVM_NONE)
		
		`uvm_do(bfm)
		#1us;
        `uvm_do(init)
        #1us;
		//-- write your test here
		`uvm_do(work)
		
		`uvm_do(check)

		#1us;
		`uvm_info(get_type_name(), "small_pkt_hdelay_test_seq done", UVM_NONE)

	endtask : body

endclass : small_pkt_hdelay_test_seq

`endif // small_pkt_hdelay_test_SEQ_SV