Time-stamp: <2017-01-06 21:01:27 hamada>

# LEON3 - SPARC V8 32-bit processor

LEON is a 32-bit CPU microprocessor core, based on the SPARC-V8 RISC
architecture and instruction set. It was originally designed by the
European Space Research and Technology Centre (ESTEC), part of the
European Space Agency (ESA), and after that by Gaisler Research. It is
described in synthesizable VHDL. LEON has a dual license model: An
LGPL/GPL FLOSS license that can be used without licensing fee, or a
proprietary license that can be purchased for integration in a
proprietary product. The core is configurable through VHDL
generics, and is used in system-on-a-chip (SOC) designs both in
research and commercial settings.

The LEON3FT is a fault-tolerant version of the standard LEON3 SPARC V8
Processor. It has been designed for operation in the harsh space
environment, and includes functionality to detect and correct single
event upset (SEU) errors in all on-chip RAM memories. The LEON3FT
processor support most of the functionality in the standard LEON3
processor, and adds the following features:

- Register file SEU error-correction of up to 4 errors per 32-bit word
- Cache memory error-correction of up to 4 errors per tag or 32-bit word
- Autonomous and software transparent error handling
- No timing impact due to error detection or correction

The following features of the standard LEON3 processor are not supported by LEON3FT

- Local scratchpad RAM (neither for instruction nor for data)
- Cache locking
- LRR (least recently replaced) cache replacement algorithm

The LEON3FT core is distributed together with a special FT version of
the GRLIP IP library. Only netlist distribution is possible.

An FPGA implementation called LEON3FT-RTAX is proposed for critical
space applications.

[see more details](https://en.wikipedia.org/wiki/LEON)

