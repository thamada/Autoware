//Time-stamp: <2017-01-05 02:41:18 hamada>
//
// Autoware for FPGAs project.
// 
// (c) Copyright 2017 by Tsuyoshi Hamada. All rights reserved.

#include <clc.h>   // OpenCL for FPGA
#include "gpu.h"

__kernel void __attribute__ ((reqd_work_group_size(LENGTH, 1, 1)))

gpu(__global float* x,     __global float* y,     __global float* z)
{
    __local float x0[LENGTH];
    __local float y0[LENGTH];

    __local float x1[LENGTH];
    __local float y1[LENGTH];

    __local float x2[LENGTH];
    __local float y2[LENGTH];


    __attribute__((xcl_pipeline_workitems)) 
    {
        float rel = 0.0f;
        async_work_group_copy(x0, x, LENGTH, 0);
        async_work_group_copy(y0, y, LENGTH, 0);
        
        barrier(CLK_LOCAL_MEM_FENCE);
        
        int idx = get_global_id(0);

        x1[idx] = x0[idx] + y0[idx];
        y1[idx] = x0[idx] - y0[idx];

        x2[idx] = x1[idx] * y1[idx];
        y2[idx] = x0[idx] / (y1[idx]+3.1415f);

        rel = y2[idx] / (x2[idx]+1.0e-23f);
        rel = rel * rel;

        if( (0.1f < rel) && (rel < 10.0f) ){
            x2[idx] = x2[idx] * 1.0e6f;
        } 

        z[idx] = x2[idx] + y2[idx];

    }
}
