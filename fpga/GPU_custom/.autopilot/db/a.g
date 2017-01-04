#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
