#define S_FUNCTION_NAME  C_eg     /* your_sfunction_name_here */
#define S_FUNCTION_LEVEL 2        

#include "simstruc.h"             

/* ??? ��ȷ��ʲôʱ����� */
#define U(element) (*uPtrs[element])  /* Pointer to Input Port0 */

static void mdlInitializeSizes(SimStruct *S)
{
    ssSetNumSFcnParams(S, NPARAMS);     /* ����S-function�Ĳ������� */
    if (ssGetNumSFcnParams(S) != ssGetSFcnParamsCount(S)) {
        return;                   /* ���S-function������Ŀ�Ƿ������õ�һ�� */
    }

    ssSetNumContStates(S, 0);     /* ��������״̬���� */
    ssSetNumDiscStates(S, 0);     /* ������ɢ״̬���� */
      
    if (!ssSetNumInputPorts(S, 1)) return;        /* ����S-function����˿��� */
    ssSetInputPortWidth(S, 0, width);             /* ��������˿ڵĿ�� */
    ssSetInputPortRequiredContiguous(S, 0, true); /* ���ø�������˿��е�Ԫ���Ƿ����������ڴ��� */
    ssSetInputPortDirectFeedThrough(S, 0, 1);     /* ����S-function����ֱ�ӷ��� */
    
    /* ??? ��ȷ��ʲôʱ����� */
    ssSetInputPortSampleTime(S, 0, CONTINUOUS_SAMPLE_TIME);
    ssSetInputPortOffsetTime(S, 0, 0.0);
    

    if (!ssSetNumOutputPorts(S, 1)) return;       /* ����S-function����˿��� */
    ssSetOutputPortWidth(S, 0, width);            /* ����S-function����˿ڿ�� */
    
    /* ??? ��ȷ��ʲôʱ����� */
    ssSetOutputPortSampleTime(S, 0, 1.0);
    ssSetOutputPortOffsetTime(S, 0, 0.0);
    

    ssSetNumSampleTimes(S, 1);     /* ���ó���ʱ����� */
    ssSetNumRWork(S, 0);           /* ���ø��������������ĳ��� */
    ssSetNumIWork(S, 0);           /* �������幤�������ĳ��� */
    ssSetNumPWork(S, 0);           /* ����ָ�빤�������ĳ��� */
    ssSetNumModes(S, 0);           /* ���ù���ģʽ�����ĳ��� */
    ssSetNumNonsampledZCs(S, 0);   /* ���ù������״̬�ĸ��� */

    /* Specify the sim state compliance to be same as a built-in block */
    ssSetSimStateCompliance(S, USE_DEFAULT_SIM_STATE);

    ssSetOptions(S, 0);            /* ����S-function����ģʽ��ѡ�� */
    /* If all of your "run-time" methods within your S-function are exception free 
     * ssSetOptions(S, SS_OPTION_RUNTIME_EXCEPTION_FREE_CODE) */
    
    /* SS_OPTION_ALLOW_CONSTANT_PORT_SAMPLE_TIME �㶨�Ĳ���ʱ�� */
    
    /* SS_OPTION_ALLOW_PORT_BASED_SAMPLE_TIME_IN_TRIGSS ������ϵͳ */
    
    /* SS_OPTION_WORKS_WITH_CODE_REUSE  */
    
    /* If you do not call mexErrMsgTxt or any other routines that cause exceptions
     *  ssSetOptions(S, SS_OPTION_EXCEPTION_FREE_CODE) */
    
    /* SS_OPTION_USE_TLC_WITH_ACCELERATOR  */
    
    /* SS_OPTION_PORT_SAMPLE_TIMES_ASSIGNED ���ڿ�����ڶ˿ڵĻ�ϲ���ʱ�� */
    /*  */
}



static void mdlInitializeSampleTimes(SimStruct *S)
{
    ssSetSampleTime(S, 0, CONTINUOUS_SAMPLE_TIME);    /* ���ó���ʱ�� */
    /* INHERITED_SAMPLE_TIME��0 */
    /* CONTINUOUS_SAMPLE_TIME��0 */
    /* CONTINUOUS_SAMPLE_TIME��FIXED_IN_MINOR_STEP_OFFSET */
    /* discrete_sample_time_period��offset */
    /* VARIABLE_SAMPLE_TIME��0.0 */
    ssSetOffsetTime(S, 0, 0.0);                       /* ���ó���ʱ��ƫ�� */
}



#define MDL_INITIALIZE_CONDITIONS 
#if defined(MDL_INITIALIZE_CONDITIONS)
  /* Function: mdlInitializeConditions */
  static void mdlInitializeConditions(SimStruct *S)
  {
    real_T *x(C)0 = ssGetContStates(S);        /* ͨ��ssGetContState(s)�������״̬ */     
    real_T *x(D)0 = ssGetRealDiscStates(S);    /* ͨ��ssGetRealDisState(s)�����ɢ״̬ */ 
    int_T  lp;

    for (lp=0;lp<N;lp++) { 
        *x(C)0++=[ ];                          /* ��ʼ������״̬ */
        *x(D)0++=[ ];                          /* ��ʼ����ɢ״̬ */
  }
#endif /* MDL_INITIALIZE_CONDITIONS */



#define MDL_START
#if defined(MDL_START) 
  /* Function: mdlStart */
  /* ���濪ʼʱ�ĳ�ʼ������ */
  /* ���������������ִֻ��һ�� */   
  static void mdlStart(SimStruct *S)
  {
  }
#endif /*  MDL_START */



static void mdlOutputs(SimStruct *S, int_T tid)
{
    real_T            *y    = ssGetOutputPortRealSignal(S,0);       
    /* �������˿ڵ�����ź����� */
    real_T            *x(C) = ssGetContStates(S);
    real_T            *x(D) = ssGetRealDiscStates(S);
    InputRealPtrsType uPtrs = ssGetInputPortRealSignalPtrs(S,0);    
    /* �������˿ڵ������ź����� */
        
    UNUSED_ARG(tid);    /* not used in single tasking mode */
    
    y[0] = [ ];         /* ��������źŵ���ֵ */
}



#define MDL_UPDATE    /* �������Ҫ����mdlUpdate��������#define����Ϊ#undefine */
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



#define MDL_DERIVATIVES    /* �������Ҫ����mdlDerivaives��������#define����Ϊ#undefine */
#if defined(MDL_DERIVATIVES) 
static void mdlDerivatives(SimStruct *S)
  {
    real_T            *dx   = ssGetdX(S);    /* ͨ��ssGetdX(s)�������״̬�������� */ 
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
