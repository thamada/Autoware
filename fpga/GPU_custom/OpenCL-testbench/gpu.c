#Time-stamp: <2017-01-05 00:22:16 hamada>

/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;
/* Structure forward decls */
typedef struct l_struct_OC_three_tuple_t l_struct_OC_three_tuple_t;
typedef struct l_struct_OC_gpu_args_t l_struct_OC_gpu_args_t;

/* Structure contents */
struct l_struct_OC_three_tuple_t {
  unsigned int field0;
  unsigned int field1;
  unsigned int field2;
};

struct l_struct_OC_gpu_args_t {
  unsigned int field0;
  unsigned int field1;
  unsigned int field2;
};


/* External Global Variable Declarations */
extern signed int *__spir_rt_info_OC_0;
extern signed int (*__spir_rt_info_OC_1)[3];
extern signed int (*__spir_rt_info_OC_2)[3];
extern signed int (*__spir_rt_info_OC_3)[3];
extern signed int (*__spir_rt_info_OC_4)[3];
extern signed int (*__spir_rt_info_OC_5)[3];
extern signed int (*__spir_rt_info_OC_6)[3];
extern signed int (*__spir_rt_info_OC_7)[3];
extern  char **__spir_rt_info_OC_8;
extern  char *__spir_rt_info_OC_9;
extern  char **__spir_rt_info_OC_10;
extern  char **__spir_rt_info_OC_11;
extern signed long long *__spir_rt_info_OC_12;

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void gpu(signed int *gmem, signed int *group_id_2e_x, signed int *group_id_2e_y, signed int *group_id_2e_z, signed int *global_offset_2e_x, signed int *global_offset_2e_y, signed int *global_offset_2e_z, signed int *x, signed int *y, signed int *z);
void _OC_gpu8(signed int *, l_struct_OC_three_tuple_t *, l_struct_OC_three_tuple_t *, l_struct_OC_gpu_args_t *);


/* Global Variable Definitions and Initialization */
static float aesl_internal_gpu_OC_y1[16];
static float aesl_internal_gpu_OC_x2[16];
signed int (*__spir_rt_info_OC_1)[3];
static float aesl_internal_gpu_OC_x0[16];
static  char *aesl_internal_rt_info_OC_8;
static float aesl_internal_gpu_OC_y0[16];
static float aesl_internal_gpu_OC_x1[16];
static const  char aesl_internal_meta[1];
static const  char aesl_internal_instance[1];
static const  char aesl_internal_meta9[1];
static const  char aesl_internal_instance10[1];
signed int (*__spir_rt_info_OC_2)[3];
static float aesl_internal_gpu_OC_y2[16];
static const  char aesl_internal_XCL_WG_DIM_X_OC_str[13] = "XCL_WG_DIM_X";
static const  char aesl_internal_str[1];
signed int *__spir_rt_info_OC_0;
 char *__spir_rt_info_OC_9;
 char **__spir_rt_info_OC_10;
 char **__spir_rt_info_OC_11;
signed long long *__spir_rt_info_OC_12;
static const  char aesl_internal__OC_str[6] = "m_axi";
signed int (*__spir_rt_info_OC_3)[3];
signed int (*__spir_rt_info_OC_4)[3];
signed int (*__spir_rt_info_OC_5)[3];
signed int (*__spir_rt_info_OC_6)[3];
signed int (*__spir_rt_info_OC_7)[3];
 char **__spir_rt_info_OC_8;
static bool aesl_internal_rt_info_OC_9;
static  char *aesl_internal_rt_info_OC_10;
static  char *aesl_internal_rt_info_OC_11;
static unsigned long long aesl_internal_rt_info_OC_12;
static const  char aesl_internal__OC_str4[12] = "member_name";
static const  char aesl_internal__OC_str5[2] = "x";
static const  char aesl_internal__OC_str6[2] = "y";
static const  char aesl_internal__OC_str7[2] = "z";
static const  char aesl_internal__OC_str8[16] = "global_offset.x";
static const  char aesl_internal__OC_str9[16] = "global_offset.y";
static const  char aesl_internal__OC_str1[1];
static const  char aesl_internal__OC_str2[10] = "s_axilite";
static const  char aesl_internal__OC_str3[8] = "control";
static unsigned int aesl_internal_rt_info_OC_0;
static signed int aesl_internal_rt_info_OC_1[3];
static signed int aesl_internal_rt_info_OC_2[3];
static signed int aesl_internal_rt_info_OC_3[3];
static signed int aesl_internal_rt_info_OC_4[3];
static signed int aesl_internal_rt_info_OC_5[3];
static signed int aesl_internal_rt_info_OC_6[3];
static signed int aesl_internal_rt_info_OC_7[3];
static const  char aesl_internal__OC_str10[16] = "global_offset.z";
static const  char aesl_internal__OC_str11[11] = "group_id.x";
static const  char aesl_internal__OC_str12[11] = "group_id.y";
static const  char aesl_internal__OC_str13[11] = "group_id.z";


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void gpu(signed int *gmem, signed int *group_id_2e_x, signed int *group_id_2e_y, signed int *group_id_2e_z, signed int *global_offset_2e_x, signed int *global_offset_2e_y, signed int *global_offset_2e_z, signed int *x, signed int *y, signed int *z) {
  signed int llvm_cbe_tid3147_2e_i_2e_i[3];    /* Address-exposed local */
  signed int llvm_cbe__2e_0_2e_0;    /* Address-exposed local */
  signed int llvm_cbe__2e_0_2e_1[3];    /* Address-exposed local */
  signed int llvm_cbe__2e_0_2e_2[3];    /* Address-exposed local */
  signed int llvm_cbe__2e_0_2e_3[3];    /* Address-exposed local */
  signed int llvm_cbe__2e_0_2e_4[3];    /* Address-exposed local */
  signed int llvm_cbe__2e_0_2e_5[3];    /* Address-exposed local */
  signed int llvm_cbe__2e_0_2e_6[3];    /* Address-exposed local */
  signed int llvm_cbe__2e_0_2e_7[3];    /* Address-exposed local */
   char *llvm_cbe__2e_0_2e_8;    /* Address-exposed local */
   char llvm_cbe__2e_0_2e_9;    /* Address-exposed local */
   char *llvm_cbe__2e_0_2e_10;    /* Address-exposed local */
   char *llvm_cbe__2e_0_2e_11;    /* Address-exposed local */
  signed long long llvm_cbe__2e_0_2e_12;    /* Address-exposed local */
  unsigned int llvm_cbe_tmp__1;
  unsigned int llvm_cbe_tmp__2;
  unsigned int llvm_cbe_tmp__3;
  unsigned int llvm_cbe_tmp__4;
  unsigned int llvm_cbe_tmp__5;
  unsigned int llvm_cbe_tmp__6;
  unsigned int llvm_cbe_tmp__7;
  unsigned int llvm_cbe_tmp__8;
  unsigned int llvm_cbe_tmp__9;
  unsigned int llvm_cbe_tmp__10;
  unsigned int llvm_cbe_tmp__11;
  unsigned int llvm_cbe_tmp__12;
  unsigned int llvm_cbe_tmp__13;
  unsigned int llvm_cbe_tmp__14;
  unsigned int llvm_cbe_tmp__15;
  unsigned int llvm_cbe_tmp__16;
  unsigned int llvm_cbe_tmp__17;
  unsigned int llvm_cbe_tmp__18;
  unsigned int llvm_cbe_tmp__19;
  unsigned int llvm_cbe_tmp__20;
  unsigned int llvm_cbe_tmp__21;
  unsigned int llvm_cbe_tmp__22;
  unsigned int llvm_cbe_tmp__23;
  signed int *llvm_cbe_arg_x_2e_i_2e_0;
  unsigned int llvm_cbe_tmp__24;
  unsigned int llvm_cbe_tmp__25;
  signed int *llvm_cbe_arg_y_2e_i_2e_0;
  unsigned int llvm_cbe_tmp__26;
  unsigned int llvm_cbe_tmp__27;
  unsigned int llvm_cbe_tmp__28;
  signed int *llvm_cbe_tmp__29;
  unsigned int llvm_cbe_tmp__30;
  signed int *llvm_cbe_tmp__31;
  unsigned int llvm_cbe_tmp__32;
  signed int *llvm_cbe_tmp__33;
  unsigned int llvm_cbe_tmp__34;
  signed int *llvm_cbe_tmp__35;
  unsigned int llvm_cbe_tmp__36;
  signed int *llvm_cbe_tmp__37;
  unsigned int llvm_cbe_tmp__38;
  signed int *llvm_cbe_tmp__39;
  unsigned int llvm_cbe_tmp__40;
  signed int *llvm_cbe_tmp__41;
  unsigned int llvm_cbe_tmp__42;
  signed int *llvm_cbe_tmp__43;
  unsigned int llvm_cbe_tmp__44;
  signed int *llvm_cbe_tmp__45;
  unsigned int llvm_cbe_tmp__46;
  signed int *llvm_cbe_tmp__47;
  unsigned int llvm_cbe_tmp__48;
  signed int *llvm_cbe_tmp__49;
  unsigned int llvm_cbe_tmp__50;
  signed int *llvm_cbe_tmp__51;
  unsigned int llvm_cbe_tmp__52;
  signed int *llvm_cbe_tmp__53;
  unsigned int llvm_cbe_tmp__54;
  signed int *llvm_cbe_tmp__55;
  unsigned int llvm_cbe_tmp__56;
  signed int *llvm_cbe_tmp__57;
  unsigned int llvm_cbe_tmp__58;
  signed int *llvm_cbe_tmp__59;
  unsigned int llvm_cbe_tmp__60;
  signed int *llvm_cbe_tmp__61;
  unsigned int llvm_cbe_tmp__62;
  signed int *llvm_cbe_tmp__63;
  unsigned int llvm_cbe_tmp__64;
  signed int *llvm_cbe_tmp__65;
  unsigned int llvm_cbe_tmp__66;
  signed int *llvm_cbe_tmp__67;
  unsigned int llvm_cbe_tmp__68;
  signed int *llvm_cbe_tmp__69;
  unsigned int llvm_cbe_tmp__70;
   char *llvm_cbe_tmp__71;
  bool llvm_cbe_tmp__72;
  unsigned char llvm_cbe_tmp__73;
   char *llvm_cbe_tmp__74;
   char *llvm_cbe_tmp__75;
  unsigned long long llvm_cbe_tmp__76;
  signed int *llvm_cbe_tid3147_2e_sub_2e_i_2e_i;
  signed int *llvm_cbe_tid33_2e_i_2e_i;
  signed int *llvm_cbe_tid34_2e_i_2e_i;
   char *llvm_cbe_CI_2e_i_2e_i;
   char *llvm_cbe_tmp__77;
   char *llvm_cbe_CI30_2e_i_2e_i;
   char *llvm_cbe_tmp__78;
  unsigned int llvm_cbe_indvar_2e_reg2mem44_2e_0_2e_i_2e_i;
  unsigned int llvm_cbe_indvar_2e_reg2mem44_2e_0_2e_i_2e_i__PHI_TEMPORARY;
  unsigned int llvm_cbe_tmp__79;
  signed int *llvm_cbe_tmp__80;
  unsigned int llvm_cbe_tmp__81;
  unsigned int llvm_cbe_tid_2e_dim_2e_i_2e_i;
  unsigned int llvm_cbe_tmp__82;
  float *llvm_cbe_tmp__83;
  float llvm_cbe_tmp__84;
  float *llvm_cbe_tmp__85;
  float llvm_cbe_tmp__86;
  float llvm_cbe_tmp__87;
  float *llvm_cbe_tmp__88;
  float *llvm_cbe_tmp__89;
  float llvm_cbe_tmp__90;
  float *llvm_cbe_tmp__91;
  float llvm_cbe_tmp__92;
  float llvm_cbe_tmp__93;
  float *llvm_cbe_tmp__94;
  float *llvm_cbe_tmp__95;
  float llvm_cbe_tmp__96;
  float llvm_cbe_tmp__97;
  float *llvm_cbe_tmp__98;
  float *llvm_cbe_tmp__99;
  float llvm_cbe_tmp__100;
  float *llvm_cbe_tmp__101;
  float llvm_cbe_tmp__102;
  float llvm_cbe_tmp__103;
  float llvm_cbe_tmp__104;
  float *llvm_cbe_tmp__105;
  float *llvm_cbe_tmp__106;
  float llvm_cbe_tmp__107;
  float llvm_cbe_tmp__108;
  unsigned int llvm_cbe_gep_idx_2e_i_2e_i;
  unsigned int llvm_cbe_arg_z_2e_i_2e_0_2e_sum;
  signed int *llvm_cbe_tmp__109;
  unsigned int llvm_cbe_val_2e_i_2e_i;
  llvmBitCastUnion llvm_cbe_val_2e_i_2e_i__BITCAST_TEMPORARY;
  unsigned int llvm_cbe_indvar_2e_inc_2e_reg2mem_2e_0_2e_i_2e_i;
  unsigned int llvm_cbe_tmp__110;


#ifdef __SYNTHESIS__
  _ssdm_op_SpecInterface((signed int *)gmem, ( char *)((&aesl_internal__OC_str[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 6
#endif
])), 0u, 0u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), 128u, 0u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), 16u, 16u, 16u, 16u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])));

#endif

#ifdef __SYNTHESIS__
  _ssdm_op_SpecInterface((signed int *)group_id_2e_x, (signed int *)group_id_2e_y, (signed int *)group_id_2e_z, ( char *)((&aesl_internal__OC_str2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 10
#endif
])), 0u, 0u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), 0u, 0u, ( char *)((&aesl_internal__OC_str3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 8
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), 0u, 0u, 0u, 0u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])));

#endif

#ifdef __SYNTHESIS__
  _ssdm_op_SpecInterface((signed int *)global_offset_2e_x, (signed int *)global_offset_2e_y, (signed int *)global_offset_2e_z, ( char *)((&aesl_internal__OC_str2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 10
#endif
])), 0u, 0u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), 0u, 0u, ( char *)((&aesl_internal__OC_str3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 8
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), 0u, 0u, 0u, 0u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])));

#endif

#ifdef __SYNTHESIS__
  _ssdm_op_SpecInterface(0u, ( char *)((&aesl_internal__OC_str2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 10
#endif
])), 0u, 0u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), 0u, 0u, ( char *)((&aesl_internal__OC_str3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 8
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), 0u, 0u, 0u, 0u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])));

#endif

#ifdef __SYNTHESIS__
  _ssdm_op_SpecInterface((signed int *)x, (signed int *)y, (signed int *)z, ( char *)((&aesl_internal__OC_str2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 10
#endif
])), 0u, 0u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), 0u, 0u, ( char *)((&aesl_internal__OC_str3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 8
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), 0u, 0u, 0u, 0u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])));

#endif
  _ssdm_InlineRegion(1u, ( char *)((&aesl_internal__OC_str1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 1
#endif
])));
  *(&aesl_internal_rt_info_OC_0) = 0u;
  *((&aesl_internal_rt_info_OC_1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 0u;
  *((&aesl_internal_rt_info_OC_1[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 0u;
  *((&aesl_internal_rt_info_OC_1[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 0u;
  *((&aesl_internal_rt_info_OC_3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 16u;
  *((&aesl_internal_rt_info_OC_3[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 1u;
  *((&aesl_internal_rt_info_OC_3[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 1u;
  *((&aesl_internal_rt_info_OC_4[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 0u;
  *((&aesl_internal_rt_info_OC_4[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 0u;
  *((&aesl_internal_rt_info_OC_4[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 0u;
  *((&aesl_internal_rt_info_OC_5[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 0u;
  *((&aesl_internal_rt_info_OC_5[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 0u;
  *((&aesl_internal_rt_info_OC_5[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = 0u;
  llvm_cbe_tmp__1 = (unsigned int )*group_id_2e_x;
  *((&aesl_internal_rt_info_OC_6[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = llvm_cbe_tmp__1;
  llvm_cbe_tmp__2 = (unsigned int )*group_id_2e_y;
  *((&aesl_internal_rt_info_OC_6[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = llvm_cbe_tmp__2;
  llvm_cbe_tmp__3 = (unsigned int )*group_id_2e_z;
  *((&aesl_internal_rt_info_OC_6[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = llvm_cbe_tmp__3;
  llvm_cbe_tmp__4 = (unsigned int )*global_offset_2e_x;
  *((&aesl_internal_rt_info_OC_7[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = llvm_cbe_tmp__4;
  llvm_cbe_tmp__5 = (unsigned int )*global_offset_2e_y;
  *((&aesl_internal_rt_info_OC_7[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = llvm_cbe_tmp__5;
  llvm_cbe_tmp__6 = (unsigned int )*global_offset_2e_z;
  *((&aesl_internal_rt_info_OC_7[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = llvm_cbe_tmp__6;
  llvm_cbe_tmp__7 = (unsigned int )*((&aesl_internal_rt_info_OC_6[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));
  llvm_cbe_tmp__8 = (unsigned int )*((&aesl_internal_rt_info_OC_3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));
  llvm_cbe_tmp__9 = (unsigned int )((unsigned int )(llvm_cbe_tmp__7&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__8&4294967295ull));
  llvm_cbe_tmp__10 = (unsigned int )*((&aesl_internal_rt_info_OC_7[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_tmp__9&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__10&4294967295ull));
  *((&aesl_internal_rt_info_OC_2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = llvm_cbe_tmp__11;
  llvm_cbe_tmp__12 = (unsigned int )*((&aesl_internal_rt_info_OC_6[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));
  llvm_cbe_tmp__13 = (unsigned int )*((&aesl_internal_rt_info_OC_3[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));
  llvm_cbe_tmp__14 = (unsigned int )((unsigned int )(llvm_cbe_tmp__12&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__13&4294967295ull));
  llvm_cbe_tmp__15 = (unsigned int )*((&aesl_internal_rt_info_OC_7[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));
  llvm_cbe_tmp__16 = (unsigned int )((unsigned int )(llvm_cbe_tmp__14&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__15&4294967295ull));
  *((&aesl_internal_rt_info_OC_2[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = llvm_cbe_tmp__16;
  llvm_cbe_tmp__17 = (unsigned int )*((&aesl_internal_rt_info_OC_6[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));
  llvm_cbe_tmp__18 = (unsigned int )*((&aesl_internal_rt_info_OC_3[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));
  llvm_cbe_tmp__19 = (unsigned int )((unsigned int )(llvm_cbe_tmp__17&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__18&4294967295ull));
  llvm_cbe_tmp__20 = (unsigned int )*((&aesl_internal_rt_info_OC_7[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));
  llvm_cbe_tmp__21 = (unsigned int )((unsigned int )(llvm_cbe_tmp__19&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__20&4294967295ull));
  *((&aesl_internal_rt_info_OC_2[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
])) = llvm_cbe_tmp__21;
  llvm_cbe_tmp__22 = (unsigned int )*x;
  llvm_cbe_tmp__23 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__22&4294967295ull)) >> ((unsigned int )(2u&4294967295ull))));
  llvm_cbe_arg_x_2e_i_2e_0 = (signed int *)(&gmem[(((signed int )llvm_cbe_tmp__23))]);
  llvm_cbe_tmp__24 = (unsigned int )*y;
  llvm_cbe_tmp__25 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__24&4294967295ull)) >> ((unsigned int )(2u&4294967295ull))));
  llvm_cbe_arg_y_2e_i_2e_0 = (signed int *)(&gmem[(((signed int )llvm_cbe_tmp__25))]);
  llvm_cbe_tmp__26 = (unsigned int )*z;
  llvm_cbe_tmp__27 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__26&4294967295ull)) >> ((unsigned int )(2u&4294967295ull))));
  llvm_cbe_tmp__28 = (unsigned int )*(&aesl_internal_rt_info_OC_0);
  *((unsigned int volatile*)(&llvm_cbe__2e_0_2e_0)) = llvm_cbe_tmp__28;
  llvm_cbe_tmp__29 = (signed int *)(&llvm_cbe__2e_0_2e_1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__30 = (unsigned int )*((&aesl_internal_rt_info_OC_1[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 3 && "Write access out of array '.0.1' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__29) = llvm_cbe_tmp__30;
  llvm_cbe_tmp__31 = (signed int *)(&llvm_cbe__2e_0_2e_1[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__32 = (unsigned int )*((&aesl_internal_rt_info_OC_1[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 3 && "Write access out of array '.0.1' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__31) = llvm_cbe_tmp__32;
  llvm_cbe_tmp__33 = (signed int *)(&llvm_cbe__2e_0_2e_1[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__34 = (unsigned int )*((&aesl_internal_rt_info_OC_1[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 3 && "Write access out of array '.0.1' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__33) = llvm_cbe_tmp__34;
  llvm_cbe_tmp__35 = (signed int *)(&llvm_cbe__2e_0_2e_2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__36 = (unsigned int )*((&aesl_internal_rt_info_OC_2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 3 && "Write access out of array '.0.2' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__35) = llvm_cbe_tmp__36;
  llvm_cbe_tmp__37 = (signed int *)(&llvm_cbe__2e_0_2e_2[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__38 = (unsigned int )*((&aesl_internal_rt_info_OC_2[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 3 && "Write access out of array '.0.2' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__37) = llvm_cbe_tmp__38;
  llvm_cbe_tmp__39 = (signed int *)(&llvm_cbe__2e_0_2e_2[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__40 = (unsigned int )*((&aesl_internal_rt_info_OC_2[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 3 && "Write access out of array '.0.2' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__39) = llvm_cbe_tmp__40;
  llvm_cbe_tmp__41 = (signed int *)(&llvm_cbe__2e_0_2e_3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__42 = (unsigned int )*((&aesl_internal_rt_info_OC_3[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 3 && "Write access out of array '.0.3' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__41) = llvm_cbe_tmp__42;
  llvm_cbe_tmp__43 = (signed int *)(&llvm_cbe__2e_0_2e_3[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__44 = (unsigned int )*((&aesl_internal_rt_info_OC_3[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 3 && "Write access out of array '.0.3' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__43) = llvm_cbe_tmp__44;
  llvm_cbe_tmp__45 = (signed int *)(&llvm_cbe__2e_0_2e_3[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__46 = (unsigned int )*((&aesl_internal_rt_info_OC_3[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 3 && "Write access out of array '.0.3' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__45) = llvm_cbe_tmp__46;
  llvm_cbe_tmp__47 = (signed int *)(&llvm_cbe__2e_0_2e_4[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__48 = (unsigned int )*((&aesl_internal_rt_info_OC_4[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 3 && "Write access out of array '.0.4' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__47) = llvm_cbe_tmp__48;
  llvm_cbe_tmp__49 = (signed int *)(&llvm_cbe__2e_0_2e_4[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__50 = (unsigned int )*((&aesl_internal_rt_info_OC_4[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 3 && "Write access out of array '.0.4' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__49) = llvm_cbe_tmp__50;
  llvm_cbe_tmp__51 = (signed int *)(&llvm_cbe__2e_0_2e_4[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__52 = (unsigned int )*((&aesl_internal_rt_info_OC_4[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 3 && "Write access out of array '.0.4' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__51) = llvm_cbe_tmp__52;
  llvm_cbe_tmp__53 = (signed int *)(&llvm_cbe__2e_0_2e_5[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__54 = (unsigned int )*((&aesl_internal_rt_info_OC_5[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 3 && "Write access out of array '.0.5' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__53) = llvm_cbe_tmp__54;
  llvm_cbe_tmp__55 = (signed int *)(&llvm_cbe__2e_0_2e_5[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__56 = (unsigned int )*((&aesl_internal_rt_info_OC_5[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 3 && "Write access out of array '.0.5' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__55) = llvm_cbe_tmp__56;
  llvm_cbe_tmp__57 = (signed int *)(&llvm_cbe__2e_0_2e_5[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__58 = (unsigned int )*((&aesl_internal_rt_info_OC_5[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 3 && "Write access out of array '.0.5' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__57) = llvm_cbe_tmp__58;
  llvm_cbe_tmp__59 = (signed int *)(&llvm_cbe__2e_0_2e_6[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__60 = (unsigned int )*((&aesl_internal_rt_info_OC_6[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 3 && "Write access out of array '.0.6' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__59) = llvm_cbe_tmp__60;
  llvm_cbe_tmp__61 = (signed int *)(&llvm_cbe__2e_0_2e_6[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__62 = (unsigned int )*((&aesl_internal_rt_info_OC_6[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 3 && "Write access out of array '.0.6' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__61) = llvm_cbe_tmp__62;
  llvm_cbe_tmp__63 = (signed int *)(&llvm_cbe__2e_0_2e_6[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__64 = (unsigned int )*((&aesl_internal_rt_info_OC_6[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 3 && "Write access out of array '.0.6' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__63) = llvm_cbe_tmp__64;
  llvm_cbe_tmp__65 = (signed int *)(&llvm_cbe__2e_0_2e_7[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__66 = (unsigned int )*((&aesl_internal_rt_info_OC_7[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 3 && "Write access out of array '.0.7' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__65) = llvm_cbe_tmp__66;
  llvm_cbe_tmp__67 = (signed int *)(&llvm_cbe__2e_0_2e_7[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__68 = (unsigned int )*((&aesl_internal_rt_info_OC_7[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 3 && "Write access out of array '.0.7' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__67) = llvm_cbe_tmp__68;
  llvm_cbe_tmp__69 = (signed int *)(&llvm_cbe__2e_0_2e_7[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
  llvm_cbe_tmp__70 = (unsigned int )*((&aesl_internal_rt_info_OC_7[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]));

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 3 && "Write access out of array '.0.7' bound?");

#endif
  *((unsigned int volatile*)llvm_cbe_tmp__69) = llvm_cbe_tmp__70;
  llvm_cbe_tmp__71 = ( char *)*(&aesl_internal_rt_info_OC_8);
  *(( char *volatile*)(&llvm_cbe__2e_0_2e_8)) = ( char *)llvm_cbe_tmp__71;
  llvm_cbe_tmp__72 = (bool )((*(&aesl_internal_rt_info_OC_9))&1);
  llvm_cbe_tmp__73 = (unsigned char )((unsigned char )(bool )llvm_cbe_tmp__72&1U);
  *((unsigned char volatile*)(&llvm_cbe__2e_0_2e_9)) = llvm_cbe_tmp__73;
  llvm_cbe_tmp__74 = ( char *)*(&aesl_internal_rt_info_OC_10);
  *(( char *volatile*)(&llvm_cbe__2e_0_2e_10)) = ( char *)llvm_cbe_tmp__74;
  llvm_cbe_tmp__75 = ( char *)*(&aesl_internal_rt_info_OC_11);
  *(( char *volatile*)(&llvm_cbe__2e_0_2e_11)) = ( char *)llvm_cbe_tmp__75;
  llvm_cbe_tmp__76 = (unsigned long long )*(&aesl_internal_rt_info_OC_12);
  *((unsigned long long volatile*)(&llvm_cbe__2e_0_2e_12)) = llvm_cbe_tmp__76;
  llvm_cbe_tid3147_2e_sub_2e_i_2e_i = (signed int *)(&llvm_cbe_tid3147_2e_i_2e_i[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 3 && "Write access out of array 'tid3147.i.i' bound?");

#endif
  *llvm_cbe_tid3147_2e_sub_2e_i_2e_i = 0u;
  llvm_cbe_tid33_2e_i_2e_i = (signed int *)(&llvm_cbe_tid3147_2e_i_2e_i[(((signed int )1u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);

#ifdef AESL_BC_SIM
  assert(((signed int )1u) < 3 && "Write access out of array 'tid3147.i.i' bound?");

#endif
  *llvm_cbe_tid33_2e_i_2e_i = 0u;
  llvm_cbe_tid34_2e_i_2e_i = (signed int *)(&llvm_cbe_tid3147_2e_i_2e_i[(((signed int )2u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);

#ifdef AESL_BC_SIM
  assert(((signed int )2u) < 3 && "Write access out of array 'tid3147.i.i' bound?");

#endif
  *llvm_cbe_tid34_2e_i_2e_i = 0u;
  _ssdm_xcl_PointerMap((signed int *)llvm_cbe_arg_x_2e_i_2e_0, (signed int *)llvm_cbe_arg_x_2e_i_2e_0, 0u, 4u);
  llvm_cbe_CI_2e_i_2e_i = ( char *)(( char *)llvm_cbe_arg_x_2e_i_2e_0);
  ( char *)memcpy(( char *)(( char *)(&aesl_internal_gpu_OC_x0)), ( char *)llvm_cbe_CI_2e_i_2e_i, 64u);
  _ssdm_xcl_PointerMap((signed int *)llvm_cbe_arg_y_2e_i_2e_0, (signed int *)llvm_cbe_arg_y_2e_i_2e_0, 0u, 4u);
  llvm_cbe_CI30_2e_i_2e_i = ( char *)(( char *)llvm_cbe_arg_y_2e_i_2e_0);
  ( char *)memcpy(( char *)(( char *)(&aesl_internal_gpu_OC_y0)), ( char *)llvm_cbe_CI30_2e_i_2e_i, 64u);
  llvm_cbe_indvar_2e_reg2mem44_2e_0_2e_i_2e_i__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_for_2e_header_2e_i_2e_i;

  do {     /* Syntactic loop 'for.header.i.i' to make GCC happy */
llvm_cbe_for_2e_header_2e_i_2e_i:
  llvm_cbe_indvar_2e_reg2mem44_2e_0_2e_i_2e_i = (unsigned int )llvm_cbe_indvar_2e_reg2mem44_2e_0_2e_i_2e_i__PHI_TEMPORARY;

#ifdef AESL_BC_SIM
  assert(((signed int )0u) < 3 && "Write access out of array 'tid3147.i.i' bound?");

#endif
  *llvm_cbe_tid3147_2e_sub_2e_i_2e_i = llvm_cbe_indvar_2e_reg2mem44_2e_0_2e_i_2e_i;
  if (((llvm_cbe_indvar_2e_reg2mem44_2e_0_2e_i_2e_i&4294967295U) == (16u&4294967295U))) {
    goto llvm_cbe___AESL_call_work_item_NA6_2e_exit;
  } else {
    goto llvm_cbe__Z21async_work_grou7_2e_rentry_2e_i_2e_i;
  }

llvm_cbe__Z21async_work_grou7_2e_rentry_2e_i_2e_i:
  llvm_cbe_tmp__80 = (signed int *)(&llvm_cbe__2e_0_2e_2[(((signed int )0u))
#ifdef AESL_BC_SIM
 % 3
#endif
]);

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array '.0.2' bound?\n", __FILE__, __LINE__);

#endif
  llvm_cbe_tmp__81 = (unsigned int )*llvm_cbe_tmp__80;

#ifdef AESL_BC_SIM
  if (!(((signed int )0u) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'tid3147.i.i' bound?\n", __FILE__, __LINE__);

#endif
  llvm_cbe_tid_2e_dim_2e_i_2e_i = (unsigned int )*llvm_cbe_tid3147_2e_sub_2e_i_2e_i;
  llvm_cbe_tmp__82 = (unsigned int )((unsigned int )(llvm_cbe_tid_2e_dim_2e_i_2e_i&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__81&4294967295ull));
  llvm_cbe_tmp__83 = (float *)(&aesl_internal_gpu_OC_x0[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__82) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_gpu.x0' bound?\n", __FILE__, __LINE__);

#endif
  llvm_cbe_tmp__84 = (float )*llvm_cbe_tmp__83;
  llvm_cbe_tmp__85 = (float *)(&aesl_internal_gpu_OC_y0[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__82) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_gpu.y0' bound?\n", __FILE__, __LINE__);

#endif
  llvm_cbe_tmp__86 = (float )*llvm_cbe_tmp__85;
  llvm_cbe_tmp__87 = (float )((float )(llvm_cbe_tmp__84 + llvm_cbe_tmp__86));
  llvm_cbe_tmp__88 = (float *)(&aesl_internal_gpu_OC_x1[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__82) < 16 && "Write access out of array 'aesl_internal_gpu.x1' bound?");

#endif
  *llvm_cbe_tmp__88 = llvm_cbe_tmp__87;
  llvm_cbe_tmp__89 = (float *)(&aesl_internal_gpu_OC_x0[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__82) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_gpu.x0' bound?\n", __FILE__, __LINE__);

#endif
  llvm_cbe_tmp__90 = (float )*llvm_cbe_tmp__89;
  llvm_cbe_tmp__91 = (float *)(&aesl_internal_gpu_OC_y0[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__82) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_gpu.y0' bound?\n", __FILE__, __LINE__);

#endif
  llvm_cbe_tmp__92 = (float )*llvm_cbe_tmp__91;
  llvm_cbe_tmp__93 = (float )((float )(llvm_cbe_tmp__90 - llvm_cbe_tmp__92));
  llvm_cbe_tmp__94 = (float *)(&aesl_internal_gpu_OC_y1[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__82) < 16 && "Write access out of array 'aesl_internal_gpu.y1' bound?");

#endif
  *llvm_cbe_tmp__94 = llvm_cbe_tmp__93;
  llvm_cbe_tmp__95 = (float *)(&aesl_internal_gpu_OC_x1[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__82) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_gpu.x1' bound?\n", __FILE__, __LINE__);

#endif
  llvm_cbe_tmp__96 = (float )*llvm_cbe_tmp__95;
  llvm_cbe_tmp__97 = (float )((float )(llvm_cbe_tmp__96 * llvm_cbe_tmp__93));
  llvm_cbe_tmp__98 = (float *)(&aesl_internal_gpu_OC_x2[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__82) < 16 && "Write access out of array 'aesl_internal_gpu.x2' bound?");

#endif
  *llvm_cbe_tmp__98 = llvm_cbe_tmp__97;
  llvm_cbe_tmp__99 = (float *)(&aesl_internal_gpu_OC_x0[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__82) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_gpu.x0' bound?\n", __FILE__, __LINE__);

#endif
  llvm_cbe_tmp__100 = (float )*llvm_cbe_tmp__99;
  llvm_cbe_tmp__101 = (float *)(&aesl_internal_gpu_OC_y1[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__82) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_gpu.y1' bound?\n", __FILE__, __LINE__);

#endif
  llvm_cbe_tmp__102 = (float )*llvm_cbe_tmp__101;
  llvm_cbe_tmp__103 = (float )((float )(llvm_cbe_tmp__102 + 0x1.921cacp1));
  llvm_cbe_tmp__104 = (float )((float )(llvm_cbe_tmp__100 / llvm_cbe_tmp__103));
  llvm_cbe_tmp__105 = (float *)(&aesl_internal_gpu_OC_y2[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  assert(((signed int )llvm_cbe_tmp__82) < 16 && "Write access out of array 'aesl_internal_gpu.y2' bound?");

#endif
  *llvm_cbe_tmp__105 = llvm_cbe_tmp__104;
  llvm_cbe_tmp__106 = (float *)(&aesl_internal_gpu_OC_x2[(((signed int )llvm_cbe_tmp__82))
#ifdef AESL_BC_SIM
 % 16
#endif
]);

#ifdef AESL_BC_SIM
  if (!(((signed int )llvm_cbe_tmp__82) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_gpu.x2' bound?\n", __FILE__, __LINE__);

#endif
  llvm_cbe_tmp__107 = (float )*llvm_cbe_tmp__106;
  llvm_cbe_tmp__108 = (float )((float )(llvm_cbe_tmp__107 + llvm_cbe_tmp__104));
  llvm_cbe_gep_idx_2e_i_2e_i = (unsigned int )llvm_cbe_tmp__82 & 1073741823u;
  llvm_cbe_arg_z_2e_i_2e_0_2e_sum = (unsigned int )((unsigned int )(llvm_cbe_tmp__27&4294967295ull)) + ((unsigned int )(llvm_cbe_gep_idx_2e_i_2e_i&4294967295ull));
  llvm_cbe_tmp__109 = (signed int *)(&gmem[(((signed int )llvm_cbe_arg_z_2e_i_2e_0_2e_sum))]);
  llvm_cbe_val_2e_i_2e_i = (unsigned int )(llvm_cbe_val_2e_i_2e_i__BITCAST_TEMPORARY.Float = llvm_cbe_tmp__108, llvm_cbe_val_2e_i_2e_i__BITCAST_TEMPORARY.Int32);
  *llvm_cbe_tmp__109 = llvm_cbe_val_2e_i_2e_i;
  llvm_cbe_indvar_2e_inc_2e_reg2mem_2e_0_2e_i_2e_i = (unsigned int )((unsigned int )(llvm_cbe_indvar_2e_reg2mem44_2e_0_2e_i_2e_i&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
  _ssdm_SpecLoopFlatten(0u, ( char (*)[1])(*(&aesl_internal_str)));
  llvm_cbe_indvar_2e_reg2mem44_2e_0_2e_i_2e_i__PHI_TEMPORARY = (unsigned int )llvm_cbe_indvar_2e_inc_2e_reg2mem_2e_0_2e_i_2e_i;   /* for PHI node */
  goto llvm_cbe_for_2e_header_2e_i_2e_i;

  } while (1); /* end of syntactic loop 'for.header.i.i' */
llvm_cbe___AESL_call_work_item_NA6_2e_exit:
  return;
}

