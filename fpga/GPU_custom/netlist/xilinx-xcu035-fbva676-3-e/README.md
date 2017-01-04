Time-stamp: <2017-01-05 07:02:34 hamada>

# An OpenCL-enebled GPU customized for Autoware

Autoware for FPGAs project.

(c) Copyright 2016-2017 by Tsuyoshi Hamada. All rights reserved.



## Devices:

### Xilinx XCU035-FBVA676-3-E
- I/O Pin Count: 676
- Block RAMs: 540
- DSPs: 1700
- FlipFlops: 406256
- GTPE2 Transceivers: 0
- Gb Transceivers: 16
- Available IOBs: 312
- LUT Elements: 203128
- MMCMs: 10
- PCIe: 2
- Max Operating Temperature: 100 C
- Min Operating Temperature: 0 C
- Temperature Grade Letter: E
- Max Operating Voltage: 1.030 V
- Min Operating Voltage: 0.970 V
- Ref Operating Voltage: 1.000 V
- GTXE2 Transceivers: 0
- GTXE3 Transceivers: 16

## GPU Architecture
- 64 computing cores for handling OpenCL threads
- Each core has float-add, float-sub, float-mul and float-div unit.
- All floating-point arithmetic units conform to the IEEE 754 single precision storage format.
