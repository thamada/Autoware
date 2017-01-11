Time-stamp: <2017-01-12 03:42:06 hamada>

# mipsr2000 microprocessor

The mipsr2000 is mips 32 bits processor. The processor implementation was designed by Lazaridis Dimitris.
Main aspects
The core is in 5 stages:

- Instruction extraction
- Instruction decoding
- Execution
- Memory access
- Update registers

It supports almost all instructions of mips technology, R type, I type, Branch, Jump and multiply packet instructions.
The multiply result is stored until is needed regardless if others instructions follows.
There is a separate memory for instructions and another for data read ? write which can be changed.
Each stage use one clock cycle. Both memories function in descending pulse and the remaining pulse is used for developing the necessery functions (e.g. pipeline), which makes the core faster and more flexible.
All I types instructions are part decoded in first stage and all R types also part decoded in Alu control reducing the complexity in main Control unit (FSM).

All instructions are tested for correct execution. A test benchs from separate circuit implementation is also included (to verify the program which exists in Instruction memory).
The mipsr2000 was integrated in an FPGA from Xilinx version 13.1 in Spartan 3 xc3s400-5fg456 target device but can be fit in another similar target device, but this project made mostly for general fpga devices.
In case to be fitted in another fpga target device,specially smaller fpga target device, the clk = master clock signal and rst = master reset, must be fitted in device's global signal buffers to take advances of the device resources, (like the use of DCM, DONE) and different timing constraints must evaluate for timing analyses.
The processor is implemented all in VHDL. 


