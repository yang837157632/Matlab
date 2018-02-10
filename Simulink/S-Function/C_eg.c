#define S_FUNCTION_NAME  C_eg     /* your_sfunction_name_here */
#define S_FUNCTION_LEVEL 2        

#include "simstruc.h"             

/* ??? 不确定什么时候加上 */
#define U(element) (*uPtrs[element])  /* Pointer to Input Port0 */

static void mdlInitializeSizes(SimStruct *S)
{
    ssSetNumSFcnParams(S, NPARAMS);     /* 设置S-function的参数个数 */
    if (ssGetNumSFcnParams(S) != ssGetSFcnParamsCount(S)) {
        return;                   /* 检查S-function参数数目是否与设置的一致 */
    }

    ssSetNumContStates(S, 0);     /* 设置连续状态个数 */
    ssSetNumDiscStates(S, 0);     /* 设置离散状态个数 */
      
    if (!ssSetNumInputPorts(S, 1)) return;        /* 设置S-function输入端口数 */
    ssSetInputPortWidth(S, 0, width);             /* 设置输入端口的宽度 */
    ssSetInputPortRequiredContiguous(S, 0, true); /* 设置各个输入端口中的元素是否存放在连续内存中 */
    ssSetInputPortDirectFeedThrough(S, 0, 1);     /* 设置S-function存在直接反馈 */
    
    /* ??? 不确定什么时候加上 */
    ssSetInputPortSampleTime(S, 0, CONTINUOUS_SAMPLE_TIME);
    ssSetInputPortOffsetTime(S, 0, 0.0);
    

    if (!ssSetNumOutputPorts(S, 1)) return;       /* 设置S-function输出端口数 */
    ssSetOutputPortWidth(S, 0, width);            /* 设置S-function输出端口宽度 */
    
    /* ??? 不确定什么时候加上 */
    ssSetOutputPortSampleTime(S, 0, 1.0);
    ssSetOutputPortOffsetTime(S, 0, 0.0);
    

    ssSetNumSampleTimes(S, 1);     /* 设置抽样时间个数 */
    ssSetNumRWork(S, 0);           /* 设置浮点数工作向量的长度 */
    ssSetNumIWork(S, 0);           /* 设置整体工作向量的长度 */
    ssSetNumPWork(S, 0);           /* 设置指针工作向量的长度 */
    ssSetNumModes(S, 0);           /* 设置工作模式向量的长度 */
    ssSetNumNonsampledZCs(S, 0);   /* 设置过零点检测状态的个数 */

    /* Specify the sim state compliance to be same as a built-in block */
    ssSetSimStateCompliance(S, USE_DEFAULT_SIM_STATE);

    ssSetOptions(S, 0);            /* 设置S-function工作模式的选项 */
    /* If all of your "run-time" methods within your S-function are exception free 
     * ssSetOptions(S, SS_OPTION_RUNTIME_EXCEPTION_FREE_CODE) */
    
    /* SS_OPTION_ALLOW_CONSTANT_PORT_SAMPLE_TIME 恒定的采样时间 */
    
    /* SS_OPTION_ALLOW_PORT_BASED_SAMPLE_TIME_IN_TRIGSS 触发子系统 */
    
    /* SS_OPTION_WORKS_WITH_CODE_REUSE  */
    
    /* If you do not call mexErrMsgTxt or any other routines that cause exceptions
     *  ssSetOptions(S, SS_OPTION_EXCEPTION_FREE_CODE) */
    
    /* SS_OPTION_USE_TLC_WITH_ACCELERATOR  */
    
    /* SS_OPTION_PORT_SAMPLE_TIMES_ASSIGNED 基于块与基于端口的混合采样时间 */
    /*  */
}



static void mdlInitializeSampleTimes(SimStruct *S)
{
    ssSetSampleTime(S, 0, CONTINUOUS_SAMPLE_TIME);    /* 设置抽样时间 */
    /* INHERITED_SAMPLE_TIME，0 */
    /* CONTINUOUS_SAMPLE_TIME，0 */
    /* CONTINUOUS_SAMPLE_TIME，FIXED_IN_MINOR_STEP_OFFSET */
    /* discrete_sample_time_period，offset */
    /* VARIABLE_SAMPLE_TIME，0.0 */
    ssSetOffsetTime(S, 0, 0.0);                       /* 设置抽样时间偏移 */
}



#define MDL_INITIALIZE_CONDITIONS 
#if defined(MDL_INITIALIZE_CONDITIONS)
  /* Function: mdlInitializeConditions */
  static void mdlInitializeConditions(SimStruct *S)
  {
    real_T *x(C)0 = ssGetContStates(S);        /* 通过ssGetContState(s)获得连续状态 */     
    real_T *x(D)0 = ssGetRealDiscStates(S);    /* 通过ssGetRealDisState(s)获得离散状态 */ 
    int_T  lp;

    for (lp=0;lp<N;lp++) { 
        *x(C)0++=[ ];                          /* 初始化连续状态 */
        *x(D)0++=[ ];                          /* 初始化离散状态 */
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



static void mdlOutputs(SimStruct *S, int_T tid)
{
    real_T            *y    = ssGetOutputPortRealSignal(S,0);       
    /* 获得输出端口的输出信号向量 */
    real_T            *x(C) = ssGetContStates(S);
    real_T            *x(D) = ssGetRealDiscStates(S);
    InputRealPtrsType uPtrs = ssGetInputPortRealSignalPtrs(S,0);    
    /* 获得输入端口的输入信号向量 */
        
    UNUSED_ARG(tid);    /* not used in single tasking mode */
    
    y[0] = [ ];         /* 计算输出信号的数值 */
}



#define MDL_UPDATE    /* 如果不需要定义mdlUpdate函数，则将#define设置为#undefine */
#if defined(MDL_UPDATE)
    static void mdlUpdate(SimStruct *S, int_T tid)
  {
    real_T            tempX[2] = {0.0, 0.0};
    real_T            *x       = ssGetRealDiscStates(S);
    InputRealPtrsType uPtrs    = ssGetInputPortRealSignalPtrs(S,0);

    UNUSED_ARG(tid);    /* not used in single tasking mode */

    tempX[0]=[ ];
    tempX[1]=[ ];
 
    x[0]=tempX[0];
    x[1]=tempX[1];
  }
#endif /* MDL_UPDATE */



#define MDL_DERIVATIVES    /* 如果不需要定义mdlDerivaives函数，则将#define设置为#undefine */
#if defined(MDL_DERIVATIVES) 
static void mdlDerivatives(SimStruct *S)
  {
    real_T            *dx   = ssGetdX(S);    /* 通过ssGetdX(s)获得连续状态导数向量 */ 
    real_T            *x    = ssGetContStates(S);
    InputRealPtrsType uPtrs = ssGetInputPortRealSignalPtrs(S,0);

    dx[0]=[ ];
    dx[1]=[ ];
  }
#endif /* MDL_DERIVATIVES */



#define MDL_GET_TIME_OF_NEXT_VAR_HIT
static void mdlGetTimeOfNextVarHit(SimStruct *S)
{
    time_T timeOfNextHit = ssGetT(S)+ offset;
    ssSetTNext(S, timeOfNextHit);
}



static void mdlTerminate(SimStruct *S)
{
}



#ifdef  MATLAB_MEX_FILE    
#include "simulink.c"
#else
#include "cg_sfun.h" 
#endif
