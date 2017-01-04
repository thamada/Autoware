; ModuleID = '/home/hamada/git/Autoware/fpga/modules/gpu_computing/proj/solution1/.autopilot/db/a.cl.0.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir-unknown-linux-gnu"

%struct.__spir_rt_info_tT.2 = type { i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i8*, i8, i8*, i8*, i64 }
%struct.__spir_rt_info_tT.6 = type { i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i8*, i1, i8*, i8*, i64 }
%struct.three_tuple_t = type { i32, i32, i32 }
%struct.gpu_args_t = type { i32, i32, i32 }

@gpu.x0 = internal  global [16 x i32] zeroinitializer, align 4 ; [#uses=2 type=[16 x i32] *]
@gpu.y0 = internal  global [16 x i32] zeroinitializer, align 4 ; [#uses=2 type=[16 x i32] *]
@XCL_WG_DIM_X.str = internal unnamed_addr constant [13 x i8] c"XCL_WG_DIM_X\00" ; [#uses=1 type=[13 x i8]*]
@str = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@__spir_rt_info = global %struct.__spir_rt_info_tT.2* null, align 4 ; [#uses=0 type=%struct.__spir_rt_info_tT.2**]
@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"control\00", align 1 ; [#uses=1 type=[8 x i8]*]
@rt_info = internal global %struct.__spir_rt_info_tT.6 zeroinitializer, align 8 ; [#uses=35 type=%struct.__spir_rt_info_tT.6*]
@.str4 = private unnamed_addr constant [12 x i8] c"member_name\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [2 x i8] c"x\00", align 1 ; [#uses=1 type=[2 x i8]*]
@.str6 = private unnamed_addr constant [2 x i8] c"y\00", align 1 ; [#uses=1 type=[2 x i8]*]
@.str7 = private unnamed_addr constant [2 x i8] c"z\00", align 1 ; [#uses=1 type=[2 x i8]*]
@.str8 = private unnamed_addr constant [16 x i8] c"global_offset.x\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str9 = private unnamed_addr constant [16 x i8] c"global_offset.y\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str10 = private unnamed_addr constant [16 x i8] c"global_offset.z\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str11 = private unnamed_addr constant [11 x i8] c"group_id.x\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"group_id.y\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str13 = private unnamed_addr constant [11 x i8] c"group_id.z\00", align 1 ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare  void @_ssdm_xcl_PointerMap(...)

; [#uses=2]
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopName(...)

; [#uses=1]
declare i32 @_ssdm_SpecLoopFlatten(...)

; [#uses=5]
declare  void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare  void @_ssdm_InlineRegion(...) nounwind

; [#uses=9]
declare  void @_ssdm_op_SpecExt(...) nounwind

; [#uses=0]
define  void @gpu(i32 addrspace(1)* %gmem, %struct.three_tuple_t* %group_id, %struct.three_tuple_t* %global_offset, %struct.gpu_args_t* %args) {
  %tid2743.i.i = alloca [3 x i32], align 4        ; [#uses=5 type=[3 x i32]*]
  %.0 = alloca %struct.__spir_rt_info_tT.2        ; [#uses=16 type=%struct.__spir_rt_info_tT.2*]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %gmem}, i64 0, metadata !105), !dbg !106 ; [debug line = 62:84] [debug variable = gmem]
  call void @llvm.dbg.value(metadata !{%struct.three_tuple_t* %group_id}, i64 0, metadata !107), !dbg !108 ; [debug line = 62:105] [debug variable = group_id]
  call void @llvm.dbg.value(metadata !{%struct.three_tuple_t* %global_offset}, i64 0, metadata !109), !dbg !110 ; [debug line = 62:130] [debug variable = global_offset]
  call void @llvm.dbg.value(metadata !{%struct.gpu_args_t* %args}, i64 0, metadata !111), !dbg !112 ; [debug line = 62:157] [debug variable = args]
  call void @llvm.dbg.value(metadata !{%struct.three_tuple_t* %group_id}, i64 0, metadata !113), !dbg !114 ; [debug line = 27:44@69:1] [debug variable = group_id]
  %1 = getelementptr inbounds %struct.three_tuple_t* %group_id, i32 0, i32 0, !dbg !117 ; [#uses=1 type=i32*] [debug line = 28:5@69:1]
  call  void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str11, i32 0, i32 0), i32* %1) nounwind, !dbg !117 ; [debug line = 28:5@69:1]
  %2 = getelementptr inbounds %struct.three_tuple_t* %group_id, i32 0, i32 1, !dbg !119 ; [#uses=1 type=i32*] [debug line = 29:5@69:1]
  call  void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i32* %2) nounwind, !dbg !119 ; [debug line = 29:5@69:1]
  %3 = getelementptr inbounds %struct.three_tuple_t* %group_id, i32 0, i32 2, !dbg !120 ; [#uses=1 type=i32*] [debug line = 30:5@69:1]
  call  void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str13, i32 0, i32 0), i32* %3) nounwind, !dbg !120 ; [debug line = 30:5@69:1]
  call void @llvm.dbg.value(metadata !{%struct.three_tuple_t* %global_offset}, i64 0, metadata !121), !dbg !122 ; [debug line = 33:49@70:1] [debug variable = global_offset]
  %4 = getelementptr inbounds %struct.three_tuple_t* %global_offset, i32 0, i32 0, !dbg !124 ; [#uses=1 type=i32*] [debug line = 34:5@70:1]
  call  void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str8, i32 0, i32 0), i32* %4) nounwind, !dbg !124 ; [debug line = 34:5@70:1]
  %5 = getelementptr inbounds %struct.three_tuple_t* %global_offset, i32 0, i32 1, !dbg !126 ; [#uses=1 type=i32*] [debug line = 35:5@70:1]
  call  void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str9, i32 0, i32 0), i32* %5) nounwind, !dbg !126 ; [debug line = 35:5@70:1]
  %6 = getelementptr inbounds %struct.three_tuple_t* %global_offset, i32 0, i32 2, !dbg !127 ; [#uses=1 type=i32*] [debug line = 36:5@70:1]
  call  void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str10, i32 0, i32 0), i32* %6) nounwind, !dbg !127 ; [debug line = 36:5@70:1]
  call void @llvm.dbg.value(metadata !{%struct.gpu_args_t* %args}, i64 0, metadata !128), !dbg !129 ; [debug line = 39:37@71:1] [debug variable = args]
  %7 = getelementptr inbounds %struct.gpu_args_t* %args, i32 0, i32 0, !dbg !131 ; [#uses=1 type=i32*] [debug line = 40:5@71:1]
  call  void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i32* %7) nounwind, !dbg !131 ; [debug line = 40:5@71:1]
  %8 = getelementptr inbounds %struct.gpu_args_t* %args, i32 0, i32 1, !dbg !133 ; [#uses=1 type=i32*] [debug line = 41:5@71:1]
  call  void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i32* %8) nounwind, !dbg !133 ; [debug line = 41:5@71:1]
  %9 = getelementptr inbounds %struct.gpu_args_t* %args, i32 0, i32 2, !dbg !134 ; [#uses=1 type=i32*] [debug line = 42:5@71:1]
  call  void (...)* @_ssdm_op_SpecExt(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i32* %9) nounwind, !dbg !134 ; [debug line = 42:5@71:1]
  call  void (...)* @_ssdm_op_SpecInterface(i32 addrspace(1)* %gmem, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 128, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !135 ; [debug line = 72:1]
  call  void (...)* @_ssdm_op_SpecInterface(%struct.three_tuple_t* %group_id, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !136 ; [debug line = 73:1]
  call  void (...)* @_ssdm_op_SpecInterface(%struct.three_tuple_t* %global_offset, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !137 ; [debug line = 74:1]
  call  void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !138 ; [debug line = 75:1]
  call  void (...)* @_ssdm_op_SpecInterface(%struct.gpu_args_t* %args, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !139 ; [debug line = 76:1]
  call  void (...)* @_ssdm_InlineRegion(i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !140 ; [debug line = 46:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 0), align 4, !dbg !142 ; [debug line = 54:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 1, i32 0), align 4, !dbg !143 ; [debug line = 63:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 1, i32 1), align 4, !dbg !144 ; [debug line = 64:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 1, i32 2), align 4, !dbg !145 ; [debug line = 65:3]
  store i32 16, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 3, i32 0), align 4, !dbg !146 ; [debug line = 70:3]
  store i32 1, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 3, i32 1), align 4, !dbg !147 ; [debug line = 79:3]
  store i32 1, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 3, i32 2), align 4, !dbg !148 ; [debug line = 88:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 4, i32 0), align 4, !dbg !149 ; [debug line = 103:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 4, i32 1), align 4, !dbg !150 ; [debug line = 104:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 4, i32 2), align 4, !dbg !151 ; [debug line = 105:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 5, i32 0), align 4, !dbg !152 ; [debug line = 114:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 5, i32 1), align 4, !dbg !153 ; [debug line = 115:3]
  store i32 0, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 5, i32 2), align 4, !dbg !154 ; [debug line = 116:3]
  %10 = getelementptr inbounds %struct.three_tuple_t* %group_id, i32 0, i32 0, !dbg !155 ; [#uses=1 type=i32*] [debug line = 121:3]
  %11 = load i32* %10, align 4, !dbg !155         ; [#uses=1 type=i32] [debug line = 121:3]
  store i32 %11, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 6, i32 0), align 4, !dbg !155 ; [debug line = 121:3]
  %12 = getelementptr inbounds %struct.three_tuple_t* %group_id, i32 0, i32 1, !dbg !156 ; [#uses=1 type=i32*] [debug line = 122:3]
  %13 = load i32* %12, align 4, !dbg !156         ; [#uses=1 type=i32] [debug line = 122:3]
  store i32 %13, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 6, i32 1), align 4, !dbg !156 ; [debug line = 122:3]
  %14 = getelementptr inbounds %struct.three_tuple_t* %group_id, i32 0, i32 2, !dbg !157 ; [#uses=1 type=i32*] [debug line = 123:3]
  %15 = load i32* %14, align 4, !dbg !157         ; [#uses=1 type=i32] [debug line = 123:3]
  store i32 %15, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 6, i32 2), align 4, !dbg !157 ; [debug line = 123:3]
  %16 = getelementptr inbounds %struct.three_tuple_t* %global_offset, i32 0, i32 0, !dbg !158 ; [#uses=1 type=i32*] [debug line = 132:3]
  %17 = load i32* %16, align 4, !dbg !158         ; [#uses=1 type=i32] [debug line = 132:3]
  store i32 %17, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 7, i32 0), align 4, !dbg !158 ; [debug line = 132:3]
  %18 = getelementptr inbounds %struct.three_tuple_t* %global_offset, i32 0, i32 1, !dbg !159 ; [#uses=1 type=i32*] [debug line = 133:3]
  %19 = load i32* %18, align 4, !dbg !159         ; [#uses=1 type=i32] [debug line = 133:3]
  store i32 %19, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 7, i32 1), align 4, !dbg !159 ; [debug line = 133:3]
  %20 = getelementptr inbounds %struct.three_tuple_t* %global_offset, i32 0, i32 2, !dbg !160 ; [#uses=1 type=i32*] [debug line = 134:3]
  %21 = load i32* %20, align 4, !dbg !160         ; [#uses=1 type=i32] [debug line = 134:3]
  store i32 %21, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 7, i32 2), align 4, !dbg !160 ; [debug line = 134:3]
  %22 = load i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 6, i32 0), align 4, !dbg !161 ; [#uses=1 type=i32] [debug line = 147:3]
  %23 = load i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 3, i32 0), align 4, !dbg !161 ; [#uses=1 type=i32] [debug line = 147:3]
  %24 = mul i32 %22, %23, !dbg !161               ; [#uses=1 type=i32] [debug line = 147:3]
  %25 = load i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 7, i32 0), align 4, !dbg !161 ; [#uses=1 type=i32] [debug line = 147:3]
  %26 = add i32 %24, %25, !dbg !161               ; [#uses=1 type=i32] [debug line = 147:3]
  store i32 %26, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 2, i32 0), align 4, !dbg !161 ; [debug line = 147:3]
  %27 = load i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 6, i32 1), align 4, !dbg !162 ; [#uses=1 type=i32] [debug line = 148:3]
  %28 = load i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 3, i32 1), align 4, !dbg !162 ; [#uses=1 type=i32] [debug line = 148:3]
  %29 = mul i32 %27, %28, !dbg !162               ; [#uses=1 type=i32] [debug line = 148:3]
  %30 = load i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 7, i32 1), align 4, !dbg !162 ; [#uses=1 type=i32] [debug line = 148:3]
  %31 = add i32 %29, %30, !dbg !162               ; [#uses=1 type=i32] [debug line = 148:3]
  store i32 %31, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 2, i32 1), align 4, !dbg !162 ; [debug line = 148:3]
  %32 = load i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 6, i32 2), align 4, !dbg !163 ; [#uses=1 type=i32] [debug line = 149:3]
  %33 = load i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 3, i32 2), align 4, !dbg !163 ; [#uses=1 type=i32] [debug line = 149:3]
  %34 = mul i32 %32, %33, !dbg !163               ; [#uses=1 type=i32] [debug line = 149:3]
  %35 = load i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 7, i32 2), align 4, !dbg !163 ; [#uses=1 type=i32] [debug line = 149:3]
  %36 = add i32 %34, %35, !dbg !163               ; [#uses=1 type=i32] [debug line = 149:3]
  store i32 %36, i32* getelementptr inbounds (%struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 2, i32 2), align 4, !dbg !163 ; [debug line = 149:3]
  %37 = bitcast %struct.__spir_rt_info_tT.2* %.0 to i8* ; [#uses=0 type=i8*]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %gmem}, i64 0, metadata !164), !dbg !165 ; [debug line = 52:90] [debug variable = gmem]
  call void @llvm.dbg.value(metadata !166, i64 0, metadata !167), !dbg !168 ; [debug line = 52:114] [debug variable = rt_info]
  call void @llvm.dbg.value(metadata !{%struct.gpu_args_t* %args}, i64 0, metadata !169), !dbg !170 ; [debug line = 52:135] [debug variable = args]
  %38 = getelementptr inbounds %struct.gpu_args_t* %args, i32 0, i32 0, !dbg !171 ; [#uses=1 type=i32*] [debug line = 54:110]
  %39 = load i32* %38, align 4, !dbg !171         ; [#uses=1 type=i32] [debug line = 54:110]
  %40 = lshr i32 %39, 2, !dbg !171                ; [#uses=1 type=i32] [debug line = 54:110]
  %arg_x.i.0 = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %40, !dbg !171 ; [#uses=2 type=i32 addrspace(1)*] [debug line = 54:110]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %arg_x.i.0}, i64 0, metadata !173), !dbg !171 ; [debug line = 54:110] [debug variable = arg_x]
  %41 = getelementptr inbounds %struct.gpu_args_t* %args, i32 0, i32 1, !dbg !174 ; [#uses=1 type=i32*] [debug line = 55:110]
  %42 = load i32* %41, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 55:110]
  %43 = lshr i32 %42, 2, !dbg !174                ; [#uses=1 type=i32] [debug line = 55:110]
  %arg_y.i.0 = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %43, !dbg !174 ; [#uses=2 type=i32 addrspace(1)*] [debug line = 55:110]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %arg_y.i.0}, i64 0, metadata !175), !dbg !174 ; [debug line = 55:110] [debug variable = arg_y]
  %44 = getelementptr inbounds %struct.gpu_args_t* %args, i32 0, i32 2, !dbg !176 ; [#uses=1 type=i32*] [debug line = 56:110]
  %45 = load i32* %44, align 4, !dbg !176         ; [#uses=1 type=i32] [debug line = 56:110]
  %46 = lshr i32 %45, 2, !dbg !176                ; [#uses=1 type=i32] [debug line = 56:110]
  %arg_z.i.0 = getelementptr inbounds i32 addrspace(1)* %gmem, i32 %46, !dbg !176 ; [#uses=1 type=i32 addrspace(1)*] [debug line = 56:110]
  call void @llvm.dbg.value(metadata !{i32 addrspace(1)* %arg_z.i.0}, i64 0, metadata !177), !dbg !176 ; [debug line = 56:110] [debug variable = arg_z]
  %47 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 0 ; [#uses=1 type=i32*]
  %48 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 0 ; [#uses=1 type=i32*]
  %49 = load i32* %47                             ; [#uses=1 type=i32]
  %50 = bitcast i32 %49 to i32                    ; [#uses=1 type=i32]
  store volatile i32 %50, i32* %48
  %51 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 1 ; [#uses=3 type=[3 x i32]*]
  %52 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 1 ; [#uses=3 type=[3 x i32]*]
  %53 = getelementptr [3 x i32]* %51, i32 0, i32 0 ; [#uses=1 type=i32*]
  %54 = getelementptr [3 x i32]* %52, i32 0, i32 0 ; [#uses=1 type=i32*]
  %55 = load i32* %53                             ; [#uses=1 type=i32]
  store volatile i32 %55, i32* %54
  %56 = getelementptr [3 x i32]* %51, i32 0, i32 1 ; [#uses=1 type=i32*]
  %57 = getelementptr [3 x i32]* %52, i32 0, i32 1 ; [#uses=1 type=i32*]
  %58 = load i32* %56                             ; [#uses=1 type=i32]
  store volatile i32 %58, i32* %57
  %59 = getelementptr [3 x i32]* %51, i32 0, i32 2 ; [#uses=1 type=i32*]
  %60 = getelementptr [3 x i32]* %52, i32 0, i32 2 ; [#uses=1 type=i32*]
  %61 = load i32* %59                             ; [#uses=1 type=i32]
  store volatile i32 %61, i32* %60
  %62 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 2 ; [#uses=3 type=[3 x i32]*]
  %63 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 2 ; [#uses=3 type=[3 x i32]*]
  %64 = getelementptr [3 x i32]* %62, i32 0, i32 0 ; [#uses=1 type=i32*]
  %65 = getelementptr [3 x i32]* %63, i32 0, i32 0 ; [#uses=1 type=i32*]
  %66 = load i32* %64                             ; [#uses=1 type=i32]
  store volatile i32 %66, i32* %65
  %67 = getelementptr [3 x i32]* %62, i32 0, i32 1 ; [#uses=1 type=i32*]
  %68 = getelementptr [3 x i32]* %63, i32 0, i32 1 ; [#uses=1 type=i32*]
  %69 = load i32* %67                             ; [#uses=1 type=i32]
  store volatile i32 %69, i32* %68
  %70 = getelementptr [3 x i32]* %62, i32 0, i32 2 ; [#uses=1 type=i32*]
  %71 = getelementptr [3 x i32]* %63, i32 0, i32 2 ; [#uses=1 type=i32*]
  %72 = load i32* %70                             ; [#uses=1 type=i32]
  store volatile i32 %72, i32* %71
  %73 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 3 ; [#uses=3 type=[3 x i32]*]
  %74 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 3 ; [#uses=3 type=[3 x i32]*]
  %75 = getelementptr [3 x i32]* %73, i32 0, i32 0 ; [#uses=1 type=i32*]
  %76 = getelementptr [3 x i32]* %74, i32 0, i32 0 ; [#uses=1 type=i32*]
  %77 = load i32* %75                             ; [#uses=1 type=i32]
  store volatile i32 %77, i32* %76
  %78 = getelementptr [3 x i32]* %73, i32 0, i32 1 ; [#uses=1 type=i32*]
  %79 = getelementptr [3 x i32]* %74, i32 0, i32 1 ; [#uses=1 type=i32*]
  %80 = load i32* %78                             ; [#uses=1 type=i32]
  store volatile i32 %80, i32* %79
  %81 = getelementptr [3 x i32]* %73, i32 0, i32 2 ; [#uses=1 type=i32*]
  %82 = getelementptr [3 x i32]* %74, i32 0, i32 2 ; [#uses=1 type=i32*]
  %83 = load i32* %81                             ; [#uses=1 type=i32]
  store volatile i32 %83, i32* %82
  %84 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 4 ; [#uses=3 type=[3 x i32]*]
  %85 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 4 ; [#uses=3 type=[3 x i32]*]
  %86 = getelementptr [3 x i32]* %84, i32 0, i32 0 ; [#uses=1 type=i32*]
  %87 = getelementptr [3 x i32]* %85, i32 0, i32 0 ; [#uses=1 type=i32*]
  %88 = load i32* %86                             ; [#uses=1 type=i32]
  store volatile i32 %88, i32* %87
  %89 = getelementptr [3 x i32]* %84, i32 0, i32 1 ; [#uses=1 type=i32*]
  %90 = getelementptr [3 x i32]* %85, i32 0, i32 1 ; [#uses=1 type=i32*]
  %91 = load i32* %89                             ; [#uses=1 type=i32]
  store volatile i32 %91, i32* %90
  %92 = getelementptr [3 x i32]* %84, i32 0, i32 2 ; [#uses=1 type=i32*]
  %93 = getelementptr [3 x i32]* %85, i32 0, i32 2 ; [#uses=1 type=i32*]
  %94 = load i32* %92                             ; [#uses=1 type=i32]
  store volatile i32 %94, i32* %93
  %95 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 5 ; [#uses=3 type=[3 x i32]*]
  %96 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 5 ; [#uses=3 type=[3 x i32]*]
  %97 = getelementptr [3 x i32]* %95, i32 0, i32 0 ; [#uses=1 type=i32*]
  %98 = getelementptr [3 x i32]* %96, i32 0, i32 0 ; [#uses=1 type=i32*]
  %99 = load i32* %97                             ; [#uses=1 type=i32]
  store volatile i32 %99, i32* %98
  %100 = getelementptr [3 x i32]* %95, i32 0, i32 1 ; [#uses=1 type=i32*]
  %101 = getelementptr [3 x i32]* %96, i32 0, i32 1 ; [#uses=1 type=i32*]
  %102 = load i32* %100                           ; [#uses=1 type=i32]
  store volatile i32 %102, i32* %101
  %103 = getelementptr [3 x i32]* %95, i32 0, i32 2 ; [#uses=1 type=i32*]
  %104 = getelementptr [3 x i32]* %96, i32 0, i32 2 ; [#uses=1 type=i32*]
  %105 = load i32* %103                           ; [#uses=1 type=i32]
  store volatile i32 %105, i32* %104
  %106 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 6 ; [#uses=3 type=[3 x i32]*]
  %107 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 6 ; [#uses=3 type=[3 x i32]*]
  %108 = getelementptr [3 x i32]* %106, i32 0, i32 0 ; [#uses=1 type=i32*]
  %109 = getelementptr [3 x i32]* %107, i32 0, i32 0 ; [#uses=1 type=i32*]
  %110 = load i32* %108                           ; [#uses=1 type=i32]
  store volatile i32 %110, i32* %109
  %111 = getelementptr [3 x i32]* %106, i32 0, i32 1 ; [#uses=1 type=i32*]
  %112 = getelementptr [3 x i32]* %107, i32 0, i32 1 ; [#uses=1 type=i32*]
  %113 = load i32* %111                           ; [#uses=1 type=i32]
  store volatile i32 %113, i32* %112
  %114 = getelementptr [3 x i32]* %106, i32 0, i32 2 ; [#uses=1 type=i32*]
  %115 = getelementptr [3 x i32]* %107, i32 0, i32 2 ; [#uses=1 type=i32*]
  %116 = load i32* %114                           ; [#uses=1 type=i32]
  store volatile i32 %116, i32* %115
  %117 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 7 ; [#uses=3 type=[3 x i32]*]
  %118 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 7 ; [#uses=3 type=[3 x i32]*]
  %119 = getelementptr [3 x i32]* %117, i32 0, i32 0 ; [#uses=1 type=i32*]
  %120 = getelementptr [3 x i32]* %118, i32 0, i32 0 ; [#uses=1 type=i32*]
  %121 = load i32* %119                           ; [#uses=1 type=i32]
  store volatile i32 %121, i32* %120
  %122 = getelementptr [3 x i32]* %117, i32 0, i32 1 ; [#uses=1 type=i32*]
  %123 = getelementptr [3 x i32]* %118, i32 0, i32 1 ; [#uses=1 type=i32*]
  %124 = load i32* %122                           ; [#uses=1 type=i32]
  store volatile i32 %124, i32* %123
  %125 = getelementptr [3 x i32]* %117, i32 0, i32 2 ; [#uses=1 type=i32*]
  %126 = getelementptr [3 x i32]* %118, i32 0, i32 2 ; [#uses=1 type=i32*]
  %127 = load i32* %125                           ; [#uses=1 type=i32]
  store volatile i32 %127, i32* %126
  %128 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 8 ; [#uses=1 type=i8**]
  %129 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 8 ; [#uses=1 type=i8**]
  %130 = load i8** %128                           ; [#uses=1 type=i8*]
  %131 = bitcast i8* %130 to i8*                  ; [#uses=1 type=i8*]
  store volatile i8* %131, i8** %129
  %132 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 9 ; [#uses=1 type=i1*]
  %133 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 9 ; [#uses=1 type=i8*]
  %134 = load i1* %132                            ; [#uses=1 type=i1]
  %135 = zext i1 %134 to i8                       ; [#uses=1 type=i8]
  store volatile i8 %135, i8* %133
  %136 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 10 ; [#uses=1 type=i8**]
  %137 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 10 ; [#uses=1 type=i8**]
  %138 = load i8** %136                           ; [#uses=1 type=i8*]
  %139 = bitcast i8* %138 to i8*                  ; [#uses=1 type=i8*]
  store volatile i8* %139, i8** %137
  %140 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 11 ; [#uses=1 type=i8**]
  %141 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 11 ; [#uses=1 type=i8**]
  %142 = load i8** %140                           ; [#uses=1 type=i8*]
  %143 = bitcast i8* %142 to i8*                  ; [#uses=1 type=i8*]
  store volatile i8* %143, i8** %141
  %144 = getelementptr %struct.__spir_rt_info_tT.6* @rt_info, i32 0, i32 12 ; [#uses=1 type=i64*]
  %145 = getelementptr %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 12 ; [#uses=1 type=i64*]
  %146 = load i64* %144                           ; [#uses=1 type=i64]
  %147 = bitcast i64 %146 to i64                  ; [#uses=1 type=i64]
  store volatile i64 %147, i64* %145
  %148 = bitcast [3 x i32]* %tid2743.i.i to i8*   ; [#uses=0 type=i8*]
  %tid2743.sub.i.i = getelementptr inbounds [3 x i32]* %tid2743.i.i, i32 0, i32 0 ; [#uses=3 type=i32*]
  store i32 0, i32* %tid2743.sub.i.i, align 4
  %tid29.i.i = getelementptr [3 x i32]* %tid2743.i.i, i32 0, i32 1 ; [#uses=1 type=i32*]
  store i32 0, i32* %tid29.i.i, align 4
  %tid30.i.i = getelementptr [3 x i32]* %tid2743.i.i, i32 0, i32 2 ; [#uses=1 type=i32*]
  store i32 0, i32* %tid30.i.i, align 4
  call  void (...)* @_ssdm_xcl_PointerMap(i32 addrspace(1)* %arg_x.i.0, i32 0, i32 0, i32 4) nounwind
  %149 = bitcast i32 addrspace(1)* %arg_x.i.0 to i8*, !xcl.port !98 ; [#uses=1 type=i8*]
  call  void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast ([16 x i32] * @gpu.x0 to i8*), i8* %149, i32 64, i32 1, i1 false) nounwind
  call  void (...)* @_ssdm_xcl_PointerMap(i32 addrspace(1)* %arg_y.i.0, i32 0, i32 0, i32 4) nounwind
  %150 = bitcast i32 addrspace(1)* %arg_y.i.0 to i8*, !xcl.port !98 ; [#uses=1 type=i8*]
  call  void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast ([16 x i32] * @gpu.y0 to i8*), i8* %150, i32 64, i32 1, i1 false) nounwind
  br label %for.header.i.i

for.header.i.i:                                   ; preds = %_Z21async_work_grou3.rentry.i.i, %0
  %indvar.reg2mem40.0.i.i = phi i32 [ 0, %0 ], [ %indvar.inc.reg2mem.0.i.i, %_Z21async_work_grou3.rentry.i.i ] ; [#uses=3 type=i32]
  store i32 %indvar.reg2mem40.0.i.i, i32* %tid2743.sub.i.i, align 4
  %151 = call  i32 (...)* @_ssdm_op_SpecLoopName([13 x i8]* @XCL_WG_DIM_X.str) nounwind ; [#uses=0 type=i32]
  %152 = icmp eq i32 %indvar.reg2mem40.0.i.i, 16  ; [#uses=1 type=i1]
  br i1 %152, label %__AESL_call_work_item_NA5.exit, label %_Z21async_work_grou3.rentry.i.i

_Z21async_work_grou3.rentry.i.i:                  ; preds = %for.header.i.i
  %153 = getelementptr inbounds %struct.__spir_rt_info_tT.2* %.0, i32 0, i32 2 ; [#uses=1 type=[3 x i32]*]
  %154 = getelementptr inbounds [3 x i32]* %153, i32 0, i32 0 ; [#uses=1 type=i32*]
  %155 = load i32* %154, align 4                  ; [#uses=1 type=i32]
  %tid.dim.i.i = load i32* %tid2743.sub.i.i, align 4 ; [#uses=1 type=i32]
  %156 = add i32 %tid.dim.i.i, %155               ; [#uses=3 type=i32]
  %157 = getelementptr inbounds [16 x i32] * @gpu.x0, i32 0, i32 %156, !dbg !178 ; [#uses=1 type=i32 *] [debug line = 24:9]
  %158 = load i32 * %157, align 4, !dbg !178 ; [#uses=1 type=i32] [debug line = 24:9]
  %159 = getelementptr inbounds [16 x i32] * @gpu.y0, i32 0, i32 %156, !dbg !178 ; [#uses=1 type=i32 *] [debug line = 24:9]
  %160 = load i32 * %159, align 4, !dbg !178 ; [#uses=1 type=i32] [debug line = 24:9]
  %161 = sub nsw i32 %158, %160, !dbg !178        ; [#uses=1 type=i32] [debug line = 24:9]
  %162 = getelementptr inbounds i32 addrspace(1)* %arg_z.i.0, i32 %156, !dbg !178, !xcl.port !98 ; [#uses=1 type=i32 addrspace(1)*] [debug line = 24:9]
  store i32 %161, i32 addrspace(1)* %162, align 4, !dbg !178 ; [debug line = 24:9]
  %indvar.inc.reg2mem.0.i.i = add i32 %indvar.reg2mem40.0.i.i, 1 ; [#uses=1 type=i32]
  %163 = call  i32 (...)* @_ssdm_SpecLoopFlatten(i32 0, [1 x i8]* @str) nounwind ; [#uses=0 type=i32]
  br label %for.header.i.i

__AESL_call_work_item_NA5.exit:                   ; preds = %for.header.i.i
  %164 = bitcast [3 x i32]* %tid2743.i.i to i8*, !dbg !181 ; [#uses=0 type=i8*] [debug line = 26:1]
  %165 = bitcast %struct.__spir_rt_info_tT.2* %.0 to i8*, !dbg !182 ; [#uses=0 type=i8*] [debug line = 58:3]
  ret void, !dbg !183                             ; [debug line = 81:1]
}

; [#uses=13]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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
!15 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x0", metadata !"x0", metadata !"", metadata !6, i32 13, metadata !16, i32 1, i32 1, [16 x i32] * @gpu.x0} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !10, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y0", metadata !"y0", metadata !"", metadata !6, i32 14, metadata !16, i32 1, i32 1, [16 x i32] * @gpu.y0} ; [ DW_TAG_variable ]
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
!93 = metadata !{i32 786484, i32 0, metadata !85, metadata !"rt_info", metadata !"rt_info", metadata !"", metadata !94, i32 49, metadata !31, i32 1, i32 1, %struct.__spir_rt_info_tT.6* @rt_info} ; [ DW_TAG_variable ]
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
!140 = metadata !{i32 46, i32 3, metadata !141, null}
!141 = metadata !{i32 786443, metadata !116, metadata !94} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 54, i32 3, metadata !141, null}
!143 = metadata !{i32 63, i32 3, metadata !141, null}
!144 = metadata !{i32 64, i32 3, metadata !141, null}
!145 = metadata !{i32 65, i32 3, metadata !141, null}
!146 = metadata !{i32 70, i32 3, metadata !141, null}
!147 = metadata !{i32 79, i32 3, metadata !141, null}
!148 = metadata !{i32 88, i32 3, metadata !141, null}
!149 = metadata !{i32 103, i32 3, metadata !141, null}
!150 = metadata !{i32 104, i32 3, metadata !141, null}
!151 = metadata !{i32 105, i32 3, metadata !141, null}
!152 = metadata !{i32 114, i32 3, metadata !141, null}
!153 = metadata !{i32 115, i32 3, metadata !141, null}
!154 = metadata !{i32 116, i32 3, metadata !141, null}
!155 = metadata !{i32 121, i32 3, metadata !141, null}
!156 = metadata !{i32 122, i32 3, metadata !141, null}
!157 = metadata !{i32 123, i32 3, metadata !141, null}
!158 = metadata !{i32 132, i32 3, metadata !141, null}
!159 = metadata !{i32 133, i32 3, metadata !141, null}
!160 = metadata !{i32 134, i32 3, metadata !141, null}
!161 = metadata !{i32 147, i32 3, metadata !141, null}
!162 = metadata !{i32 148, i32 3, metadata !141, null}
!163 = metadata !{i32 149, i32 3, metadata !141, null}
!164 = metadata !{i32 786689, metadata !23, metadata !"gmem", metadata !24, i32 16777268, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!165 = metadata !{i32 52, i32 90, metadata !23, null}
!166 = metadata !{%struct.__spir_rt_info_tT.6* @rt_info}
!167 = metadata !{i32 786689, metadata !23, metadata !"rt_info", metadata !24, i32 33554484, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 52, i32 114, metadata !23, null}
!169 = metadata !{i32 786689, metadata !23, metadata !"args", metadata !24, i32 50331700, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 52, i32 135, metadata !23, null}
!171 = metadata !{i32 54, i32 110, metadata !172, null}
!172 = metadata !{i32 786443, metadata !23, i32 53, i32 1, metadata !24, i32 0} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 786688, metadata !172, metadata !"arg_x", metadata !24, i32 54, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 55, i32 110, metadata !172, null}
!175 = metadata !{i32 786688, metadata !172, metadata !"arg_y", metadata !24, i32 55, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 56, i32 110, metadata !172, null}
!177 = metadata !{i32 786688, metadata !172, metadata !"arg_z", metadata !24, i32 56, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 24, i32 9, metadata !179, null}
!179 = metadata !{i32 786443, metadata !180, i32 17, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 786443, metadata !5, i32 12, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 26, i32 1, metadata !180, null}
!182 = metadata !{i32 58, i32 3, metadata !172, null}
!183 = metadata !{i32 81, i32 1, metadata !184, null}
!184 = metadata !{i32 786443, metadata !116, metadata !24} ; [ DW_TAG_lexical_block ]
