#define S_FUNCTION_NAME  C_eg     /* C_eg.c：C语言S-function模板 */
#define S_FUNCTION_LEVEL 2        /* S-function的版本，必须设置为2 */

#include "simstruc.h"             /* 文件simstruc.h定义了Simstruct结构以及相应的宏 */

/* S-function初始化 */
static void mdlInitializeSizes(SimStruct *S)
{
    ssSetNumSFcnParams(S, 0);     /* 设置S-function的参数个数（用参数数目代替ssSetNumSFcnParams 中的0） */
    if (ssGetNumSFcnParams(S) != ssGetSFcnParamsCount(S)) {
        return;                   /* 检查S-function参数数目是否与设置的一致，如果不一致，直接返回 */
    }

    ssSetNumContStates(S, 0);     /* 设置连续状态个数 */
    ssSetNumDiscStates(S, 0);     /* 设置离散状态个数 */
      
    if (!ssSetNumInputPorts(S, 1)) return;        /* 设置S-function输入端口数 */
    ssSetInputPortWidth(S, 0, 1);                 /* 设置输入端口的宽度 */
    ssSetInputPortRequiredContiguous(S, 0, true); /* 设置各个输入端口中的元素是否存放在连续内存中 */
    ssSetInputPortDirectFeedThrough(S, 0, 1);     /* 设置S-function存在直接反馈 */

    if (!ssSetNumOutputPorts(S, 1)) return;       /* 设置S-function输出端口数 */
    ssSetOutputPortWidth(S, 0, 1);                /* 设置S-function输出端口宽度 */

    ssSetNumSampleTimes(S, 1);     /* 设置抽样时间个数（抽样时间mdlInitializeSampleTines中的定义 */
    ssSetNumRWork(S, 0);           /* 设置浮点数工作向量的长度 */
    ssSetNumIWork(S, 0);           /* 设置整体工作向量的长度 */
    ssSetNumPWork(S, 0);           /* 设置指针工作向量的长度 */
    ssSetNumModes(S, 0);           /* 设置工作模式向量的长度 */
    ssSetNumNonsampledZCs(S, 0);   /* 设置过零点检测状态的个数 */

    /* Specify the sim state compliance to be same as a built-in block */
    ssSetSimStateCompliance(S, USE_DEFAULT_SIM_STATE);

    ssSetOptions(S, 0);            /* 设置S-function工作模式的选项 */
}



/* Function: mdlInitializeSampleTimes */
static void mdlInitializeSampleTimes(SimStruct *S)
{
    ssSetSampleTime(S, 0, CONTINUOUS_SAMPLE_TIME);    /* 设置抽样时间 */
    ssSetOffsetTime(S, 0, 0.0);                       /* 设置抽样时间偏移 */
}



#define MDL_INITIALIZE_CONDITIONS 
#if defined(MDL_INITIALIZE_CONDITIONS)
  /* Function: mdlInitializeConditions */
  /* 初始化连续状态和离散状态 */
  /* 通过ssGetContState(s)获得连续状态 */
  /* 通过ssGetRealDisState(s)获得离散状态 */
  static void mdlInitializeConditions(SimStruct *S)
  {
  }
#endif /* MDL_INITIALIZE_CONDITIONS */



#define MDL_START
#if defined(MDL_START) 
  /* Function: mdlStart */
  /* 仿真开始时的初始化操作 */
  /* 在整个仿真过程中只执行一次 */   
  static void mdlStart(SimStruct *S)
  {
  }
#endif /*  MDL_START */



/* Function: mdlOutputs */
/* 计算输出信号的数值 */
/* 通过ssGetY(s)获得输出信号向量 */
static void mdlOutputs(SimStruct *S, int_T tid)
{
    const real_T *u = (const real_T*) ssGetInputPortSignal(S,0);    /* 获得输入端口的输入信号向量 */
    real_T       *y = ssGetOutputPortSignal(S,0);                   /* 获得输出端口的输出信号向量 */
    y[0] = u[0];
}



#define MDL_UPDATE    /* 如果不需要定义mdlUpdate函数，则将#define设置为#undefine */
#if defined(MDL_UPDATE)
  /* Function: mdlUpdate */
  /* 更新离散状态 */
  /* 每个抽样时刻到来时执行一次 */
  static void mdlUpdate(SimStruct *S, int_T tid)
  {
  }
#endif /* MDL_UPDATE */



#define MDL_DERIVATIVES    /* 如果不需要定义mdlDerivaives函数，则将#define设置为#undefine */
#if defined(MDL_DERIVATIVES)
  /* Function: mdlDerivatives */
  /* 计算连续状态的导数 */
  /* 通过ssGetdX(s)获得连续状态导数向量 */  
  static void mdlDerivatives(SimStruct *S)
  {
  }
#endif /* MDL_DERIVATIVES */



/* Function: mdlTerminate */
/* 执行仿真结束时的清理工作 */
static void mdlTerminate(SimStruct *S)
{
}



#ifdef  MATLAB_MEX_FILE    
#include "simulink.c"      /* 如果本函数编译成MEX文件则链接simulink.c文件 */
#else
#include "cg_sfun.h"       /* 否则，链接cg_sfun.h文件 */
#endif
