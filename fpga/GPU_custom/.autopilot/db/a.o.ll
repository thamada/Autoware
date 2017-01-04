; ModuleID = '/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir-unknown-linux-gnu"

%opencl.event_t = type opaque

@gpu.x0 = internal addrspace(3) global [16 x i32] zeroinitializer, align 4 ; [#uses=2 type=[16 x i32] addrspace(3)*]
@gpu.y0 = internal addrspace(3) global [16 x i32] zeroinitializer, align 4 ; [#uses=2 type=[16 x i32] addrspace(3)*]

; [#uses=0]
define spir_kernel void @gpu(i32 addrspace(1)* %x, i32 addrspace(1)* %y, i32 addrspace(1)* %z) nounwind {
  %1 = alloca i32 addrspace(1)*, align 4          ; [#uses=2 type=i32 addrspace(1)**]
  %2 = alloca i32 addrspace(1)*, align 4          ; [#uses=2 type=i32 addrspace(1)**]
  %3 = alloca i32 addrspace(1)*, align 4          ; [#uses=2 type=i32 addrspace(1)**]
  %idx = alloca i32, align 4                      ; [#uses=4 type=i32*]
  store i32 addrspace(1)* %x, i32 addrspace(1)** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32 addrspace(1)** %1}, metadata !27), !dbg !28 ; [debug line = 11:51] [debug variable = x]
  store i32 addrspace(1)* %y, i32 addrspace(1)** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32 addrspace(1)** %2}, metadata !29), !dbg !30 ; [debug line = 11:100] [debug variable = y]
  store i32 addrspace(1)* %z, i32 addrspace(1)** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32 addrspace(1)** %3}, metadata !31), !dbg !32 ; [debug line = 11:149] [debug variable = z]
  br label %4, !dbg !33, !xcl.region.begin !35    ; [debug line = 14:56]

; <label>:4                                       ; preds = %0
  %5 = load i32 addrspace(1)** %1, align 4, !dbg !36 ; [#uses=1 type=i32 addrspace(1)*] [debug line = 18:9]
  %6 = call spir_func %opencl.event_t* @_Z21async_work_group_copyPU3AS1iPKU3AS0ij9ocl_event(i32 addrspace(3)* getelementptr inbounds ([16 x i32] addrspace(3)* @gpu.x0, i32 0, i32 0), i32 addrspace(1)* %5, i32 16, %opencl.event_t* null), !dbg !36 ; [#uses=0 type=%opencl.event_t*] [debug line = 18:9]
  %7 = load i32 addrspace(1)** %2, align 4, !dbg !38 ; [#uses=1 type=i32 addrspace(1)*] [debug line = 19:9]
  %8 = call spir_func %opencl.event_t* @_Z21async_work_group_copyPU3AS1iPKU3AS0ij9ocl_event(i32 addrspace(3)* getelementptr inbounds ([16 x i32] addrspace(3)* @gpu.y0, i32 0, i32 0), i32 addrspace(1)* %7, i32 16, %opencl.event_t* null), !dbg !38 ; [#uses=0 type=%opencl.event_t*] [debug line = 19:9]
  call spir_func void @_Z7barrierj(i32 0), !dbg !39 ; [debug line = 21:9]
  call void @llvm.dbg.declare(metadata !{i32* %idx}, metadata !40), !dbg !41 ; [debug line = 23:13] [debug variable = idx]
  %9 = call spir_func i32 @_Z13get_global_idj(i32 0), !dbg !42 ; [#uses=1 type=i32] [debug line = 23:19]
  store i32 %9, i32* %idx, align 4, !dbg !42      ; [debug line = 23:19]
  %10 = load i32* %idx, align 4, !dbg !43         ; [#uses=1 type=i32] [debug line = 24:9]
  %11 = getelementptr inbounds [16 x i32] addrspace(3)* @gpu.x0, i32 0, i32 %10, !dbg !43 ; [#uses=1 type=i32 addrspace(3)*] [debug line = 24:9]
  %12 = load i32 addrspace(3)* %11, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 24:9]
  %13 = load i32* %idx, align 4, !dbg !43         ; [#uses=1 type=i32] [debug line = 24:9]
  %14 = getelementptr inbounds [16 x i32] addrspace(3)* @gpu.y0, i32 0, i32 %13, !dbg !43 ; [#uses=1 type=i32 addrspace(3)*] [debug line = 24:9]
  %15 = load i32 addrspace(3)* %14, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 24:9]
  %16 = sub nsw i32 %12, %15, !dbg !43            ; [#uses=1 type=i32] [debug line = 24:9]
  %17 = load i32* %idx, align 4, !dbg !43         ; [#uses=1 type=i32] [debug line = 24:9]
  %18 = load i32 addrspace(1)** %3, align 4, !dbg !43 ; [#uses=1 type=i32 addrspace(1)*] [debug line = 24:9]
  %19 = getelementptr inbounds i32 addrspace(1)* %18, i32 %17, !dbg !43 ; [#uses=1 type=i32 addrspace(1)*] [debug line = 24:9]
  store i32 %16, i32 addrspace(1)* %19, align 4, !dbg !43 ; [debug line = 24:9]
  br label %20, !dbg !44, !xcl.region.end !35, !xcl.pipeline.N !45 ; [debug line = 25:5]

; <label>:20                                      ; preds = %4
  ret void, !dbg !46                              ; [debug line = 26:1]
}

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare spir_func %opencl.event_t* @_Z21async_work_group_copyPU3AS1iPKU3AS0ij9ocl_event(i32 addrspace(3)*, i32 addrspace(1)*, i32, %opencl.event_t*)

; [#uses=1]
declare spir_func void @_Z7barrierj(i32)

; [#uses=1]
declare spir_func i32 @_Z13get_global_idj(i32)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!20}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db/gpu.pragma.2.cl", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"gpu", metadata !"gpu", metadata !"", metadata !6, i32 11, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32 addrspace(1)*, i32 addrspace(1)*, i32 addrspace(1)*)* @gpu, null, null, metadata !11, i32 12} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"gpu.cl", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15, metadata !19}
!15 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x0", metadata !"x0", metadata !"", metadata !6, i32 13, metadata !16, i32 1, i32 1, [16 x i32] addrspace(3)* @gpu.x0} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !10, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y0", metadata !"y0", metadata !"", metadata !6, i32 14, metadata !16, i32 1, i32 1, [16 x i32] addrspace(3)* @gpu.y0} ; [ DW_TAG_variable ]
!20 = metadata !{void (i32 addrspace(1)*, i32 addrspace(1)*, i32 addrspace(1)*)* @gpu, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26}
!21 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!22 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int*"}
!24 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y", metadata !"z"}
!26 = metadata !{metadata !"reqd_work_group_size", i32 16, i32 1, i32 1}
!27 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777227, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 11, i32 51, metadata !5, null}
!29 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 33554443, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 11, i32 100, metadata !5, null}
!31 = metadata !{i32 786689, metadata !5, metadata !"z", metadata !6, i32 50331659, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 11, i32 149, metadata !5, null}
!33 = metadata !{i32 14, i32 56, metadata !34, null}
!34 = metadata !{i32 786443, metadata !5, i32 12, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{metadata !35}
!36 = metadata !{i32 18, i32 9, metadata !37, null}
!37 = metadata !{i32 786443, metadata !34, i32 17, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 19, i32 9, metadata !37, null}
!39 = metadata !{i32 21, i32 9, metadata !37, null}
!40 = metadata !{i32 786688, metadata !37, metadata !"idx", metadata !6, i32 23, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 23, i32 13, metadata !37, null}
!42 = metadata !{i32 23, i32 19, metadata !37, null}
!43 = metadata !{i32 24, i32 9, metadata !37, null}
!44 = metadata !{i32 25, i32 5, metadata !37, null}
!45 = metadata !{i32 1}
!46 = metadata !{i32 26, i32 1, metadata !34, null}
