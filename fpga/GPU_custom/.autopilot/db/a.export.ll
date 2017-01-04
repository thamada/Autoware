; ModuleID = '/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir-unknown-linux-gnu"

@y0 = internal unnamed_addr global [16 x i32] zeroinitializer, align 4
@x0 = internal unnamed_addr global [16 x i32] zeroinitializer, align 4
@memcpy_OC_gpu_OC_y0_s = internal unnamed_addr constant [19 x i8] c"memcpy.gpu.y0.gmem\00"
@memcpy_OC_gpu_OC_x0_s = internal unnamed_addr constant [19 x i8] c"memcpy.gpu.x0.gmem\00"
@gpu_str = internal unnamed_addr constant [4 x i8] c"gpu\00"
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@p_spir_rt_info_9 = global i8* null
@p_spir_rt_info_8 = global i8** null
@p_spir_rt_info_7 = global [3 x i32]* null
@p_spir_rt_info_6 = global [3 x i32]* null
@p_spir_rt_info_5 = global [3 x i32]* null
@p_spir_rt_info_4 = global [3 x i32]* null
@p_spir_rt_info_3 = global [3 x i32]* null
@p_spir_rt_info_2 = global [3 x i32]* null
@p_spir_rt_info_12 = global i64* null
@p_spir_rt_info_11 = global i8** null
@p_spir_rt_info_10 = global i8** null
@p_spir_rt_info_1 = global [3 x i32]* null
@p_spir_rt_info_0 = global i32* null
@XCL_WG_DIM_X_str = internal unnamed_addr constant [13 x i8] c"XCL_WG_DIM_X\00"
@p_str3 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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
  call void (...)* @_ssdm_op_SpecInterface(i32 addrspace(1)* %gmem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 128, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %group_id_x, i32* %group_id_y, i32* %group_id_z, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [8 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %global_offset_x, i32* %global_offset_y, i32* %global_offset_z, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [8 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [8 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %x, i32* %y, i32* %z, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [8 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %group_id_x_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %group_id_x)
  %global_offset_x_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %global_offset_x)
  %tmp = shl i32 %group_id_x_read, 4
  %x_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %x)
  %tmp_4 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %x_read, i32 2, i32 31)
  %tmp_2 = zext i30 %tmp_4 to i32
  %arg_x = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %tmp_2
  %y_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %y)
  %tmp_5 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %y_read, i32 2, i32 31)
  %tmp_3 = zext i30 %tmp_5 to i32
  %arg_y = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %tmp_3
  %z_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %z)
  %tmp_6 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %z_read, i32 2, i32 31)
  %tmp_7 = zext i30 %tmp_6 to i32
  br label %burst.rd.header

burst.rd.body1:                                   ; preds = %burst.rd.header
  %indvar_cast = zext i5 %indvar to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s)
  %empty_4 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str14)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopName([19 x i8]* @memcpy_OC_gpu_OC_x0_s)
  %isIter0 = icmp eq i5 %indvar, 0
  br i1 %isIter0, label %burst.rd.body2, label %burst.rd.body3

burst.rd.body2:                                   ; preds = %burst.rd.body1
  %arg_x_i_0_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)* %arg_x, i32 16)
  br label %burst.rd.body3

burst.rd.body3:                                   ; preds = %burst.rd.body2, %burst.rd.body1
  %arg_x_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)* %arg_x)
  %x0_addr = getelementptr [16 x i32]* @x0, i32 0, i32 %indvar_cast
  store i32 %arg_x_read, i32* %x0_addr, align 4
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body3, %0
  %indvar = phi i5 [ %indvar_next, %burst.rd.body3 ], [ 0, %0 ]
  %exitcond = icmp eq i5 %indvar, -16
  %indvar_next = add i5 %indvar, 1
  br i1 %exitcond, label %burst.rd.header6.preheader, label %burst.rd.body1

burst.rd.header6.preheader:                       ; preds = %burst.rd.header
  br label %burst.rd.header6

burst.rd.body13:                                  ; preds = %burst.rd.header6
  %indvar7_cast = zext i5 %indvar7 to i32
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str15)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopName([19 x i8]* @memcpy_OC_gpu_OC_y0_s)
  %isIter = icmp eq i5 %indvar7, 0
  br i1 %isIter, label %burst.rd.body24, label %burst.rd.body35

burst.rd.body24:                                  ; preds = %burst.rd.body13
  %arg_y_i_0_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)* %arg_y, i32 16)
  br label %burst.rd.body35

burst.rd.body35:                                  ; preds = %burst.rd.body24, %burst.rd.body13
  %arg_y_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)* %arg_y)
  %y0_addr = getelementptr [16 x i32]* @y0, i32 0, i32 %indvar7_cast
  store i32 %arg_y_read, i32* %y0_addr, align 4
  %burstread_rend12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin1)
  br label %burst.rd.header6

burst.rd.header6:                                 ; preds = %burst.rd.header6.preheader, %burst.rd.body35
  %indvar7 = phi i5 [ %indvar_next8, %burst.rd.body35 ], [ 0, %burst.rd.header6.preheader ]
  %exitcond9 = icmp eq i5 %indvar7, -16
  %indvar_next8 = add i5 %indvar7, 1
  br i1 %exitcond9, label %for.header.i.i.preheader, label %burst.rd.body13

for.header.i.i.preheader:                         ; preds = %burst.rd.header6
  %tmp_1 = add i32 %tmp, %global_offset_x_read
  %tmp_10 = add i32 %tmp_1, %tmp_7
  %gmem_addr = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %tmp_10, !xcl.port !3
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32 addrspace(1)* %gmem_addr, i32 16)
  br label %for.header.i.i

for.header.i.i:                                   ; preds = %for.header.i.i.preheader, %_Z21async_work_grou3.rentry.i.i
  %indvar_reg2mem40_0_i = phi i5 [ %indvar_inc_reg2mem, %_Z21async_work_grou3.rentry.i.i ], [ 0, %for.header.i.i.preheader ]
  %tmp_8 = icmp eq i5 %indvar_reg2mem40_0_i, -16
  %indvar_inc_reg2mem = add i5 %indvar_reg2mem40_0_i, 1
  br i1 %tmp_8, label %__AESL_call_work_item_NA5.exit, label %_Z21async_work_grou3.rentry.i.i

_Z21async_work_grou3.rentry.i.i:                  ; preds = %for.header.i.i
  %indvar_reg2mem40_0_i_1 = zext i5 %indvar_reg2mem40_0_i to i32
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @XCL_WG_DIM_X_str) nounwind
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %tmp1 = add i32 %tmp, %indvar_reg2mem40_0_i_1
  %tmp_9 = add i32 %tmp1, %global_offset_x_read
  %x0_addr_1 = getelementptr inbounds [16 x i32]* @x0, i32 0, i32 %tmp_9
  %x0_load = load i32* %x0_addr_1, align 4
  %y0_addr_1 = getelementptr inbounds [16 x i32]* @y0, i32 0, i32 %tmp_9
  %y0_load = load i32* %y0_addr_1, align 4
  %tmp_s = sub nsw i32 %x0_load, %y0_load
  call void @_ssdm_op_Write.m_axi.i32P(i32 addrspace(1)* %gmem_addr, i32 %tmp_s, i4 -1)
  br label %for.header.i.i

__AESL_call_work_item_NA5.exit:                   ; preds = %for.header.i.i
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32 addrspace(1)* %gmem_addr)
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32 addrspace(1)*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32 addrspace(1)*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i32P(i32 addrspace(1)*, i32, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecPipeline(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)*) {
entry:
  %empty = load i32 addrspace(1)* %0
  ret i32 %empty
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_11 = trunc i32 %empty to i30
  ret i30 %empty_11
}

declare i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone

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
