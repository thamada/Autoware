; ModuleID = '/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir-unknown-linux-gnu"

@y0 = internal unnamed_addr global [16 x i32] zeroinitializer, align 4 ; [#uses=2 type=[16 x i32]*]
@x0 = internal unnamed_addr global [16 x i32] zeroinitializer, align 4 ; [#uses=2 type=[16 x i32]*]
@str = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@memcpy_OC_gpu_OC_y0_OC_gmem.str = internal unnamed_addr constant [19 x i8] c"memcpy.gpu.y0.gmem\00" ; [#uses=1 type=[19 x i8]*]
@memcpy_OC_gpu_OC_x0_OC_gmem.str = internal unnamed_addr constant [19 x i8] c"memcpy.gpu.x0.gmem\00" ; [#uses=1 type=[19 x i8]*]
@gpu.str = internal unnamed_addr constant [4 x i8] c"gpu\00" ; [#uses=1 type=[4 x i8]*]
@burstread_OC_region.str = internal unnamed_addr constant [17 x i8] c"burstread.region\00" ; [#uses=4 type=[17 x i8]*]
@__spir_rt_info.9 = global i8* null               ; [#uses=0 type=i8**]
@__spir_rt_info.8 = global i8** null              ; [#uses=0 type=i8***]
@__spir_rt_info.7 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@__spir_rt_info.6 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@__spir_rt_info.5 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@__spir_rt_info.4 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@__spir_rt_info.3 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@__spir_rt_info.2 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@__spir_rt_info.12 = global i64* null             ; [#uses=0 type=i64**]
@__spir_rt_info.11 = global i8** null             ; [#uses=0 type=i8***]
@__spir_rt_info.10 = global i8** null             ; [#uses=0 type=i8***]
@__spir_rt_info.1 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@__spir_rt_info.0 = global i32* null              ; [#uses=0 type=i32**]
@XCL_WG_DIM_X.str = internal unnamed_addr constant [13 x i8] c"XCL_WG_DIM_X\00" ; [#uses=1 type=[13 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"control\00", align 1 ; [#uses=4 type=[8 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]
@.str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str14 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=26 type=[1 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=25]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @gpu(i32 addrspace(1)* %gmem, i32* %group_id.x, i32* %group_id.y, i32* %group_id.z, i32* %global_offset.x, i32* %global_offset.y, i32* %global_offset.z, i32* %x, i32* %y, i32* %z) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 addrspace(1)* %gmem), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %group_id.x), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %group_id.y), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %group_id.z), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %global_offset.x), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %global_offset.y), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %global_offset.z), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %x), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %y), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %z), !map !79
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @gpu.str)
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %gmem}, i64 0, metadata !83), !dbg !117 ; [debug line = 62:84] [debug variable = gmem]
  call void @llvm.dbg.value(metadata !{i32* %group_id.x}, i64 0, metadata !118), !dbg !123 ; [debug line = 62:105] [debug variable = group_id.x]
  call void @llvm.dbg.value(metadata !{i32* %group_id.y}, i64 0, metadata !124), !dbg !123 ; [debug line = 62:105] [debug variable = group_id.y]
  call void @llvm.dbg.value(metadata !{i32* %group_id.z}, i64 0, metadata !128), !dbg !123 ; [debug line = 62:105] [debug variable = group_id.z]
  call void @llvm.dbg.value(metadata !{i32* %global_offset.x}, i64 0, metadata !132), !dbg !134 ; [debug line = 62:130] [debug variable = global_offset.x]
  call void @llvm.dbg.value(metadata !{i32* %global_offset.y}, i64 0, metadata !135), !dbg !134 ; [debug line = 62:130] [debug variable = global_offset.y]
  call void @llvm.dbg.value(metadata !{i32* %global_offset.z}, i64 0, metadata !136), !dbg !134 ; [debug line = 62:130] [debug variable = global_offset.z]
  call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !137), !dbg !142 ; [debug line = 62:157] [debug variable = args.x]
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !143), !dbg !142 ; [debug line = 62:157] [debug variable = args.y]
  call void @llvm.dbg.value(metadata !{i32* %z}, i64 0, metadata !147), !dbg !142 ; [debug line = 62:157] [debug variable = args.z]
  call void @llvm.dbg.value(metadata !{i32* %group_id.x}, i64 0, metadata !151), !dbg !154 ; [debug line = 27:44@69:1] [debug variable = group_id.x]
  call void @llvm.dbg.value(metadata !{i32* %group_id.y}, i64 0, metadata !157), !dbg !154 ; [debug line = 27:44@69:1] [debug variable = group_id.y]
  call void @llvm.dbg.value(metadata !{i32* %group_id.z}, i64 0, metadata !158), !dbg !154 ; [debug line = 27:44@69:1] [debug variable = group_id.z]
  call void @llvm.dbg.value(metadata !{i32* %global_offset.x}, i64 0, metadata !159), !dbg !162 ; [debug line = 33:49@70:1] [debug variable = global_offset.x]
  call void @llvm.dbg.value(metadata !{i32* %global_offset.y}, i64 0, metadata !164), !dbg !162 ; [debug line = 33:49@70:1] [debug variable = global_offset.y]
  call void @llvm.dbg.value(metadata !{i32* %global_offset.z}, i64 0, metadata !165), !dbg !162 ; [debug line = 33:49@70:1] [debug variable = global_offset.z]
  call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !166), !dbg !169 ; [debug line = 39:37@71:1] [debug variable = args.x]
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !171), !dbg !169 ; [debug line = 39:37@71:1] [debug variable = args.y]
  call void @llvm.dbg.value(metadata !{i32* %z}, i64 0, metadata !172), !dbg !169 ; [debug line = 39:37@71:1] [debug variable = args.z]
  call void (...)* @_ssdm_op_SpecInterface(i32 addrspace(1)* %gmem, [6 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 128, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !173 ; [debug line = 72:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %group_id.x, i32* %group_id.y, i32* %group_id.z, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [8 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !174 ; [debug line = 73:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %global_offset.x, i32* %global_offset.y, i32* %global_offset.z, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [8 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !175 ; [debug line = 74:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [8 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !176 ; [debug line = 75:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %x, i32* %y, i32* %z, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [8 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !177 ; [debug line = 76:1]
  %group_id.x.load = load i32* %group_id.x, align 4, !dbg !178 ; [#uses=1 type=i32] [debug line = 121:3]
  %global_offset.x.load = load i32* %global_offset.x, align 4, !dbg !181 ; [#uses=1 type=i32] [debug line = 132:3]
  %tmp = shl i32 %group_id.x.load, 4, !dbg !182   ; [#uses=1 type=i32] [debug line = 147:3]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %gmem}, i64 0, metadata !183), !dbg !216 ; [debug line = 52:90] [debug variable = gmem]
  call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !217), !dbg !219 ; [debug line = 52:135] [debug variable = args.x]
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !220), !dbg !219 ; [debug line = 52:135] [debug variable = args.y]
  call void @llvm.dbg.value(metadata !{i32* %z}, i64 0, metadata !221), !dbg !219 ; [debug line = 52:135] [debug variable = args.z]
  %x.load = load i32* %x, align 4, !dbg !222      ; [#uses=1 type=i32] [debug line = 54:110]
  %tmp.4 = lshr i32 %x.load, 2, !dbg !222         ; [#uses=1 type=i32] [debug line = 54:110]
  %arg_x = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %tmp.4, !dbg !222 ; [#uses=4 type=i32 addrspace(1)*] [debug line = 54:110]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %arg_x}, i64 0, metadata !224), !dbg !222 ; [debug line = 54:110] [debug variable = arg_x]
  %y.load = load i32* %y, align 4, !dbg !225      ; [#uses=1 type=i32] [debug line = 55:110]
  %tmp.5 = lshr i32 %y.load, 2, !dbg !225         ; [#uses=1 type=i32] [debug line = 55:110]
  %arg_y = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %tmp.5, !dbg !225 ; [#uses=4 type=i32 addrspace(1)*] [debug line = 55:110]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %arg_y}, i64 0, metadata !226), !dbg !225 ; [debug line = 55:110] [debug variable = arg_y]
  %z.load = load i32* %z, align 4, !dbg !227      ; [#uses=1 type=i32] [debug line = 56:110]
  %tmp.6 = lshr i32 %z.load, 2, !dbg !227         ; [#uses=1 type=i32] [debug line = 56:110]
  call void (...)* @_ssdm_xcl_PointerMap(i32 addrspace(1)* %arg_x, i32 0, i32 0, i32 4) nounwind
  br label %burst.rd.header

burst.rd.body1:                                   ; preds = %burst.rd.header
  %burstread.rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region.str) ; [#uses=1 type=i32]
  %1 = call i32 (...)* @_ssdm_op_SpecBurst(i32 addrspace(1)* %arg_x, i32 1, i32 16, i32 1) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str14) ; [#uses=0 type=i32]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopName([19 x i8]* @memcpy_OC_gpu_OC_x0_OC_gmem.str) ; [#uses=0 type=i32]
  %isIter0 = icmp eq i5 %indvar, 0                ; [#uses=1 type=i1]
  br i1 %isIter0, label %burst.rd.body2, label %burst.rd.body3

burst.rd.body2:                                   ; preds = %burst.rd.body1
  %arg_x.i.0.req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)* %arg_x, i32 16) ; [#uses=0 type=i1]
  br label %burst.rd.body3

burst.rd.body3:                                   ; preds = %burst.rd.body2, %burst.rd.body1
  %arg_x.read = call i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)* %arg_x) ; [#uses=1 type=i32]
  %x0.addr = getelementptr [16 x i32]* @x0, i32 0, i32 %indvar.cast ; [#uses=1 type=i32*]
  store i32 %arg_x.read, i32* %x0.addr, align 4
  %burstread.rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region.str, i32 %burstread.rbegin) ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body3, %0
  %indvar = phi i5 [ %indvar.next, %burst.rd.body3 ], [ 0, %0 ] ; [#uses=4 type=i5]
  %indvar.cast = zext i5 %indvar to i32           ; [#uses=1 type=i32]
  %indvar.next = add i5 %indvar, 1                ; [#uses=1 type=i5]
  %exitcond = icmp eq i5 %indvar, -16             ; [#uses=1 type=i1]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %exitcond, label %burst.rd.end, label %burst.rd.body1

burst.rd.end:                                     ; preds = %burst.rd.header
  call void (...)* @_ssdm_xcl_PointerMap(i32 addrspace(1)* %arg_y, i32 0, i32 0, i32 4) nounwind
  br label %burst.rd.header6

burst.rd.body13:                                  ; preds = %burst.rd.header6
  %burstread.rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region.str) ; [#uses=1 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecBurst(i32 addrspace(1)* %arg_y, i32 1, i32 16, i32 1) ; [#uses=0 type=i32]
  %6 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str15) ; [#uses=0 type=i32]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopName([19 x i8]* @memcpy_OC_gpu_OC_y0_OC_gmem.str) ; [#uses=0 type=i32]
  %isIter = icmp eq i5 %indvar7, 0                ; [#uses=1 type=i1]
  br i1 %isIter, label %burst.rd.body24, label %burst.rd.body35

burst.rd.body24:                                  ; preds = %burst.rd.body13
  %arg_y.i.0.req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)* %arg_y, i32 16) ; [#uses=0 type=i1]
  br label %burst.rd.body35

burst.rd.body35:                                  ; preds = %burst.rd.body24, %burst.rd.body13
  %arg_y.read = call i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)* %arg_y) ; [#uses=1 type=i32]
  %y0.addr = getelementptr [16 x i32]* @y0, i32 0, i32 %indvar7.cast ; [#uses=1 type=i32*]
  store i32 %arg_y.read, i32* %y0.addr, align 4
  %burstread.rend12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region.str, i32 %burstread.rbegin1) ; [#uses=0 type=i32]
  br label %burst.rd.header6

burst.rd.header6:                                 ; preds = %burst.rd.body35, %burst.rd.end
  %indvar7 = phi i5 [ %indvar.next8, %burst.rd.body35 ], [ 0, %burst.rd.end ] ; [#uses=4 type=i5]
  %indvar7.cast = zext i5 %indvar7 to i32         ; [#uses=1 type=i32]
  %indvar.next8 = add i5 %indvar7, 1              ; [#uses=1 type=i5]
  %exitcond9 = icmp eq i5 %indvar7, -16           ; [#uses=1 type=i1]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %exitcond9, label %for.header.i.i.preheader, label %burst.rd.body13

for.header.i.i.preheader:                         ; preds = %burst.rd.header6
  br label %for.header.i.i

for.header.i.i:                                   ; preds = %_Z21async_work_grou3.rentry.i.i, %for.header.i.i.preheader
  %indvar.reg2mem40.0.i.i = phi i5 [ %indvar.inc.reg2mem.0.i.i, %_Z21async_work_grou3.rentry.i.i ], [ 0, %for.header.i.i.preheader ] ; [#uses=3 type=i5]
  %indvar.reg2mem40.0.i.i.cast2 = zext i5 %indvar.reg2mem40.0.i.i to i32 ; [#uses=1 type=i32]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @XCL_WG_DIM_X.str) nounwind ; [#uses=0 type=i32]
  %tmp.8 = icmp eq i5 %indvar.reg2mem40.0.i.i, -16 ; [#uses=1 type=i1]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp.8, label %__AESL_call_work_item_NA5.exit, label %_Z21async_work_grou3.rentry.i.i

_Z21async_work_grou3.rentry.i.i:                  ; preds = %for.header.i.i
  %tmp1 = add i32 %indvar.reg2mem40.0.i.i.cast2, %tmp ; [#uses=1 type=i32]
  %tmp.9 = add i32 %global_offset.x.load, %tmp1   ; [#uses=3 type=i32]
  %x0.addr.1 = getelementptr inbounds [16 x i32]* @x0, i32 0, i32 %tmp.9, !dbg !228 ; [#uses=1 type=i32*] [debug line = 24:9]
  %x0.load = load i32* %x0.addr.1, align 4, !dbg !228 ; [#uses=1 type=i32] [debug line = 24:9]
  %y0.addr.1 = getelementptr inbounds [16 x i32]* @y0, i32 0, i32 %tmp.9, !dbg !228 ; [#uses=1 type=i32*] [debug line = 24:9]
  %y0.load = load i32* %y0.addr.1, align 4, !dbg !228 ; [#uses=1 type=i32] [debug line = 24:9]
  %tmp. = sub nsw i32 %x0.load, %y0.load, !dbg !228 ; [#uses=1 type=i32] [debug line = 24:9]
  %arg_z.i.0.sum = add i32 %tmp.6, %tmp.9, !dbg !228 ; [#uses=1 type=i32] [debug line = 24:9]
  %gmem.addr = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %arg_z.i.0.sum, !dbg !228, !xcl.port !3 ; [#uses=1 type=i32 addrspace(1)*] [debug line = 24:9]
  store i32 %tmp., i32 addrspace(1)* %gmem.addr, align 4, !dbg !228 ; [debug line = 24:9]
  %indvar.inc.reg2mem.0.i.i = add i5 %indvar.reg2mem40.0.i.i, 1 ; [#uses=1 type=i5]
  %11 = call i32 (...)* @_ssdm_SpecLoopFlatten(i32 0, [1 x i8]* @str) nounwind ; [#uses=0 type=i32]
  br label %for.header.i.i

__AESL_call_work_item_NA5.exit:                   ; preds = %for.header.i.i
  ret void, !dbg !231                             ; [debug line = 81:1]
}

; [#uses=2]
declare void @_ssdm_xcl_PointerMap(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecPipeline(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopName(...)

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecBurst(...)

; [#uses=10]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)*, i32)

; [#uses=2]
declare i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)*)

; [#uses=1]
declare i32 @_ssdm_SpecLoopFlatten(...)

!hls.encrypted.func = !{}
!xcl.libspir = !{!0}
!xcl.reqd_rt_info = !{!1}
!xcl.portmap = !{!2, !4, !5}
!axi4.master.portmap = !{!6}
!xcl.portlist = !{!3, !7}
!xcl.lmem_info = !{!8, !9}
!xcl.progvar_info = !{}
!llvm.map.gv = !{!10, !17, !22}
!llvm.dbg.cu = !{!27}

!0 = metadata !{metadata !"/opt/Xilinx/Vivado_HLS/2016.4/lnx64/lib/libspir-hls.a"}
!1 = metadata !{metadata !"gpu", metadata !"group_id", metadata !"global_offset"}
!2 = metadata !{metadata !"gpu", i32 0, metadata !3}
!3 = metadata !{metadata !"gpu", metadata !"gmem", metadata !"addressable", metadata !"master", i32 32}
!4 = metadata !{metadata !"gpu", i32 1, metadata !3}
!5 = metadata !{metadata !"gpu", i32 2, metadata !3}
!6 = metadata !{metadata !"gmem", metadata !"x", metadata !"", metadata !"y", metadata !"", metadata !"z", metadata !""}
!7 = metadata !{metadata !"gpu", metadata !"control", metadata !"addressable", metadata !"slave", i32 32}
!8 = metadata !{metadata !"gpu", metadata !"gpu.x0", i32 64}
!9 = metadata !{metadata !"gpu", metadata !"gpu.y0", i32 64}
!10 = metadata !{metadata !11, i8** @__spir_rt_info.9}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 7, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"__spir_rt_info.9", metadata !15, metadata !"", i32 0, i32 7}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 0, i32 1}
!17 = metadata !{metadata !18, i64** @__spir_rt_info.12}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 63, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"__spir_rt_info.12", metadata !15, metadata !"", i32 0, i32 63}
!22 = metadata !{metadata !23, i32** @__spir_rt_info.0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"__spir_rt_info.0", metadata !15, metadata !"", i32 0, i32 31}
!27 = metadata !{i32 786449, i32 0, i32 12, metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db/gpu.pragma.2.cl", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !28} ; [ DW_TAG_compile_unit ]
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !30, metadata !42}
!30 = metadata !{i32 786484, i32 0, metadata !31, metadata !"x0", metadata !"x0", metadata !"", metadata !32, i32 13, metadata !39, i32 1, i32 1, [16 x i32]* @x0} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786478, i32 0, metadata !32, metadata !"gpu", metadata !"gpu", metadata !"", metadata !32, i32 11, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !37, i32 12} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786473, metadata !"gpu.cl", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !35, metadata !35, metadata !35}
!35 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ]
!36 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !36, metadata !40, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!42 = metadata !{i32 786484, i32 0, metadata !31, metadata !"y0", metadata !"y0", metadata !"", metadata !32, i32 14, metadata !39, i32 1, i32 1, [16 x i32]* @y0} ; [ DW_TAG_variable ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"gmem", metadata !15, metadata !"", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"group_id.x", metadata !15, metadata !"", i32 0, i32 31}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"group_id.y", metadata !15, metadata !"", i32 0, i32 31}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"group_id.z", metadata !15, metadata !"", i32 0, i32 31}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"global_offset.x", metadata !15, metadata !"", i32 0, i32 31}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"global_offset.y", metadata !15, metadata !"", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"global_offset.z", metadata !15, metadata !"", i32 0, i32 31}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"x", metadata !15, metadata !"", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"y", metadata !15, metadata !"", i32 0, i32 31}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"z", metadata !15, metadata !"", i32 0, i32 31}
!83 = metadata !{i32 786689, metadata !84, metadata !"gmem", metadata !85, i32 16777278, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 786478, i32 0, metadata !85, metadata !"__AESL_work_groupA", metadata !"__AESL_work_groupA", metadata !"", metadata !85, i32 62, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !37, i32 63} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786473, metadata !"gpu_compute_unit", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db", null} ; [ DW_TAG_file_type ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !88, metadata !91, metadata !91, metadata !108}
!88 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ]
!89 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_volatile_type ]
!90 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!91 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ]
!92 = metadata !{i32 786454, null, metadata !"three_tuple_t", metadata !85, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ]
!93 = metadata !{i32 786434, null, metadata !"", metadata !85, i32 10, i64 96, i64 32, i32 0, i32 0, null, metadata !94, i32 0, null, null} ; [ DW_TAG_class_type ]
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98}
!95 = metadata !{i32 786445, metadata !93, metadata !"x", metadata !85, i32 11, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ]
!96 = metadata !{i32 786445, metadata !93, metadata !"y", metadata !85, i32 12, i64 32, i64 32, i64 32, i32 0, metadata !90} ; [ DW_TAG_member ]
!97 = metadata !{i32 786445, metadata !93, metadata !"z", metadata !85, i32 13, i64 32, i64 32, i64 64, i32 0, metadata !90} ; [ DW_TAG_member ]
!98 = metadata !{i32 786474, metadata !93, null, metadata !85, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_friend ]
!99 = metadata !{i32 786434, null, metadata !"aesl_keep_name_class", metadata !85, i32 24, i64 8, i64 8, i32 0, i32 0, null, metadata !100, i32 0, null, null} ; [ DW_TAG_class_type ]
!100 = metadata !{metadata !101, metadata !104, metadata !105}
!101 = metadata !{i32 786478, i32 0, metadata !99, metadata !"aesl_keep_name_0_group_id", metadata !"aesl_keep_name_0_group_id", metadata !"_ZN20aesl_keep_name_class25aesl_keep_name_0_group_idEP13three_tuple_t", metadata !85, i32 27, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 27} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{null, metadata !91}
!104 = metadata !{i32 786478, i32 0, metadata !99, metadata !"aesl_keep_name_0_global_offset", metadata !"aesl_keep_name_0_global_offset", metadata !"_ZN20aesl_keep_name_class30aesl_keep_name_0_global_offsetEP13three_tuple_t", metadata !85, i32 33, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 33} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786478, i32 0, metadata !99, metadata !"aesl_keep_name_0_args", metadata !"aesl_keep_name_0_args", metadata !"_ZN20aesl_keep_name_class21aesl_keep_name_0_argsEP10gpu_args_t", metadata !85, i32 39, metadata !106, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 39} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!107 = metadata !{null, metadata !108}
!108 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ]
!109 = metadata !{i32 786454, null, metadata !"gpu_args_t", metadata !85, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ]
!110 = metadata !{i32 786434, null, metadata !"", metadata !85, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !111, i32 0, null, null} ; [ DW_TAG_class_type ]
!111 = metadata !{metadata !112, metadata !114, metadata !115, metadata !116}
!112 = metadata !{i32 786445, metadata !110, metadata !"x", metadata !85, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ]
!113 = metadata !{i32 786454, null, metadata !"__spir_size_t", metadata !85, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ]
!114 = metadata !{i32 786445, metadata !110, metadata !"y", metadata !85, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ]
!115 = metadata !{i32 786445, metadata !110, metadata !"z", metadata !85, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ]
!116 = metadata !{i32 786474, metadata !110, null, metadata !85, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_friend ]
!117 = metadata !{i32 62, i32 84, metadata !84, null}
!118 = metadata !{i32 790531, metadata !119, metadata !"group_id.x", null, i32 62, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!119 = metadata !{i32 786689, metadata !84, metadata !"group_id", metadata !85, i32 33554494, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ]
!121 = metadata !{i32 786438, null, metadata !"", metadata !85, i32 10, i64 32, i64 32, i32 0, i32 0, null, metadata !122, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!122 = metadata !{metadata !95}
!123 = metadata !{i32 62, i32 105, metadata !84, null}
!124 = metadata !{i32 790531, metadata !119, metadata !"group_id.y", null, i32 62, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!125 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ]
!126 = metadata !{i32 786438, null, metadata !"", metadata !85, i32 10, i64 32, i64 32, i32 0, i32 0, null, metadata !127, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!127 = metadata !{metadata !96}
!128 = metadata !{i32 790531, metadata !119, metadata !"group_id.z", null, i32 62, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!129 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ]
!130 = metadata !{i32 786438, null, metadata !"", metadata !85, i32 10, i64 32, i64 32, i32 0, i32 0, null, metadata !131, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!131 = metadata !{metadata !97}
!132 = metadata !{i32 790531, metadata !133, metadata !"global_offset.x", null, i32 62, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!133 = metadata !{i32 786689, metadata !84, metadata !"global_offset", metadata !85, i32 50331710, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 62, i32 130, metadata !84, null}
!135 = metadata !{i32 790531, metadata !133, metadata !"global_offset.y", null, i32 62, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!136 = metadata !{i32 790531, metadata !133, metadata !"global_offset.z", null, i32 62, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!137 = metadata !{i32 790531, metadata !138, metadata !"args.x", null, i32 62, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!138 = metadata !{i32 786689, metadata !84, metadata !"args", metadata !85, i32 67108926, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ]
!140 = metadata !{i32 786438, null, metadata !"", metadata !85, i32 17, i64 32, i64 32, i32 0, i32 0, null, metadata !141, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!141 = metadata !{metadata !112}
!142 = metadata !{i32 62, i32 157, metadata !84, null}
!143 = metadata !{i32 790531, metadata !138, metadata !"args.y", null, i32 62, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!144 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ]
!145 = metadata !{i32 786438, null, metadata !"", metadata !85, i32 17, i64 32, i64 32, i32 0, i32 0, null, metadata !146, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!146 = metadata !{metadata !114}
!147 = metadata !{i32 790531, metadata !138, metadata !"args.z", null, i32 62, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!148 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ]
!149 = metadata !{i32 786438, null, metadata !"", metadata !85, i32 17, i64 32, i64 32, i32 0, i32 0, null, metadata !150, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!150 = metadata !{metadata !115}
!151 = metadata !{i32 790531, metadata !152, metadata !"group_id.x", null, i32 27, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!152 = metadata !{i32 786689, metadata !153, metadata !"group_id", metadata !85, i32 16777243, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!153 = metadata !{i32 786478, i32 0, null, metadata !"aesl_keep_name_0_group_id", metadata !"aesl_keep_name_0_group_id", metadata !"_ZN20aesl_keep_name_class25aesl_keep_name_0_group_idEP13three_tuple_t", metadata !85, i32 27, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !101, metadata !37, i32 27} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 27, i32 44, metadata !153, metadata !155}
!155 = metadata !{i32 69, i32 1, metadata !156, null}
!156 = metadata !{i32 786443, metadata !84, i32 63, i32 1, metadata !85, i32 1} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 790531, metadata !152, metadata !"group_id.y", null, i32 27, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!158 = metadata !{i32 790531, metadata !152, metadata !"group_id.z", null, i32 27, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!159 = metadata !{i32 790531, metadata !160, metadata !"global_offset.x", null, i32 33, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!160 = metadata !{i32 786689, metadata !161, metadata !"global_offset", metadata !85, i32 16777249, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 786478, i32 0, null, metadata !"aesl_keep_name_0_global_offset", metadata !"aesl_keep_name_0_global_offset", metadata !"_ZN20aesl_keep_name_class30aesl_keep_name_0_global_offsetEP13three_tuple_t", metadata !85, i32 33, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !104, metadata !37, i32 33} ; [ DW_TAG_subprogram ]
!162 = metadata !{i32 33, i32 49, metadata !161, metadata !163}
!163 = metadata !{i32 70, i32 1, metadata !156, null}
!164 = metadata !{i32 790531, metadata !160, metadata !"global_offset.y", null, i32 33, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!165 = metadata !{i32 790531, metadata !160, metadata !"global_offset.z", null, i32 33, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!166 = metadata !{i32 790531, metadata !167, metadata !"args.x", null, i32 39, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!167 = metadata !{i32 786689, metadata !168, metadata !"args", metadata !85, i32 16777255, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 786478, i32 0, null, metadata !"aesl_keep_name_0_args", metadata !"aesl_keep_name_0_args", metadata !"_ZN20aesl_keep_name_class21aesl_keep_name_0_argsEP10gpu_args_t", metadata !85, i32 39, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !105, metadata !37, i32 39} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 39, i32 37, metadata !168, metadata !170}
!170 = metadata !{i32 71, i32 1, metadata !156, null}
!171 = metadata !{i32 790531, metadata !167, metadata !"args.y", null, i32 39, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!172 = metadata !{i32 790531, metadata !167, metadata !"args.z", null, i32 39, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!173 = metadata !{i32 72, i32 1, metadata !156, null}
!174 = metadata !{i32 73, i32 1, metadata !156, null}
!175 = metadata !{i32 74, i32 1, metadata !156, null}
!176 = metadata !{i32 75, i32 1, metadata !156, null}
!177 = metadata !{i32 76, i32 1, metadata !156, null}
!178 = metadata !{i32 121, i32 3, metadata !179, null}
!179 = metadata !{i32 786443, metadata !156, metadata !180} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/opencl/aesl_gen_cu_body.inc", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db", null} ; [ DW_TAG_file_type ]
!181 = metadata !{i32 132, i32 3, metadata !179, null}
!182 = metadata !{i32 147, i32 3, metadata !179, null}
!183 = metadata !{i32 786689, metadata !184, metadata !"gmem", metadata !85, i32 16777268, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 786478, i32 0, metadata !85, metadata !"__AESL_call_work_item_NA", metadata !"__AESL_call_work_item_NA", metadata !"", metadata !85, i32 52, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !37, i32 53} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{null, metadata !88, metadata !187, metadata !108}
!187 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !188} ; [ DW_TAG_pointer_type ]
!188 = metadata !{i32 786454, null, metadata !"__spir_rt_info_t", metadata !85, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !189} ; [ DW_TAG_typedef ]
!189 = metadata !{i32 786434, null, metadata !"__spir_rt_info_tT", metadata !190, i32 120, i64 896, i64 64, i32 0, i32 0, null, metadata !191, i32 0, null, null} ; [ DW_TAG_class_type ]
!190 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/opencl/libspir_types.h", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db", null} ; [ DW_TAG_file_type ]
!191 = metadata !{metadata !192, metadata !193, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !205, metadata !208, metadata !209, metadata !210, metadata !212}
!192 = metadata !{i32 786445, metadata !189, metadata !"work_dim", metadata !190, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ]
!193 = metadata !{i32 786445, metadata !189, metadata !"global_size", metadata !190, i32 124, i64 96, i64 32, i64 32, i32 0, metadata !194} ; [ DW_TAG_member ]
!194 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !90, metadata !195, i32 0, i32 0} ; [ DW_TAG_array_type ]
!195 = metadata !{metadata !196}
!196 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!197 = metadata !{i32 786445, metadata !189, metadata !"global_id", metadata !190, i32 125, i64 96, i64 32, i64 128, i32 0, metadata !194} ; [ DW_TAG_member ]
!198 = metadata !{i32 786445, metadata !189, metadata !"local_size", metadata !190, i32 127, i64 96, i64 32, i64 224, i32 0, metadata !194} ; [ DW_TAG_member ]
!199 = metadata !{i32 786445, metadata !189, metadata !"local_id", metadata !190, i32 128, i64 96, i64 32, i64 320, i32 0, metadata !194} ; [ DW_TAG_member ]
!200 = metadata !{i32 786445, metadata !189, metadata !"num_groups", metadata !190, i32 130, i64 96, i64 32, i64 416, i32 0, metadata !194} ; [ DW_TAG_member ]
!201 = metadata !{i32 786445, metadata !189, metadata !"group_id", metadata !190, i32 131, i64 96, i64 32, i64 512, i32 0, metadata !194} ; [ DW_TAG_member ]
!202 = metadata !{i32 786445, metadata !189, metadata !"global_offset", metadata !190, i32 132, i64 96, i64 32, i64 608, i32 0, metadata !194} ; [ DW_TAG_member ]
!203 = metadata !{i32 786445, metadata !189, metadata !"pthread_barrier", metadata !190, i32 135, i64 32, i64 32, i64 704, i32 0, metadata !204} ; [ DW_TAG_member ]
!204 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!205 = metadata !{i32 786445, metadata !189, metadata !"barriertoscheduler", metadata !190, i32 138, i64 8, i64 8, i64 736, i32 0, metadata !206} ; [ DW_TAG_member ]
!206 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !207} ; [ DW_TAG_volatile_type ]
!207 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!208 = metadata !{i32 786445, metadata !189, metadata !"scheduler_context", metadata !190, i32 139, i64 32, i64 32, i64 768, i32 0, metadata !204} ; [ DW_TAG_member ]
!209 = metadata !{i32 786445, metadata !189, metadata !"pe_context", metadata !190, i32 140, i64 32, i64 32, i64 800, i32 0, metadata !204} ; [ DW_TAG_member ]
!210 = metadata !{i32 786445, metadata !189, metadata !"printf_buffer", metadata !190, i32 142, i64 64, i64 64, i64 832, i32 0, metadata !211} ; [ DW_TAG_member ]
!211 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!212 = metadata !{i32 786478, i32 0, metadata !189, metadata !"__spir_rt_info_tT", metadata !"__spir_rt_info_tT", metadata !"", metadata !190, i32 120, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !37, i32 120} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{null, metadata !215}
!215 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !189} ; [ DW_TAG_pointer_type ]
!216 = metadata !{i32 52, i32 90, metadata !184, null}
!217 = metadata !{i32 790531, metadata !218, metadata !"args.x", null, i32 52, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!218 = metadata !{i32 786689, metadata !184, metadata !"args", metadata !85, i32 50331700, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 52, i32 135, metadata !184, null}
!220 = metadata !{i32 790531, metadata !218, metadata !"args.y", null, i32 52, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!221 = metadata !{i32 790531, metadata !218, metadata !"args.z", null, i32 52, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!222 = metadata !{i32 54, i32 110, metadata !223, null}
!223 = metadata !{i32 786443, metadata !184, i32 53, i32 1, metadata !85, i32 0} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 786688, metadata !223, metadata !"arg_x", metadata !85, i32 54, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!225 = metadata !{i32 55, i32 110, metadata !223, null}
!226 = metadata !{i32 786688, metadata !223, metadata !"arg_y", metadata !85, i32 55, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 56, i32 110, metadata !223, null}
!228 = metadata !{i32 24, i32 9, metadata !229, null}
!229 = metadata !{i32 786443, metadata !230, i32 17, i32 5, metadata !32, i32 1} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 786443, metadata !31, i32 12, i32 1, metadata !32, i32 0} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 81, i32 1, metadata !232, null}
!232 = metadata !{i32 786443, metadata !156, metadata !85} ; [ DW_TAG_lexical_block ]
