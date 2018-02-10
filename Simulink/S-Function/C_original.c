#define S_FUNCTION_NAME  C_eg     /* C_eg.c��C����S-functionģ�� */
#define S_FUNCTION_LEVEL 2        /* S-function�İ汾����������Ϊ2 */

#include "simstruc.h"             /* �ļ�simstruc.h������Simstruct�ṹ�Լ���Ӧ�ĺ� */

/* S-function��ʼ�� */
static void mdlInitializeSizes(SimStruct *S)
{
    ssSetNumSFcnParams(S, 0);     /* ����S-function�Ĳ����������ò�����Ŀ����ssSetNumSFcnParams �е�0�� */
    if (ssGetNumSFcnParams(S) != ssGetSFcnParamsCount(S)) {
        return;                   /* ���S-function������Ŀ�Ƿ������õ�һ�£������һ�£�ֱ�ӷ��� */
    }

    ssSetNumContStates(S, 0);     /* ��������״̬���� */
    ssSetNumDiscStates(S, 0);     /* ������ɢ״̬���� */
      
    if (!ssSetNumInputPorts(S, 1)) return;        /* ����S-function����˿��� */
    ssSetInputPortWidth(S, 0, 1);                 /* ��������˿ڵĿ�� */
    ssSetInputPortRequiredContiguous(S, 0, true); /* ���ø�������˿��е�Ԫ���Ƿ����������ڴ��� */
    ssSetInputPortDirectFeedThrough(S, 0, 1);     /* ����S-function����ֱ�ӷ��� */

    if (!ssSetNumOutputPorts(S, 1)) return;       /* ����S-function����˿��� */
    ssSetOutputPortWidth(S, 0, 1);                /* ����S-function����˿ڿ�� */

    ssSetNumSampleTimes(S, 1);     /* ���ó���ʱ�����������ʱ��mdlInitializeSampleTines�еĶ��� */
    ssSetNumRWork(S, 0);           /* ���ø��������������ĳ��� */
    ssSetNumIWork(S, 0);           /* �������幤�������ĳ��� */
    ssSetNumPWork(S, 0);           /* ����ָ�빤�������ĳ��� */
    ssSetNumModes(S, 0);           /* ���ù���ģʽ�����ĳ��� */
    ssSetNumNonsampledZCs(S, 0);   /* ���ù������״̬�ĸ��� */

    /* Specify the sim state compliance to be same as a built-in block */
    ssSetSimStateCompliance(S, USE_DEFAULT_SIM_STATE);

    ssSetOptions(S, 0);            /* ����S-function����ģʽ��ѡ�� */
}



/* Function: mdlInitializeSampleTimes */
static void mdlInitializeSampleTimes(SimStruct *S)
{
    ssSetSampleTime(S, 0, CONTINUOUS_SAMPLE_TIME);    /* ���ó���ʱ�� */
    ssSetOffsetTime(S, 0, 0.0);                       /* ���ó���ʱ��ƫ�� */
}



#define MDL_INITIALIZE_CONDITIONS 
#if defined(MDL_INITIALIZE_CONDITIONS)
  /* Function: mdlInitializeConditions */
  /* ��ʼ������״̬����ɢ״̬ */
  /* ͨ��ssGetContState(s)�������״̬ */
  /* ͨ��ssGetRealDisState(s)�����ɢ״̬ */
  static void mdlInitializeConditions(SimStruct *S)
  {
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



/* Function: mdlOutputs */
/* ��������źŵ���ֵ */
/* ͨ��ssGetY(s)�������ź����� */
static void mdlOutputs(SimStruct *S, int_T tid)
{
    const real_T *u = (const real_T*) ssGetInputPortSignal(S,0);    /* �������˿ڵ������ź����� */
    real_T       *y = ssGetOutputPortSignal(S,0);                   /* �������˿ڵ�����ź����� */
    y[0] = u[0];
}



#define MDL_UPDATE    /* �������Ҫ����mdlUpdate��������#define����Ϊ#undefine */
#if defined(MDL_UPDATE)
  /* Function: mdlUpdate */
  /* ������ɢ״̬ */
  /* ÿ������ʱ�̵���ʱִ��һ�� */
  static void mdlUpdate(SimStruct *S, int_T tid)
  {
  }
#endif /* MDL_UPDATE */



#define MDL_DERIVATIVES    /* �������Ҫ����mdlDerivaives��������#define����Ϊ#undefine */
#if defined(MDL_DERIVATIVES)
  /* Function: mdlDerivatives */
  /* ��������״̬�ĵ��� */
  /* ͨ��ssGetdX(s)�������״̬�������� */  
  static void mdlDerivatives(SimStruct *S)
  {
  }
#endif /* MDL_DERIVATIVES */



/* Function: mdlTerminate */
/* ִ�з������ʱ�������� */
static void mdlTerminate(SimStruct *S)
{
}



#ifdef  MATLAB_MEX_FILE    
#include "simulink.c"      /* ��������������MEX�ļ�������simulink.c�ļ� */
#else
#include "cg_sfun.h"       /* ��������cg_sfun.h�ļ� */
#endif
