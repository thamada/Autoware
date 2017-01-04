; ModuleID = '/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir-unknown-linux-gnu"

@y0 = internal unnamed_addr global [16 x i32] zeroinitializer, align 4 ; [#uses=2 type=[16 x i32]*]
@x0 = internal unnamed_addr global [16 x i32] zeroinitializer, align 4 ; [#uses=2 type=[16 x i32]*]
@memcpy_OC_gpu_OC_y0_s = internal unnamed_addr constant [19 x i8] c"memcpy.gpu.y0.gmem\00" ; [#uses=1 type=[19 x i8]*]
@memcpy_OC_gpu_OC_x0_s = internal unnamed_addr constant [19 x i8] c"memcpy.gpu.x0.gmem\00" ; [#uses=1 type=[19 x i8]*]
@gpu_str = internal unnamed_addr constant [4 x i8] c"gpu\00" ; [#uses=1 type=[4 x i8]*]
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00" ; [#uses=4 type=[17 x i8]*]
@p_spir_rt_info_9 = global i8* null               ; [#uses=0 type=i8**]
@p_spir_rt_info_8 = global i8** null              ; [#uses=0 type=i8***]
@p_spir_rt_info_7 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@p_spir_rt_info_6 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@p_spir_rt_info_5 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@p_spir_rt_info_4 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@p_spir_rt_info_3 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@p_spir_rt_info_2 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@p_spir_rt_info_12 = global i64* null             ; [#uses=0 type=i64**]
@p_spir_rt_info_11 = global i8** null             ; [#uses=0 type=i8***]
@p_spir_rt_info_10 = global i8** null             ; [#uses=0 type=i8***]
@p_spir_rt_info_1 = global [3 x i32]* null        ; [#uses=0 type=[3 x i32]**]
@p_spir_rt_info_0 = global i32* null              ; [#uses=0 type=i32**]
@XCL_WG_DIM_X_str = internal unnamed_addr constant [13 x i8] c"XCL_WG_DIM_X\00" ; [#uses=1 type=[13 x i8]*]
@p_str3 = private unnamed_addr constant [8 x i8] c"control\00", align 1 ; [#uses=4 type=[8 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=26 type=[1 x i8]*]
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=25]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @gpu(i32 addrspace(1)* %gmem, i32* %group_id_x, i32* %group_id_y, i32* %group_id_z, i32* %global_offset_x, i32* %global_offset_y, i32* %global_offset_z, i32* %x, i32* %y, i32* %z) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 addrspace(1)* %gmem), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %group_id_x), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %group_id_y), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %group_id_z), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %global_offset_x), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %global_offset_y), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %global_offset_z), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %x), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %y), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %z), !map !63
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @gpu_str)
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %gmem}, i64 0, metadata !67), !dbg !103 ; [debug line = 62:84] [debug variable = gmem]
  call void @llvm.dbg.value(metadata !{i32* %group_id_x}, i64 0, metadata !104), !dbg !109 ; [debug line = 62:105] [debug variable = group_id.x]
  call void @llvm.dbg.value(metadata !{i32* %group_id_y}, i64 0, metadata !110), !dbg !109 ; [debug line = 62:105] [debug variable = group_id.y]
  call void @llvm.dbg.value(metadata !{i32* %group_id_z}, i64 0, metadata !114), !dbg !109 ; [debug line = 62:105] [debug variable = group_id.z]
  call void @llvm.dbg.value(metadata !{i32* %global_offset_x}, i64 0, metadata !118), !dbg !120 ; [debug line = 62:130] [debug variable = global_offset.x]
  call void @llvm.dbg.value(metadata !{i32* %global_offset_y}, i64 0, metadata !121), !dbg !120 ; [debug line = 62:130] [debug variable = global_offset.y]
  call void @llvm.dbg.value(metadata !{i32* %global_offset_z}, i64 0, metadata !122), !dbg !120 ; [debug line = 62:130] [debug variable = global_offset.z]
  call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !123), !dbg !128 ; [debug line = 62:157] [debug variable = args.x]
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !129), !dbg !128 ; [debug line = 62:157] [debug variable = args.y]
  call void @llvm.dbg.value(metadata !{i32* %z}, i64 0, metadata !133), !dbg !128 ; [debug line = 62:157] [debug variable = args.z]
  call void @llvm.dbg.value(metadata !{i32* %group_id_x}, i64 0, metadata !137), !dbg !140 ; [debug line = 27:44@69:1] [debug variable = group_id.x]
  call void @llvm.dbg.value(metadata !{i32* %group_id_y}, i64 0, metadata !143), !dbg !140 ; [debug line = 27:44@69:1] [debug variable = group_id.y]
  call void @llvm.dbg.value(metadata !{i32* %group_id_z}, i64 0, metadata !144), !dbg !140 ; [debug line = 27:44@69:1] [debug variable = group_id.z]
  call void @llvm.dbg.value(metadata !{i32* %global_offset_x}, i64 0, metadata !145), !dbg !148 ; [debug line = 33:49@70:1] [debug variable = global_offset.x]
  call void @llvm.dbg.value(metadata !{i32* %global_offset_y}, i64 0, metadata !150), !dbg !148 ; [debug line = 33:49@70:1] [debug variable = global_offset.y]
  call void @llvm.dbg.value(metadata !{i32* %global_offset_z}, i64 0, metadata !151), !dbg !148 ; [debug line = 33:49@70:1] [debug variable = global_offset.z]
  call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !152), !dbg !155 ; [debug line = 39:37@71:1] [debug variable = args.x]
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !157), !dbg !155 ; [debug line = 39:37@71:1] [debug variable = args.y]
  call void @llvm.dbg.value(metadata !{i32* %z}, i64 0, metadata !158), !dbg !155 ; [debug line = 39:37@71:1] [debug variable = args.z]
  call void (...)* @_ssdm_op_SpecInterface(i32 addrspace(1)* %gmem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 128, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !159 ; [debug line = 72:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %group_id_x, i32* %group_id_y, i32* %group_id_z, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [8 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !160 ; [debug line = 73:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %global_offset_x, i32* %global_offset_y, i32* %global_offset_z, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [8 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !161 ; [debug line = 74:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [8 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !162 ; [debug line = 75:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %x, i32* %y, i32* %z, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [8 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !163 ; [debug line = 76:1]
  %group_id_x_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %group_id_x), !dbg !164 ; [#uses=1 type=i32] [debug line = 121:3]
  %global_offset_x_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %global_offset_x), !dbg !167 ; [#uses=2 type=i32] [debug line = 132:3]
  %tmp = shl i32 %group_id_x_read, 4, !dbg !168   ; [#uses=2 type=i32] [debug line = 147:3]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %gmem}, i64 0, metadata !169), !dbg !202 ; [debug line = 52:90] [debug variable = gmem]
  call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !203), !dbg !205 ; [debug line = 52:135] [debug variable = args.x]
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !206), !dbg !205 ; [debug line = 52:135] [debug variable = args.y]
  call void @llvm.dbg.value(metadata !{i32* %z}, i64 0, metadata !207), !dbg !205 ; [debug line = 52:135] [debug variable = args.z]
  %x_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %x), !dbg !208 ; [#uses=1 type=i32] [debug line = 54:110]
  %tmp_4 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %x_read, i32 2, i32 31), !dbg !208 ; [#uses=1 type=i30] [debug line = 54:110]
  %tmp_2 = zext i30 %tmp_4 to i32, !dbg !208      ; [#uses=1 type=i32] [debug line = 54:110]
  %arg_x = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %tmp_2, !dbg !208 ; [#uses=2 type=i32 addrspace(1)*] [debug line = 54:110]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %arg_x}, i64 0, metadata !210), !dbg !208 ; [debug line = 54:110] [debug variable = arg_x]
  %y_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %y), !dbg !211 ; [#uses=1 type=i32] [debug line = 55:110]
  %tmp_5 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %y_read, i32 2, i32 31), !dbg !211 ; [#uses=1 type=i30] [debug line = 55:110]
  %tmp_3 = zext i30 %tmp_5 to i32, !dbg !211      ; [#uses=1 type=i32] [debug line = 55:110]
  %arg_y = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %tmp_3, !dbg !211 ; [#uses=2 type=i32 addrspace(1)*] [debug line = 55:110]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %arg_y}, i64 0, metadata !212), !dbg !211 ; [debug line = 55:110] [debug variable = arg_y]
  %z_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %z), !dbg !213 ; [#uses=1 type=i32] [debug line = 56:110]
  %tmp_6 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %z_read, i32 2, i32 31), !dbg !213 ; [#uses=1 type=i30] [debug line = 56:110]
  %tmp_7 = zext i30 %tmp_6 to i32, !dbg !213      ; [#uses=1 type=i32] [debug line = 56:110]
  br label %burst.rd.header

burst.rd.body1:                                   ; preds = %burst.rd.header
  %indvar_cast = zext i5 %indvar to i32           ; [#uses=1 type=i32]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) ; [#uses=1 type=i32]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str14) ; [#uses=0 type=i32]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopName([19 x i8]* @memcpy_OC_gpu_OC_x0_s) ; [#uses=0 type=i32]
  %isIter0 = icmp eq i5 %indvar, 0                ; [#uses=1 type=i1]
  br i1 %isIter0, label %burst.rd.body2, label %burst.rd.body3

burst.rd.body2:                                   ; preds = %burst.rd.body1
  %arg_x_i_0_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)* %arg_x, i32 16) ; [#uses=0 type=i1]
  br label %burst.rd.body3

burst.rd.body3:                                   ; preds = %burst.rd.body2, %burst.rd.body1
  %arg_x_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)* %arg_x) ; [#uses=1 type=i32]
  %x0_addr = getelementptr [16 x i32]* @x0, i32 0, i32 %indvar_cast ; [#uses=1 type=i32*]
  store i32 %arg_x_read, i32* %x0_addr, align 4
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin) ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body3, %0
  %indvar = phi i5 [ %indvar_next, %burst.rd.body3 ], [ 0, %0 ] ; [#uses=4 type=i5]
  %exitcond = icmp eq i5 %indvar, -16             ; [#uses=1 type=i1]
  %indvar_next = add i5 %indvar, 1                ; [#uses=1 type=i5]
  br i1 %exitcond, label %burst.rd.header6.preheader, label %burst.rd.body1

burst.rd.header6.preheader:                       ; preds = %burst.rd.header
  br label %burst.rd.header6

burst.rd.body13:                                  ; preds = %burst.rd.header6
  %indvar7_cast = zext i5 %indvar7 to i32         ; [#uses=1 type=i32]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) ; [#uses=1 type=i32]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str15) ; [#uses=0 type=i32]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopName([19 x i8]* @memcpy_OC_gpu_OC_y0_s) ; [#uses=0 type=i32]
  %isIter = icmp eq i5 %indvar7, 0                ; [#uses=1 type=i1]
  br i1 %isIter, label %burst.rd.body24, label %burst.rd.body35

burst.rd.body24:                                  ; preds = %burst.rd.body13
  %arg_y_i_0_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)* %arg_y, i32 16) ; [#uses=0 type=i1]
  br label %burst.rd.body35

burst.rd.body35:                                  ; preds = %burst.rd.body24, %burst.rd.body13
  %arg_y_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)* %arg_y) ; [#uses=1 type=i32]
  %y0_addr = getelementptr [16 x i32]* @y0, i32 0, i32 %indvar7_cast ; [#uses=1 type=i32*]
  store i32 %arg_y_read, i32* %y0_addr, align 4
  %burstread_rend12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin1) ; [#uses=0 type=i32]
  br label %burst.rd.header6

burst.rd.header6:                                 ; preds = %burst.rd.body35, %burst.rd.header6.preheader
  %indvar7 = phi i5 [ %indvar_next8, %burst.rd.body35 ], [ 0, %burst.rd.header6.preheader ] ; [#uses=4 type=i5]
  %exitcond9 = icmp eq i5 %indvar7, -16           ; [#uses=1 type=i1]
  %indvar_next8 = add i5 %indvar7, 1              ; [#uses=1 type=i5]
  br i1 %exitcond9, label %for.header.i.i.preheader, label %burst.rd.body13

for.header.i.i.preheader:                         ; preds = %burst.rd.header6
  %tmp_1 = add i32 %tmp, %global_offset_x_read    ; [#uses=1 type=i32]
  %tmp_10 = add i32 %tmp_1, %tmp_7, !dbg !214     ; [#uses=1 type=i32] [debug line = 24:9]
  %gmem_addr = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %tmp_10, !dbg !214, !xcl.port !3 ; [#uses=3 type=i32 addrspace(1)*] [debug line = 24:9]
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32 addrspace(1)* %gmem_addr, i32 16), !dbg !214 ; [#uses=0 type=i1] [debug line = 24:9]
  br label %for.header.i.i

for.header.i.i:                                   ; preds = %_Z21async_work_grou3.rentry.i.i, %for.header.i.i.preheader
  %indvar_reg2mem40_0_i = phi i5 [ %indvar_inc_reg2mem, %_Z21async_work_grou3.rentry.i.i ], [ 0, %for.header.i.i.preheader ] ; [#uses=3 type=i5]
  %tmp_8 = icmp eq i5 %indvar_reg2mem40_0_i, -16  ; [#uses=1 type=i1]
  %indvar_inc_reg2mem = add i5 %indvar_reg2mem40_0_i, 1 ; [#uses=1 type=i5]
  br i1 %tmp_8, label %__AESL_call_work_item_NA5.exit, label %_Z21async_work_grou3.rentry.i.i

_Z21async_work_grou3.rentry.i.i:                  ; preds = %for.header.i.i
  %indvar_reg2mem40_0_i_1 = zext i5 %indvar_reg2mem40_0_i to i32 ; [#uses=1 type=i32]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @XCL_WG_DIM_X_str) nounwind ; [#uses=0 type=i32]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %tmp1 = add i32 %tmp, %indvar_reg2mem40_0_i_1   ; [#uses=1 type=i32]
  %tmp_9 = add i32 %tmp1, %global_offset_x_read   ; [#uses=2 type=i32]
  %x0_addr_1 = getelementptr inbounds [16 x i32]* @x0, i32 0, i32 %tmp_9, !dbg !214 ; [#uses=1 type=i32*] [debug line = 24:9]
  %x0_load = load i32* %x0_addr_1, align 4, !dbg !214 ; [#uses=1 type=i32] [debug line = 24:9]
  %y0_addr_1 = getelementptr inbounds [16 x i32]* @y0, i32 0, i32 %tmp_9, !dbg !214 ; [#uses=1 type=i32*] [debug line = 24:9]
  %y0_load = load i32* %y0_addr_1, align 4, !dbg !214 ; [#uses=1 type=i32] [debug line = 24:9]
  %tmp_s = sub nsw i32 %x0_load, %y0_load, !dbg !214 ; [#uses=1 type=i32] [debug line = 24:9]
  call void @_ssdm_op_Write.m_axi.i32P(i32 addrspace(1)* %gmem_addr, i32 %tmp_s, i4 -1), !dbg !214 ; [debug line = 24:9]
  br label %for.header.i.i

__AESL_call_work_item_NA5.exit:                   ; preds = %for.header.i.i
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32 addrspace(1)* %gmem_addr), !dbg !214 ; [#uses=0 type=i1] [debug line = 24:9]
  ret void, !dbg !223                             ; [debug line = 81:1]
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32 addrspace(1)*) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32 addrspace(1)*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak void @_ssdm_op_Write.m_axi.i32P(i32 addrspace(1)*, i32, i4) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecPipeline(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=10]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)*, i32) {
entry:
  ret i1 true
}

; [#uses=5]
define weak i32 @_ssdm_op_Read.s_axilite.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)*) {
entry:
  %empty = load i32 addrspace(1)* %0              ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=3]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_11 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_11
}

; [#uses=0]
declare i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28, i4) nounwind readnone

!hls.encrypted.func = !{}
!xcl.libspir = !{!0}
!xcl.reqd_rt_info = !{!1}
!xcl.portmap = !{!2, !4, !5}
!axi4.master.portmap = !{!6}
!xcl.portlist = !{!3, !7}
!xcl.lmem_info = !{!8, !9}
!xcl.progvar_info = !{}
!llvm.map.gv = !{!10, !17, !22}

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
!10 = metadata !{metadata !11, i8** @p_spir_rt_info_9}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 7, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"__spir_rt_info.9", metadata !15, metadata !"", i32 0, i32 7}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 0, i32 1}
!17 = metadata !{metadata !18, i64** @p_spir_rt_info_12}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 63, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"__spir_rt_info.12", metadata !15, metadata !"", i32 0, i32 63}
!22 = metadata !{metadata !23, i32** @p_spir_rt_info_0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"__spir_rt_info.0", metadata !15, metadata !"", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"gmem", metadata !15, metadata !"", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"group_id.x", metadata !15, metadata !"", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"group_id.y", metadata !15, metadata !"", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"group_id.z", metadata !15, metadata !"", i32 0, i32 31}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"global_offset.x", metadata !15, metadata !"", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"global_offset.y", metadata !15, metadata !"", i32 0, i32 31}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"global_offset.z", metadata !15, metadata !"", i32 0, i32 31}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"x", metadata !15, metadata !"", i32 0, i32 31}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"y", metadata !15, metadata !"", i32 0, i32 31}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"z", metadata !15, metadata !"", i32 0, i32 31}
!67 = metadata !{i32 786689, metadata !68, metadata !"gmem", metadata !69, i32 16777278, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 786478, i32 0, metadata !69, metadata !"__AESL_work_groupA", metadata !"__AESL_work_groupA", metadata !"", metadata !69, i32 62, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !88, i32 63} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786473, metadata !"gpu_compute_unit", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db", null} ; [ DW_TAG_file_type ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{null, metadata !72, metadata !75, metadata !75, metadata !94}
!72 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ]
!73 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_volatile_type ]
!74 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!75 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ]
!76 = metadata !{i32 786454, null, metadata !"three_tuple_t", metadata !69, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ]
!77 = metadata !{i32 786434, null, metadata !"", metadata !69, i32 10, i64 96, i64 32, i32 0, i32 0, null, metadata !78, i32 0, null, null} ; [ DW_TAG_class_type ]
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82}
!79 = metadata !{i32 786445, metadata !77, metadata !"x", metadata !69, i32 11, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ]
!80 = metadata !{i32 786445, metadata !77, metadata !"y", metadata !69, i32 12, i64 32, i64 32, i64 32, i32 0, metadata !74} ; [ DW_TAG_member ]
!81 = metadata !{i32 786445, metadata !77, metadata !"z", metadata !69, i32 13, i64 32, i64 32, i64 64, i32 0, metadata !74} ; [ DW_TAG_member ]
!82 = metadata !{i32 786474, metadata !77, null, metadata !69, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_friend ]
!83 = metadata !{i32 786434, null, metadata !"aesl_keep_name_class", metadata !69, i32 24, i64 8, i64 8, i32 0, i32 0, null, metadata !84, i32 0, null, null} ; [ DW_TAG_class_type ]
!84 = metadata !{metadata !85, metadata !90, metadata !91}
!85 = metadata !{i32 786478, i32 0, metadata !83, metadata !"aesl_keep_name_0_group_id", metadata !"aesl_keep_name_0_group_id", metadata !"_ZN20aesl_keep_name_class25aesl_keep_name_0_group_idEP13three_tuple_t", metadata !69, i32 27, metadata !86, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !88, i32 27} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !75}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!90 = metadata !{i32 786478, i32 0, metadata !83, metadata !"aesl_keep_name_0_global_offset", metadata !"aesl_keep_name_0_global_offset", metadata !"_ZN20aesl_keep_name_class30aesl_keep_name_0_global_offsetEP13three_tuple_t", metadata !69, i32 33, metadata !86, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !88, i32 33} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786478, i32 0, metadata !83, metadata !"aesl_keep_name_0_args", metadata !"aesl_keep_name_0_args", metadata !"_ZN20aesl_keep_name_class21aesl_keep_name_0_argsEP10gpu_args_t", metadata !69, i32 39, metadata !92, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !88, i32 39} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !94}
!94 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ]
!95 = metadata !{i32 786454, null, metadata !"gpu_args_t", metadata !69, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ]
!96 = metadata !{i32 786434, null, metadata !"", metadata !69, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !97, i32 0, null, null} ; [ DW_TAG_class_type ]
!97 = metadata !{metadata !98, metadata !100, metadata !101, metadata !102}
!98 = metadata !{i32 786445, metadata !96, metadata !"x", metadata !69, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !99} ; [ DW_TAG_member ]
!99 = metadata !{i32 786454, null, metadata !"__spir_size_t", metadata !69, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ]
!100 = metadata !{i32 786445, metadata !96, metadata !"y", metadata !69, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !99} ; [ DW_TAG_member ]
!101 = metadata !{i32 786445, metadata !96, metadata !"z", metadata !69, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !99} ; [ DW_TAG_member ]
!102 = metadata !{i32 786474, metadata !96, null, metadata !69, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_friend ]
!103 = metadata !{i32 62, i32 84, metadata !68, null}
!104 = metadata !{i32 790531, metadata !105, metadata !"group_id.x", null, i32 62, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!105 = metadata !{i32 786689, metadata !68, metadata !"group_id", metadata !69, i32 33554494, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ]
!107 = metadata !{i32 786438, null, metadata !"", metadata !69, i32 10, i64 32, i64 32, i32 0, i32 0, null, metadata !108, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!108 = metadata !{metadata !79}
!109 = metadata !{i32 62, i32 105, metadata !68, null}
!110 = metadata !{i32 790531, metadata !105, metadata !"group_id.y", null, i32 62, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!111 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ]
!112 = metadata !{i32 786438, null, metadata !"", metadata !69, i32 10, i64 32, i64 32, i32 0, i32 0, null, metadata !113, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!113 = metadata !{metadata !80}
!114 = metadata !{i32 790531, metadata !105, metadata !"group_id.z", null, i32 62, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!115 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ]
!116 = metadata !{i32 786438, null, metadata !"", metadata !69, i32 10, i64 32, i64 32, i32 0, i32 0, null, metadata !117, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!117 = metadata !{metadata !81}
!118 = metadata !{i32 790531, metadata !119, metadata !"global_offset.x", null, i32 62, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!119 = metadata !{i32 786689, metadata !68, metadata !"global_offset", metadata !69, i32 50331710, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 62, i32 130, metadata !68, null}
!121 = metadata !{i32 790531, metadata !119, metadata !"global_offset.y", null, i32 62, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!122 = metadata !{i32 790531, metadata !119, metadata !"global_offset.z", null, i32 62, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!123 = metadata !{i32 790531, metadata !124, metadata !"args.x", null, i32 62, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!124 = metadata !{i32 786689, metadata !68, metadata !"args", metadata !69, i32 67108926, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ]
!126 = metadata !{i32 786438, null, metadata !"", metadata !69, i32 17, i64 32, i64 32, i32 0, i32 0, null, metadata !127, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!127 = metadata !{metadata !98}
!128 = metadata !{i32 62, i32 157, metadata !68, null}
!129 = metadata !{i32 790531, metadata !124, metadata !"args.y", null, i32 62, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!130 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ]
!131 = metadata !{i32 786438, null, metadata !"", metadata !69, i32 17, i64 32, i64 32, i32 0, i32 0, null, metadata !132, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!132 = metadata !{metadata !100}
!133 = metadata !{i32 790531, metadata !124, metadata !"args.z", null, i32 62, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!134 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !135} ; [ DW_TAG_pointer_type ]
!135 = metadata !{i32 786438, null, metadata !"", metadata !69, i32 17, i64 32, i64 32, i32 0, i32 0, null, metadata !136, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!136 = metadata !{metadata !101}
!137 = metadata !{i32 790531, metadata !138, metadata !"group_id.x", null, i32 27, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!138 = metadata !{i32 786689, metadata !139, metadata !"group_id", metadata !69, i32 16777243, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 786478, i32 0, null, metadata !"aesl_keep_name_0_group_id", metadata !"aesl_keep_name_0_group_id", metadata !"_ZN20aesl_keep_name_class25aesl_keep_name_0_group_idEP13three_tuple_t", metadata !69, i32 27, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !85, metadata !88, i32 27} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 27, i32 44, metadata !139, metadata !141}
!141 = metadata !{i32 69, i32 1, metadata !142, null}
!142 = metadata !{i32 786443, metadata !68, i32 63, i32 1, metadata !69, i32 1} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 790531, metadata !138, metadata !"group_id.y", null, i32 27, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!144 = metadata !{i32 790531, metadata !138, metadata !"group_id.z", null, i32 27, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!145 = metadata !{i32 790531, metadata !146, metadata !"global_offset.x", null, i32 33, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!146 = metadata !{i32 786689, metadata !147, metadata !"global_offset", metadata !69, i32 16777249, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 786478, i32 0, null, metadata !"aesl_keep_name_0_global_offset", metadata !"aesl_keep_name_0_global_offset", metadata !"_ZN20aesl_keep_name_class30aesl_keep_name_0_global_offsetEP13three_tuple_t", metadata !69, i32 33, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !90, metadata !88, i32 33} ; [ DW_TAG_subprogram ]
!148 = metadata !{i32 33, i32 49, metadata !147, metadata !149}
!149 = metadata !{i32 70, i32 1, metadata !142, null}
!150 = metadata !{i32 790531, metadata !146, metadata !"global_offset.y", null, i32 33, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!151 = metadata !{i32 790531, metadata !146, metadata !"global_offset.z", null, i32 33, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!152 = metadata !{i32 790531, metadata !153, metadata !"args.x", null, i32 39, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!153 = metadata !{i32 786689, metadata !154, metadata !"args", metadata !69, i32 16777255, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 786478, i32 0, null, metadata !"aesl_keep_name_0_args", metadata !"aesl_keep_name_0_args", metadata !"_ZN20aesl_keep_name_class21aesl_keep_name_0_argsEP10gpu_args_t", metadata !69, i32 39, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !91, metadata !88, i32 39} ; [ DW_TAG_subprogram ]
!155 = metadata !{i32 39, i32 37, metadata !154, metadata !156}
!156 = metadata !{i32 71, i32 1, metadata !142, null}
!157 = metadata !{i32 790531, metadata !153, metadata !"args.y", null, i32 39, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!158 = metadata !{i32 790531, metadata !153, metadata !"args.z", null, i32 39, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!159 = metadata !{i32 72, i32 1, metadata !142, null}
!160 = metadata !{i32 73, i32 1, metadata !142, null}
!161 = metadata !{i32 74, i32 1, metadata !142, null}
!162 = metadata !{i32 75, i32 1, metadata !142, null}
!163 = metadata !{i32 76, i32 1, metadata !142, null}
!164 = metadata !{i32 121, i32 3, metadata !165, null}
!165 = metadata !{i32 786443, metadata !142, metadata !166} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/opencl/aesl_gen_cu_body.inc", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db", null} ; [ DW_TAG_file_type ]
!167 = metadata !{i32 132, i32 3, metadata !165, null}
!168 = metadata !{i32 147, i32 3, metadata !165, null}
!169 = metadata !{i32 786689, metadata !170, metadata !"gmem", metadata !69, i32 16777268, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 786478, i32 0, metadata !69, metadata !"__AESL_call_work_item_NA", metadata !"__AESL_call_work_item_NA", metadata !"", metadata !69, i32 52, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !88, i32 53} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!172 = metadata !{null, metadata !72, metadata !173, metadata !94}
!173 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !174} ; [ DW_TAG_pointer_type ]
!174 = metadata !{i32 786454, null, metadata !"__spir_rt_info_t", metadata !69, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !175} ; [ DW_TAG_typedef ]
!175 = metadata !{i32 786434, null, metadata !"__spir_rt_info_tT", metadata !176, i32 120, i64 896, i64 64, i32 0, i32 0, null, metadata !177, i32 0, null, null} ; [ DW_TAG_class_type ]
!176 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/opencl/libspir_types.h", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db", null} ; [ DW_TAG_file_type ]
!177 = metadata !{metadata !178, metadata !179, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !191, metadata !194, metadata !195, metadata !196, metadata !198}
!178 = metadata !{i32 786445, metadata !175, metadata !"work_dim", metadata !176, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ]
!179 = metadata !{i32 786445, metadata !175, metadata !"global_size", metadata !176, i32 124, i64 96, i64 32, i64 32, i32 0, metadata !180} ; [ DW_TAG_member ]
!180 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !74, metadata !181, i32 0, i32 0} ; [ DW_TAG_array_type ]
!181 = metadata !{metadata !182}
!182 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!183 = metadata !{i32 786445, metadata !175, metadata !"global_id", metadata !176, i32 125, i64 96, i64 32, i64 128, i32 0, metadata !180} ; [ DW_TAG_member ]
!184 = metadata !{i32 786445, metadata !175, metadata !"local_size", metadata !176, i32 127, i64 96, i64 32, i64 224, i32 0, metadata !180} ; [ DW_TAG_member ]
!185 = metadata !{i32 786445, metadata !175, metadata !"local_id", metadata !176, i32 128, i64 96, i64 32, i64 320, i32 0, metadata !180} ; [ DW_TAG_member ]
!186 = metadata !{i32 786445, metadata !175, metadata !"num_groups", metadata !176, i32 130, i64 96, i64 32, i64 416, i32 0, metadata !180} ; [ DW_TAG_member ]
!187 = metadata !{i32 786445, metadata !175, metadata !"group_id", metadata !176, i32 131, i64 96, i64 32, i64 512, i32 0, metadata !180} ; [ DW_TAG_member ]
!188 = metadata !{i32 786445, metadata !175, metadata !"global_offset", metadata !176, i32 132, i64 96, i64 32, i64 608, i32 0, metadata !180} ; [ DW_TAG_member ]
!189 = metadata !{i32 786445, metadata !175, metadata !"pthread_barrier", metadata !176, i32 135, i64 32, i64 32, i64 704, i32 0, metadata !190} ; [ DW_TAG_member ]
!190 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!191 = metadata !{i32 786445, metadata !175, metadata !"barriertoscheduler", metadata !176, i32 138, i64 8, i64 8, i64 736, i32 0, metadata !192} ; [ DW_TAG_member ]
!192 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !193} ; [ DW_TAG_volatile_type ]
!193 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!194 = metadata !{i32 786445, metadata !175, metadata !"scheduler_context", metadata !176, i32 139, i64 32, i64 32, i64 768, i32 0, metadata !190} ; [ DW_TAG_member ]
!195 = metadata !{i32 786445, metadata !175, metadata !"pe_context", metadata !176, i32 140, i64 32, i64 32, i64 800, i32 0, metadata !190} ; [ DW_TAG_member ]
!196 = metadata !{i32 786445, metadata !175, metadata !"printf_buffer", metadata !176, i32 142, i64 64, i64 64, i64 832, i32 0, metadata !197} ; [ DW_TAG_member ]
!197 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!198 = metadata !{i32 786478, i32 0, metadata !175, metadata !"__spir_rt_info_tT", metadata !"__spir_rt_info_tT", metadata !"", metadata !176, i32 120, metadata !199, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !88, i32 120} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{null, metadata !201}
!201 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !175} ; [ DW_TAG_pointer_type ]
!202 = metadata !{i32 52, i32 90, metadata !170, null}
!203 = metadata !{i32 790531, metadata !204, metadata !"args.x", null, i32 52, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!204 = metadata !{i32 786689, metadata !170, metadata !"args", metadata !69, i32 50331700, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 52, i32 135, metadata !170, null}
!206 = metadata !{i32 790531, metadata !204, metadata !"args.y", null, i32 52, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!207 = metadata !{i32 790531, metadata !204, metadata !"args.z", null, i32 52, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!208 = metadata !{i32 54, i32 110, metadata !209, null}
!209 = metadata !{i32 786443, metadata !170, i32 53, i32 1, metadata !69, i32 0} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 786688, metadata !209, metadata !"arg_x", metadata !69, i32 54, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!211 = metadata !{i32 55, i32 110, metadata !209, null}
!212 = metadata !{i32 786688, metadata !209, metadata !"arg_y", metadata !69, i32 55, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 56, i32 110, metadata !209, null}
!214 = metadata !{i32 24, i32 9, metadata !215, null}
!215 = metadata !{i32 786443, metadata !216, i32 17, i32 5, metadata !218, i32 1} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 786443, metadata !217, i32 12, i32 1, metadata !218, i32 0} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 786478, i32 0, metadata !218, metadata !"gpu", metadata !"gpu", metadata !"", metadata !218, i32 11, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !88, i32 12} ; [ DW_TAG_subprogram ]
!218 = metadata !{i32 786473, metadata !"gpu.cl", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing", null} ; [ DW_TAG_file_type ]
!219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{null, metadata !221, metadata !221, metadata !221}
!221 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !222} ; [ DW_TAG_pointer_type ]
!222 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!223 = metadata !{i32 81, i32 1, metadata !224, null}
!224 = metadata !{i32 786443, metadata !142, metadata !69} ; [ DW_TAG_lexical_block ]
