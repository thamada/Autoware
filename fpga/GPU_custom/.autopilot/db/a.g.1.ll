; ModuleID = '/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir-unknown-linux-gnu"

%struct.__spir_rt_info_tT.6.8.11 = type { i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i8*, i1, i8*, i8*, i64 }
%struct.__spir_rt_info_tT.2.7.10 = type { i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i8*, i8, i8*, i8*, i64 }
%struct.three_tuple_t.9.12 = type { i32, i32, i32 }

@y0 = internal unnamed_addr global [16 x i32] zeroinitializer, align 4 ; [#uses=2 type=[16 x i32]*]
@x0 = internal unnamed_addr global [16 x i32] zeroinitializer, align 4 ; [#uses=2 type=[16 x i32]*]
@str = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@rt_info = internal unnamed_addr global %struct.__spir_rt_info_tT.6.8.11 zeroinitializer, align 8 ; [#uses=27 type=%struct.__spir_rt_info_tT.6.8.11*]
@memcpy_OC_gpu_OC_y0_OC_gmem.str = internal unnamed_addr constant [19 x i8] c"memcpy.gpu.y0.gmem\00" ; [#uses=1 type=[19 x i8]*]
@memcpy_OC_gpu_OC_x0_OC_gmem.str = internal unnamed_addr constant [19 x i8] c"memcpy.gpu.x0.gmem\00" ; [#uses=1 type=[19 x i8]*]
@gpu.str = internal unnamed_addr constant [4 x i8] c"gpu\00" ; [#uses=1 type=[4 x i8]*]
@burstread_OC_region.str = internal unnamed_addr constant [17 x i8] c"burstread.region\00" ; [#uses=4 type=[17 x i8]*]
@__spir_rt_info = global %struct.__spir_rt_info_tT.2.7.10* null, align 4 ; [#uses=0 type=%struct.__spir_rt_info_tT.2.7.10**]
@XCL_WG_DIM_X.str = internal unnamed_addr constant [13 x i8] c"XCL_WG_DIM_X\00" ; [#uses=1 type=[13 x i8]*]
@.str9 = private unnamed_addr constant [16 x i8] c"global_offset.y\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str8 = private unnamed_addr constant [16 x i8] c"global_offset.x\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str7 = private unnamed_addr constant [2 x i8] c"z\00", align 1 ; [#uses=1 type=[2 x i8]*]
@.str6 = private unnamed_addr constant [2 x i8] c"y\00", align 1 ; [#uses=1 type=[2 x i8]*]
@.str5 = private unnamed_addr constant [2 x i8] c"x\00", align 1 ; [#uses=1 type=[2 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"member_name\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"control\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str14 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str13 = private unnamed_addr constant [11 x i8] c"group_id.z\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"group_id.y\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str11 = private unnamed_addr constant [11 x i8] c"group_id.x\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str10 = private unnamed_addr constant [16 x i8] c"global_offset.z\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=11]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @gpu(i32 addrspace(1)* %gmem, %struct.three_tuple_t.9.12* %group_id, %struct.three_tuple_t.9.12* %global_offset, %struct.three_tuple_t.9.12* %args) {
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @gpu.str)
  %.0 = alloca %struct.__spir_rt_info_tT.2.7.10, align 8 ; [#uses=27 type=%struct.__spir_rt_info_tT.2.7.10*]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %gmem}, i64 0, metadata !105), !dbg !106 ; [debug line = 62:84] [debug variable = gmem]
  call void @llvm.dbg.value(metadata !{%struct.three_tuple_t.9.12* %group_id}, i64 0, metadata !107), !dbg !108 ; [debug line = 62:105] [debug variable = group_id]
  call void @llvm.dbg.value(metadata !{%struct.three_tuple_t.9.12* %global_offset}, i64 0, metadata !109), !dbg !110 ; [debug line = 62:130] [debug variable = global_offset]
  call void @llvm.dbg.value(metadata !{%struct.three_tuple_t.9.12* %args}, i64 0, metadata !111), !dbg !112 ; [debug line = 62:157] [debug variable = args]
  call void @llvm.dbg.value(metadata !{%struct.three_tuple_t.9.12* %group_id}, i64 0, metadata !113), !dbg !114 ; [debug line = 27:44@69:1] [debug variable = group_id]
  %group_id.addr = getelementptr inbounds %struct.three_tuple_t.9.12* %group_id, i32 0, i32 0, !dbg !117 ; [#uses=2 type=i32*] [debug line = 28:5@69:1]
  call void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str11, i32 0, i32 0), i32* %group_id.addr) nounwind, !dbg !117 ; [debug line = 28:5@69:1]
  %group_id.addr.1 = getelementptr inbounds %struct.three_tuple_t.9.12* %group_id, i32 0, i32 1, !dbg !119 ; [#uses=2 type=i32*] [debug line = 29:5@69:1]
  call void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i32* %group_id.addr.1) nounwind, !dbg !119 ; [debug line = 29:5@69:1]
  %group_id.addr.2 = getelementptr inbounds %struct.three_tuple_t.9.12* %group_id, i32 0, i32 2, !dbg !120 ; [#uses=2 type=i32*] [debug line = 30:5@69:1]
  call void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str13, i32 0, i32 0), i32* %group_id.addr.2) nounwind, !dbg !120 ; [debug line = 30:5@69:1]
  call void @llvm.dbg.value(metadata !{%struct.three_tuple_t.9.12* %global_offset}, i64 0, metadata !121), !dbg !122 ; [debug line = 33:49@70:1] [debug variable = global_offset]
  %global_offset.addr = getelementptr inbounds %struct.three_tuple_t.9.12* %global_offset, i32 0, i32 0, !dbg !124 ; [#uses=2 type=i32*] [debug line = 34:5@70:1]
  call void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str8, i32 0, i32 0), i32* %global_offset.addr) nounwind, !dbg !124 ; [debug line = 34:5@70:1]
  %global_offset.addr.1 = getelementptr inbounds %struct.three_tuple_t.9.12* %global_offset, i32 0, i32 1, !dbg !126 ; [#uses=2 type=i32*] [debug line = 35:5@70:1]
  call void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str9, i32 0, i32 0), i32* %global_offset.addr.1) nounwind, !dbg !126 ; [debug line = 35:5@70:1]
  %global_offset.addr.2 = getelementptr inbounds %struct.three_tuple_t.9.12* %global_offset, i32 0, i32 2, !dbg !127 ; [#uses=2 type=i32*] [debug line = 36:5@70:1]
  call void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str10, i32 0, i32 0), i32* %global_offset.addr.2) nounwind, !dbg !127 ; [debug line = 36:5@70:1]
  call void @llvm.dbg.value(metadata !{%struct.three_tuple_t.9.12* %args}, i64 0, metadata !128), !dbg !129 ; [debug line = 39:37@71:1] [debug variable = args]
  %args.addr = getelementptr inbounds %struct.three_tuple_t.9.12* %args, i32 0, i32 0, !dbg !131 ; [#uses=2 type=i32*] [debug line = 40:5@71:1]
  call void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i32* %args.addr) nounwind, !dbg !131 ; [debug line = 40:5@71:1]
  %args.addr.1 = getelementptr inbounds %struct.three_tuple_t.9.12* %args, i32 0, i32 1, !dbg !133 ; [#uses=2 type=i32*] [debug line = 41:5@71:1]
  call void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i32* %args.addr.1) nounwind, !dbg !133 ; [debug line = 41:5@71:1]
  %args.addr.2 = getelementptr inbounds %struct.three_tuple_t.9.12* %args, i32 0, i32 2, !dbg !134 ; [#uses=2 type=i32*] [debug line = 42:5@71:1]
  call void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i32* %args.addr.2) nounwind, !dbg !134 ; [debug line = 42:5@71:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 addrspace(1)* %gmem, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 128, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !135 ; [debug line = 72:1]
  call void (...)* @_ssdm_op_SpecInterface(%struct.three_tuple_t.9.12* %group_id, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !136 ; [debug line = 73:1]
  call void (...)* @_ssdm_op_SpecInterface(%struct.three_tuple_t.9.12* %global_offset, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !137 ; [debug line = 74:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !138 ; [debug line = 75:1]
  call void (...)* @_ssdm_op_SpecInterface(%struct.three_tuple_t.9.12* %args, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !139 ; [debug line = 76:1]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 0), align 8, !dbg !140 ; [debug line = 54:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 1, i32 0), align 4, !dbg !142 ; [debug line = 63:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 1, i32 1), align 4, !dbg !143 ; [debug line = 64:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 1, i32 2), align 4, !dbg !144 ; [debug line = 65:3]
  store i32 16, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 3, i32 0), align 4, !dbg !145 ; [debug line = 70:3]
  store i32 1, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 3, i32 1), align 4, !dbg !146 ; [debug line = 79:3]
  store i32 1, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 3, i32 2), align 4, !dbg !147 ; [debug line = 88:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 4, i32 0), align 8, !dbg !148 ; [debug line = 103:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 4, i32 1), align 4, !dbg !149 ; [debug line = 104:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 4, i32 2), align 8, !dbg !150 ; [debug line = 105:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 5, i32 0), align 4, !dbg !151 ; [debug line = 114:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 5, i32 1), align 4, !dbg !152 ; [debug line = 115:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 5, i32 2), align 4, !dbg !153 ; [debug line = 116:3]
  %group_id.load = load i32* %group_id.addr, align 4, !dbg !154 ; [#uses=6 type=i32] [debug line = 121:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %group_id.load)
  store i32 %group_id.load, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 6, i32 0), align 8, !dbg !154 ; [debug line = 121:3]
  %group_id.load.1 = load i32* %group_id.addr.1, align 4, !dbg !155 ; [#uses=6 type=i32] [debug line = 122:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %group_id.load.1)
  store i32 %group_id.load.1, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 6, i32 1), align 4, !dbg !155 ; [debug line = 122:3]
  %group_id.load.2 = load i32* %group_id.addr.2, align 4, !dbg !156 ; [#uses=6 type=i32] [debug line = 123:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %group_id.load.2)
  store i32 %group_id.load.2, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 6, i32 2), align 8, !dbg !156 ; [debug line = 123:3]
  %global_offset.load = load i32* %global_offset.addr, align 4, !dbg !157 ; [#uses=6 type=i32] [debug line = 132:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %global_offset.load)
  store i32 %global_offset.load, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 7, i32 0), align 4, !dbg !157 ; [debug line = 132:3]
  %global_offset.load.1 = load i32* %global_offset.addr.1, align 4, !dbg !158 ; [#uses=6 type=i32] [debug line = 133:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %global_offset.load.1)
  store i32 %global_offset.load.1, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 7, i32 1), align 4, !dbg !158 ; [debug line = 133:3]
  %global_offset.load.2 = load i32* %global_offset.addr.2, align 4, !dbg !159 ; [#uses=6 type=i32] [debug line = 134:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %global_offset.load.2)
  store i32 %global_offset.load.2, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 7, i32 2), align 4, !dbg !159 ; [debug line = 134:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %group_id.load)
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 16)
  %tmp = shl i32 %group_id.load, 4, !dbg !160     ; [#uses=1 type=i32] [debug line = 147:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %global_offset.load)
  %tmp.1 = add i32 %global_offset.load, %tmp, !dbg !160 ; [#uses=3 type=i32] [debug line = 147:3]
  store i32 %tmp.1, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 2, i32 0), align 8, !dbg !160 ; [debug line = 147:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %group_id.load.1)
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 1)
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %global_offset.load.1)
  %tmp.2 = add i32 %global_offset.load.1, %group_id.load.1, !dbg !161 ; [#uses=3 type=i32] [debug line = 148:3]
  store i32 %tmp.2, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 2, i32 1), align 4, !dbg !161 ; [debug line = 148:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %group_id.load.2)
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 1)
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %global_offset.load.2)
  %tmp.3 = add i32 %global_offset.load.2, %group_id.load.2, !dbg !162 ; [#uses=3 type=i32] [debug line = 149:3]
  store i32 %tmp.3, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 2, i32 2), align 8, !dbg !162 ; [debug line = 149:3]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %gmem}, i64 0, metadata !163), !dbg !164 ; [debug line = 52:90] [debug variable = gmem]
  call void @llvm.dbg.value(metadata !{%struct.three_tuple_t.9.12* %args}, i64 0, metadata !165), !dbg !166 ; [debug line = 52:135] [debug variable = args]
  %args.load = load i32* %args.addr, align 4, !dbg !167 ; [#uses=2 type=i32] [debug line = 54:110]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %args.load)
  %tmp.4 = lshr i32 %args.load, 2, !dbg !167      ; [#uses=1 type=i32] [debug line = 54:110]
  %arg_x = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %tmp.4, !dbg !167 ; [#uses=4 type=i32 addrspace(1)*] [debug line = 54:110]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %arg_x}, i64 0, metadata !169), !dbg !167 ; [debug line = 54:110] [debug variable = arg_x]
  %args.load.1 = load i32* %args.addr.1, align 4, !dbg !170 ; [#uses=2 type=i32] [debug line = 55:110]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %args.load.1)
  %tmp.5 = lshr i32 %args.load.1, 2, !dbg !170    ; [#uses=1 type=i32] [debug line = 55:110]
  %arg_y = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %tmp.5, !dbg !170 ; [#uses=4 type=i32 addrspace(1)*] [debug line = 55:110]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %arg_y}, i64 0, metadata !171), !dbg !170 ; [debug line = 55:110] [debug variable = arg_y]
  %args.load.2 = load i32* %args.addr.2, align 4, !dbg !172 ; [#uses=2 type=i32] [debug line = 56:110]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %args.load.2)
  %tmp.6 = lshr i32 %args.load.2, 2, !dbg !172    ; [#uses=1 type=i32] [debug line = 56:110]
  %.0.addr = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 0)
  store volatile i32 0, i32* %.0.addr, align 8
  %.0.addr.1 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 1, i32 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 0)
  store volatile i32 0, i32* %.0.addr.1, align 4
  %.0.addr.2 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 1, i32 1 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 0)
  store volatile i32 0, i32* %.0.addr.2, align 4
  %.0.addr.3 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 1, i32 2 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 0)
  store volatile i32 0, i32* %.0.addr.3, align 4
  %.0.addr.4 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 2, i32 0 ; [#uses=2 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.1)
  store volatile i32 %tmp.1, i32* %.0.addr.4, align 8
  %.0.addr.5 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 2, i32 1 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.2)
  store volatile i32 %tmp.2, i32* %.0.addr.5, align 4
  %.0.addr.6 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 2, i32 2 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.3)
  store volatile i32 %tmp.3, i32* %.0.addr.6, align 8
  %.0.addr.7 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 3, i32 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 16)
  store volatile i32 16, i32* %.0.addr.7, align 4
  %.0.addr.8 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 3, i32 1 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 1)
  store volatile i32 1, i32* %.0.addr.8, align 4
  %.0.addr.9 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 3, i32 2 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 1)
  store volatile i32 1, i32* %.0.addr.9, align 4
  %.0.addr.10 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 4, i32 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 0)
  store volatile i32 0, i32* %.0.addr.10, align 8
  %.0.addr.11 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 4, i32 1 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 0)
  store volatile i32 0, i32* %.0.addr.11, align 4
  %.0.addr.12 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 4, i32 2 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 0)
  store volatile i32 0, i32* %.0.addr.12, align 8
  %.0.addr.13 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 5, i32 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 0)
  store volatile i32 0, i32* %.0.addr.13, align 4
  %.0.addr.14 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 5, i32 1 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 0)
  store volatile i32 0, i32* %.0.addr.14, align 4
  %.0.addr.15 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 5, i32 2 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 0)
  store volatile i32 0, i32* %.0.addr.15, align 4
  %.0.addr.16 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 6, i32 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %group_id.load)
  store volatile i32 %group_id.load, i32* %.0.addr.16, align 8
  %.0.addr.17 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 6, i32 1 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %group_id.load.1)
  store volatile i32 %group_id.load.1, i32* %.0.addr.17, align 4
  %.0.addr.18 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 6, i32 2 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %group_id.load.2)
  store volatile i32 %group_id.load.2, i32* %.0.addr.18, align 8
  %.0.addr.19 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 7, i32 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %global_offset.load)
  store volatile i32 %global_offset.load, i32* %.0.addr.19, align 4
  %.0.addr.20 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 7, i32 1 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %global_offset.load.1)
  store volatile i32 %global_offset.load.1, i32* %.0.addr.20, align 4
  %.0.addr.21 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 7, i32 2 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %global_offset.load.2)
  store volatile i32 %global_offset.load.2, i32* %.0.addr.21, align 4
  %.0.addr.22 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 8 ; [#uses=1 type=i8**]
  %rt_info.load = load i8** getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 8), align 8 ; [#uses=1 type=i8*]
  store volatile i8* %rt_info.load, i8** %.0.addr.22, align 8
  %.0.addr.23 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 9 ; [#uses=1 type=i8*]
  %rt_info.load.1 = load i1* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 9), align 4 ; [#uses=2 type=i1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i1 %rt_info.load.1)
  %tmp.7 = zext i1 %rt_info.load.1 to i8          ; [#uses=1 type=i8]
  store volatile i8 %tmp.7, i8* %.0.addr.23, align 4
  %.0.addr.24 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 10 ; [#uses=1 type=i8**]
  %rt_info.load.2 = load i8** getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 10), align 8 ; [#uses=1 type=i8*]
  store volatile i8* %rt_info.load.2, i8** %.0.addr.24, align 8
  %.0.addr.25 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 11 ; [#uses=1 type=i8**]
  %rt_info.load.3 = load i8** getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 11), align 4 ; [#uses=1 type=i8*]
  store volatile i8* %rt_info.load.3, i8** %.0.addr.25, align 4
  %.0.addr.26 = getelementptr %struct.__spir_rt_info_tT.2.7.10* %.0, i32 0, i32 12 ; [#uses=1 type=i64*]
  %rt_info.load.4 = load i64* getelementptr inbounds (%struct.__spir_rt_info_tT.6.8.11* @rt_info, i32 0, i32 12), align 8 ; [#uses=2 type=i64]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %rt_info.load.4)
  store volatile i64 %rt_info.load.4, i64* %.0.addr.26, align 8
  call void (...)* @_ssdm_xcl_PointerMap(i32 addrspace(1)* %arg_x, i32 0, i32 0, i32 4) nounwind
  br label %burst.rd.header

burst.rd.body1:                                   ; preds = %burst.rd.header
  %burstread.rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region.str) ; [#uses=1 type=i32]
  %1 = call i32 (...)* @_ssdm_op_SpecBurst(i32 addrspace(1)* %arg_x, i32 1, i32 16, i32 1) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str14) ; [#uses=0 type=i32]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopName([19 x i8]* @memcpy_OC_gpu_OC_x0_OC_gmem.str) ; [#uses=0 type=i32]
  %isIter0 = icmp eq i32 %indvar, 0               ; [#uses=1 type=i1]
  br i1 %isIter0, label %burst.rd.body2, label %burst.rd.body3

burst.rd.body2:                                   ; preds = %burst.rd.body1
  %arg_x.i.0.req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)* %arg_x, i32 16) ; [#uses=0 type=i1]
  br label %burst.rd.body3

burst.rd.body3:                                   ; preds = %burst.rd.body2, %burst.rd.body1
  %arg_x.read = call i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)* %arg_x) ; [#uses=1 type=i32]
  %x0.addr = getelementptr [16 x i32]* @x0, i32 0, i32 %indvar ; [#uses=1 type=i32*]
  store i32 %arg_x.read, i32* %x0.addr, align 4
  %burstread.rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region.str, i32 %burstread.rbegin) ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body3, %0
  %indvar = phi i32 [ %indvar.next, %burst.rd.body3 ], [ 0, %0 ] ; [#uses=4 type=i32]
  %indvar.next = add i32 %indvar, 1               ; [#uses=1 type=i32]
  %exitcond = icmp eq i32 %indvar, 16             ; [#uses=1 type=i1]
  br i1 %exitcond, label %burst.rd.end, label %burst.rd.body1

burst.rd.end:                                     ; preds = %burst.rd.header
  call void (...)* @_ssdm_xcl_PointerMap(i32 addrspace(1)* %arg_y, i32 0, i32 0, i32 4) nounwind
  br label %burst.rd.header6

burst.rd.body13:                                  ; preds = %burst.rd.header6
  %burstread.rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region.str) ; [#uses=1 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecBurst(i32 addrspace(1)* %arg_y, i32 1, i32 16, i32 1) ; [#uses=0 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str15) ; [#uses=0 type=i32]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopName([19 x i8]* @memcpy_OC_gpu_OC_y0_OC_gmem.str) ; [#uses=0 type=i32]
  %isIter = icmp eq i32 %indvar7, 0               ; [#uses=1 type=i1]
  br i1 %isIter, label %burst.rd.body24, label %burst.rd.body35

burst.rd.body24:                                  ; preds = %burst.rd.body13
  %arg_y.i.0.req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)* %arg_y, i32 16) ; [#uses=0 type=i1]
  br label %burst.rd.body35

burst.rd.body35:                                  ; preds = %burst.rd.body24, %burst.rd.body13
  %arg_y.read = call i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)* %arg_y) ; [#uses=1 type=i32]
  %y0.addr = getelementptr [16 x i32]* @y0, i32 0, i32 %indvar7 ; [#uses=1 type=i32*]
  store i32 %arg_y.read, i32* %y0.addr, align 4
  %burstread.rend12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region.str, i32 %burstread.rbegin1) ; [#uses=0 type=i32]
  br label %burst.rd.header6

burst.rd.header6:                                 ; preds = %burst.rd.body35, %burst.rd.end
  %indvar7 = phi i32 [ %indvar.next8, %burst.rd.body35 ], [ 0, %burst.rd.end ] ; [#uses=4 type=i32]
  %indvar.next8 = add i32 %indvar7, 1             ; [#uses=1 type=i32]
  %exitcond9 = icmp eq i32 %indvar7, 16           ; [#uses=1 type=i1]
  br i1 %exitcond9, label %for.header.i.i.preheader, label %burst.rd.body13

for.header.i.i.preheader:                         ; preds = %burst.rd.header6
  %.0.load = load i32* %.0.addr.4, align 8        ; [#uses=2 type=i32]
  br label %for.header.i.i

for.header.i.i:                                   ; preds = %_Z21async_work_grou3.rentry.i.i, %for.header.i.i.preheader
  %indvar.reg2mem40.0.i.i = phi i32 [ %indvar.inc.reg2mem.0.i.i, %_Z21async_work_grou3.rentry.i.i ], [ 0, %for.header.i.i.preheader ] ; [#uses=4 type=i32]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @XCL_WG_DIM_X.str) nounwind ; [#uses=0 type=i32]
  %tmp.8 = icmp eq i32 %indvar.reg2mem40.0.i.i, 16 ; [#uses=1 type=i1]
  br i1 %tmp.8, label %__AESL_call_work_item_NA5.exit, label %_Z21async_work_grou3.rentry.i.i

_Z21async_work_grou3.rentry.i.i:                  ; preds = %for.header.i.i
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %.0.load)
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %indvar.reg2mem40.0.i.i)
  %tmp.9 = add i32 %indvar.reg2mem40.0.i.i, %.0.load ; [#uses=3 type=i32]
  %x0.addr.1 = getelementptr inbounds [16 x i32]* @x0, i32 0, i32 %tmp.9, !dbg !173 ; [#uses=1 type=i32*] [debug line = 24:9]
  %x0.load = load i32* %x0.addr.1, align 4, !dbg !173 ; [#uses=2 type=i32] [debug line = 24:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %x0.load)
  %y0.addr.1 = getelementptr inbounds [16 x i32]* @y0, i32 0, i32 %tmp.9, !dbg !173 ; [#uses=1 type=i32*] [debug line = 24:9]
  %y0.load = load i32* %y0.addr.1, align 4, !dbg !173 ; [#uses=2 type=i32] [debug line = 24:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %y0.load)
  %tmp.10 = sub nsw i32 %x0.load, %y0.load, !dbg !173 ; [#uses=1 type=i32] [debug line = 24:9]
  %arg_z.i.0.sum = add i32 %tmp.9, %tmp.6, !dbg !173 ; [#uses=1 type=i32] [debug line = 24:9]
  %gmem.addr = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %arg_z.i.0.sum, !dbg !173, !xcl.port !98 ; [#uses=1 type=i32 addrspace(1)*] [debug line = 24:9]
  store i32 %tmp.10, i32 addrspace(1)* %gmem.addr, align 4, !dbg !173 ; [debug line = 24:9]
  %indvar.inc.reg2mem.0.i.i = add i32 %indvar.reg2mem40.0.i.i, 1 ; [#uses=1 type=i32]
  %8 = call i32 (...)* @_ssdm_SpecLoopFlatten(i32 0, [1 x i8]* @str) nounwind ; [#uses=0 type=i32]
  br label %for.header.i.i

__AESL_call_work_item_NA5.exit:                   ; preds = %for.header.i.i
  ret void, !dbg !176                             ; [debug line = 81:1]
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
declare i32 @_ssdm_op_SpecLoopName(...)

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=9]
declare void @_ssdm_op_SpecExt(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecBurst(...)

; [#uses=2]
declare i1 @_ssdm_op_ReadReq.m_axi.i32P(i32 addrspace(1)*, i32)

; [#uses=2]
declare i32 @_ssdm_op_Read.m_axi.i32P(i32 addrspace(1)*)

; [#uses=1]
declare i32 @_ssdm_SpecLoopFlatten(...)

; [#uses=46]
declare void @_ssdm_SpecKeepArrayLoad(...)

!llvm.dbg.cu = !{!0, !20}
!hls.encrypted.func = !{}
!xcl.libspir = !{!95}
!xcl.reqd_rt_info = !{!96}
!xcl.portmap = !{!97, !99, !100}
!axi4.master.portmap = !{!101}
!xcl.portlist = !{!98, !102}
!xcl.lmem_info = !{!103, !104}
!xcl.progvar_info = !{}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db/gpu.pragma.2.cl", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"gpu", metadata !"gpu", metadata !"", metadata !6, i32 11, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 12} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"gpu.cl", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15, metadata !19}
!15 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x0", metadata !"x0", metadata !"", metadata !6, i32 13, metadata !16, i32 1, i32 1, [16 x i32]* @x0} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !10, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y0", metadata !"y0", metadata !"", metadata !6, i32 14, metadata !16, i32 1, i32 1, [16 x i32]* @y0} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786449, i32 0, i32 4, metadata !"aesl_gen-tmpA.cpp", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !21, metadata !91} ; [ DW_TAG_compile_unit ]
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !23, metadata !85, metadata !88, metadata !89, metadata !90}
!23 = metadata !{i32 786478, i32 0, metadata !24, metadata !"__AESL_call_work_item_NA", metadata !"__AESL_call_work_item_NA", metadata !"", metadata !24, i32 52, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 53} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786473, metadata !"gpu_compute_unit", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db", null} ; [ DW_TAG_file_type ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{null, metadata !27, metadata !30, metadata !59}
!27 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_volatile_type ]
!29 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ]
!31 = metadata !{i32 786454, null, metadata !"__spir_rt_info_t", metadata !24, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ]
!32 = metadata !{i32 786434, null, metadata !"__spir_rt_info_tT", metadata !33, i32 120, i64 896, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_class_type ]
!33 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/opencl/libspir_types.h", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db", null} ; [ DW_TAG_file_type ]
!34 = metadata !{metadata !35, metadata !36, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !48, metadata !51, metadata !52, metadata !53, metadata !55}
!35 = metadata !{i32 786445, metadata !32, metadata !"work_dim", metadata !33, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ]
!36 = metadata !{i32 786445, metadata !32, metadata !"global_size", metadata !33, i32 124, i64 96, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ]
!37 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !29, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!40 = metadata !{i32 786445, metadata !32, metadata !"global_id", metadata !33, i32 125, i64 96, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ]
!41 = metadata !{i32 786445, metadata !32, metadata !"local_size", metadata !33, i32 127, i64 96, i64 32, i64 224, i32 0, metadata !37} ; [ DW_TAG_member ]
!42 = metadata !{i32 786445, metadata !32, metadata !"local_id", metadata !33, i32 128, i64 96, i64 32, i64 320, i32 0, metadata !37} ; [ DW_TAG_member ]
!43 = metadata !{i32 786445, metadata !32, metadata !"num_groups", metadata !33, i32 130, i64 96, i64 32, i64 416, i32 0, metadata !37} ; [ DW_TAG_member ]
!44 = metadata !{i32 786445, metadata !32, metadata !"group_id", metadata !33, i32 131, i64 96, i64 32, i64 512, i32 0, metadata !37} ; [ DW_TAG_member ]
!45 = metadata !{i32 786445, metadata !32, metadata !"global_offset", metadata !33, i32 132, i64 96, i64 32, i64 608, i32 0, metadata !37} ; [ DW_TAG_member ]
!46 = metadata !{i32 786445, metadata !32, metadata !"pthread_barrier", metadata !33, i32 135, i64 32, i64 32, i64 704, i32 0, metadata !47} ; [ DW_TAG_member ]
!47 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!48 = metadata !{i32 786445, metadata !32, metadata !"barriertoscheduler", metadata !33, i32 138, i64 8, i64 8, i64 736, i32 0, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_volatile_type ]
!50 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!51 = metadata !{i32 786445, metadata !32, metadata !"scheduler_context", metadata !33, i32 139, i64 32, i64 32, i64 768, i32 0, metadata !47} ; [ DW_TAG_member ]
!52 = metadata !{i32 786445, metadata !32, metadata !"pe_context", metadata !33, i32 140, i64 32, i64 32, i64 800, i32 0, metadata !47} ; [ DW_TAG_member ]
!53 = metadata !{i32 786445, metadata !32, metadata !"printf_buffer", metadata !33, i32 142, i64 64, i64 64, i64 832, i32 0, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!55 = metadata !{i32 786478, i32 0, metadata !32, metadata !"__spir_rt_info_tT", metadata !"__spir_rt_info_tT", metadata !"", metadata !33, i32 120, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !11, i32 120} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{null, metadata !58}
!58 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !32} ; [ DW_TAG_pointer_type ]
!59 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ]
!60 = metadata !{i32 786454, null, metadata !"gpu_args_t", metadata !24, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ]
!61 = metadata !{i32 786434, null, metadata !"", metadata !24, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !62, i32 0, null, null} ; [ DW_TAG_class_type ]
!62 = metadata !{metadata !63, metadata !65, metadata !66, metadata !67}
!63 = metadata !{i32 786445, metadata !61, metadata !"x", metadata !24, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ]
!64 = metadata !{i32 786454, null, metadata !"__spir_size_t", metadata !24, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!65 = metadata !{i32 786445, metadata !61, metadata !"y", metadata !24, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !64} ; [ DW_TAG_member ]
!66 = metadata !{i32 786445, metadata !61, metadata !"z", metadata !24, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !64} ; [ DW_TAG_member ]
!67 = metadata !{i32 786474, metadata !61, null, metadata !24, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_friend ]
!68 = metadata !{i32 786434, null, metadata !"aesl_keep_name_class", metadata !24, i32 24, i64 8, i64 8, i32 0, i32 0, null, metadata !69, i32 0, null, null} ; [ DW_TAG_class_type ]
!69 = metadata !{metadata !70, metadata !81, metadata !82}
!70 = metadata !{i32 786478, i32 0, metadata !68, metadata !"aesl_keep_name_0_group_id", metadata !"aesl_keep_name_0_group_id", metadata !"_ZN20aesl_keep_name_class25aesl_keep_name_0_group_idEP13three_tuple_t", metadata !24, i32 27, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 27} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !73}
!73 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786454, null, metadata !"three_tuple_t", metadata !24, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ]
!75 = metadata !{i32 786434, null, metadata !"", metadata !24, i32 10, i64 96, i64 32, i32 0, i32 0, null, metadata !76, i32 0, null, null} ; [ DW_TAG_class_type ]
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80}
!77 = metadata !{i32 786445, metadata !75, metadata !"x", metadata !24, i32 11, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ]
!78 = metadata !{i32 786445, metadata !75, metadata !"y", metadata !24, i32 12, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ]
!79 = metadata !{i32 786445, metadata !75, metadata !"z", metadata !24, i32 13, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ]
!80 = metadata !{i32 786474, metadata !75, null, metadata !24, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_friend ]
!81 = metadata !{i32 786478, i32 0, metadata !68, metadata !"aesl_keep_name_0_global_offset", metadata !"aesl_keep_name_0_global_offset", metadata !"_ZN20aesl_keep_name_class30aesl_keep_name_0_global_offsetEP13three_tuple_t", metadata !24, i32 33, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 33} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786478, i32 0, metadata !68, metadata !"aesl_keep_name_0_args", metadata !"aesl_keep_name_0_args", metadata !"_ZN20aesl_keep_name_class21aesl_keep_name_0_argsEP10gpu_args_t", metadata !24, i32 39, metadata !83, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 39} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{null, metadata !59}
!85 = metadata !{i32 786478, i32 0, metadata !24, metadata !"__AESL_work_groupA", metadata !"__AESL_work_groupA", metadata !"", metadata !24, i32 62, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 63} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !27, metadata !73, metadata !73, metadata !59}
!88 = metadata !{i32 786478, i32 0, null, metadata !"aesl_keep_name_0_args", metadata !"aesl_keep_name_0_args", metadata !"_ZN20aesl_keep_name_class21aesl_keep_name_0_argsEP10gpu_args_t", metadata !24, i32 39, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !82, metadata !11, i32 39} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786478, i32 0, null, metadata !"aesl_keep_name_0_global_offset", metadata !"aesl_keep_name_0_global_offset", metadata !"_ZN20aesl_keep_name_class30aesl_keep_name_0_global_offsetEP13three_tuple_t", metadata !24, i32 33, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !81, metadata !11, i32 33} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786478, i32 0, null, metadata !"aesl_keep_name_0_group_id", metadata !"aesl_keep_name_0_group_id", metadata !"_ZN20aesl_keep_name_class25aesl_keep_name_0_group_idEP13three_tuple_t", metadata !24, i32 27, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !70, metadata !11, i32 27} ; [ DW_TAG_subprogram ]
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 786484, i32 0, metadata !85, metadata !"rt_info", metadata !"rt_info", metadata !"", metadata !94, i32 49, metadata !31, i32 1, i32 1, %struct.__spir_rt_info_tT.6.8.11* @rt_info} ; [ DW_TAG_variable ]
!94 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2016.4/common/technology/autopilot/opencl/aesl_gen_cu_body.inc", metadata !"/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db", null} ; [ DW_TAG_file_type ]
!95 = metadata !{metadata !"/opt/Xilinx/Vivado_HLS/2016.4/lnx64/lib/libspir-hls.a"}
!96 = metadata !{metadata !"gpu", metadata !"group_id", metadata !"global_offset"}
!97 = metadata !{metadata !"gpu", i32 0, metadata !98}
!98 = metadata !{metadata !"gpu", metadata !"gmem", metadata !"addressable", metadata !"master", i32 32}
!99 = metadata !{metadata !"gpu", i32 1, metadata !98}
!100 = metadata !{metadata !"gpu", i32 2, metadata !98}
!101 = metadata !{metadata !"gmem", metadata !"x", metadata !"", metadata !"y", metadata !"", metadata !"z", metadata !""}
!102 = metadata !{metadata !"gpu", metadata !"control", metadata !"addressable", metadata !"slave", i32 32}
!103 = metadata !{metadata !"gpu", metadata !"gpu.x0", i32 64}
!104 = metadata !{metadata !"gpu", metadata !"gpu.y0", i32 64}
!105 = metadata !{i32 786689, metadata !85, metadata !"gmem", metadata !24, i32 16777278, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 62, i32 84, metadata !85, null}
!107 = metadata !{i32 786689, metadata !85, metadata !"group_id", metadata !24, i32 33554494, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 62, i32 105, metadata !85, null}
!109 = metadata !{i32 786689, metadata !85, metadata !"global_offset", metadata !24, i32 50331710, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 62, i32 130, metadata !85, null}
!111 = metadata !{i32 786689, metadata !85, metadata !"args", metadata !24, i32 67108926, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 62, i32 157, metadata !85, null}
!113 = metadata !{i32 786689, metadata !90, metadata !"group_id", metadata !24, i32 16777243, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 27, i32 44, metadata !90, metadata !115}
!115 = metadata !{i32 69, i32 1, metadata !116, null}
!116 = metadata !{i32 786443, metadata !85, i32 63, i32 1, metadata !24, i32 1} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 28, i32 5, metadata !118, metadata !115}
!118 = metadata !{i32 786443, metadata !90, i32 27, i32 54, metadata !24, i32 4} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 29, i32 5, metadata !118, metadata !115}
!120 = metadata !{i32 30, i32 5, metadata !118, metadata !115}
!121 = metadata !{i32 786689, metadata !89, metadata !"global_offset", metadata !24, i32 16777249, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 33, i32 49, metadata !89, metadata !123}
!123 = metadata !{i32 70, i32 1, metadata !116, null}
!124 = metadata !{i32 34, i32 5, metadata !125, metadata !123}
!125 = metadata !{i32 786443, metadata !89, i32 33, i32 64, metadata !24, i32 3} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 35, i32 5, metadata !125, metadata !123}
!127 = metadata !{i32 36, i32 5, metadata !125, metadata !123}
!128 = metadata !{i32 786689, metadata !88, metadata !"args", metadata !24, i32 16777255, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 39, i32 37, metadata !88, metadata !130}
!130 = metadata !{i32 71, i32 1, metadata !116, null}
!131 = metadata !{i32 40, i32 5, metadata !132, metadata !130}
!132 = metadata !{i32 786443, metadata !88, i32 39, i32 43, metadata !24, i32 2} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 41, i32 5, metadata !132, metadata !130}
!134 = metadata !{i32 42, i32 5, metadata !132, metadata !130}
!135 = metadata !{i32 72, i32 1, metadata !116, null}
!136 = metadata !{i32 73, i32 1, metadata !116, null}
!137 = metadata !{i32 74, i32 1, metadata !116, null}
!138 = metadata !{i32 75, i32 1, metadata !116, null}
!139 = metadata !{i32 76, i32 1, metadata !116, null}
!140 = metadata !{i32 54, i32 3, metadata !141, null}
!141 = metadata !{i32 786443, metadata !116, metadata !94} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 63, i32 3, metadata !141, null}
!143 = metadata !{i32 64, i32 3, metadata !141, null}
!144 = metadata !{i32 65, i32 3, metadata !141, null}
!145 = metadata !{i32 70, i32 3, metadata !141, null}
!146 = metadata !{i32 79, i32 3, metadata !141, null}
!147 = metadata !{i32 88, i32 3, metadata !141, null}
!148 = metadata !{i32 103, i32 3, metadata !141, null}
!149 = metadata !{i32 104, i32 3, metadata !141, null}
!150 = metadata !{i32 105, i32 3, metadata !141, null}
!151 = metadata !{i32 114, i32 3, metadata !141, null}
!152 = metadata !{i32 115, i32 3, metadata !141, null}
!153 = metadata !{i32 116, i32 3, metadata !141, null}
!154 = metadata !{i32 121, i32 3, metadata !141, null}
!155 = metadata !{i32 122, i32 3, metadata !141, null}
!156 = metadata !{i32 123, i32 3, metadata !141, null}
!157 = metadata !{i32 132, i32 3, metadata !141, null}
!158 = metadata !{i32 133, i32 3, metadata !141, null}
!159 = metadata !{i32 134, i32 3, metadata !141, null}
!160 = metadata !{i32 147, i32 3, metadata !141, null}
!161 = metadata !{i32 148, i32 3, metadata !141, null}
!162 = metadata !{i32 149, i32 3, metadata !141, null}
!163 = metadata !{i32 786689, metadata !23, metadata !"gmem", metadata !24, i32 16777268, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 52, i32 90, metadata !23, null}
!165 = metadata !{i32 786689, metadata !23, metadata !"args", metadata !24, i32 50331700, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 52, i32 135, metadata !23, null}
!167 = metadata !{i32 54, i32 110, metadata !168, null}
!168 = metadata !{i32 786443, metadata !23, i32 53, i32 1, metadata !24, i32 0} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 786688, metadata !168, metadata !"arg_x", metadata !24, i32 54, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 55, i32 110, metadata !168, null}
!171 = metadata !{i32 786688, metadata !168, metadata !"arg_y", metadata !24, i32 55, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 56, i32 110, metadata !168, null}
!173 = metadata !{i32 24, i32 9, metadata !174, null}
!174 = metadata !{i32 786443, metadata !175, i32 17, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 786443, metadata !5, i32 12, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 81, i32 1, metadata !177, null}
!177 = metadata !{i32 786443, metadata !116, metadata !24} ; [ DW_TAG_lexical_block ]
