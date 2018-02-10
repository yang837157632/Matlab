function [sys,x0,str,ts,simStateCompliance] = M_eg(t,x,u,flag)

switch flag,
  
  case 0,
      [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes;

  case 1,
      sys=mdlDerivatives(t,x,u);

  case 2,
     sys=mdlUpdate(t,x,u);

  case 3,
      sys=mdlOutputs(t,x,u);

  case 4,
    sys=mdlGetTimeOfNextVarHit(t,x,u);

  case 9,
     sys=mdlTerminate(t,x,u);

  otherwise 
    DAStudio.error('Simulink:blocks:unhandledFlag', num2str(flag));

end


function [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes
% -1��ʾ��̬ȷ���ķ�Χ
sizes = simsizes;
sizes.NumContStates  = 0;   %��������״̬�ĸ���  
% size(A,1)
sizes.NumDiscStates  = 0;   %������ɢ״̬�ĸ���  
% size(A,1)
sizes.NumOutputs     = 0;   %��������źŸ���    
% size(D,1)    -1��ʾdynamically sized
sizes.NumInputs      = 0;   %���������źŸ���    
% size(D,2)    -1��ʾdynamically sized
sizes.DirFeedthrough = 1;   %���÷�����0û��ֱ�ӷ�����1����ֱ�ӷ���
sizes.NumSampleTimes = 1;   %���ó���ʱ���������Ϊ1,��ts���
sys = simsizes(sizes);      

str = []; 
x0  = [];                   %����S-Function�ĳ�ʼ״̬x0
%������ʱ������zeros(sizes.NumContStates,1)����ɢones(sizes.NumDiscStates,1)                
ts  = [0 0];                %��������Ԫ�صľ��󣬵�һ�г���ʱ�䣬��һ��ʱ��ƫ��
% ��������ʱ�� [0 0]  [0 1]
% ��ɢ����ʱ�� [dperiod doffset]
% �ɱ����ʱ�� [-2 0]
% �̳в���ʱ�� [-1 0]

simStateCompliance = 'UnknownSimState';


function sys=mdlDerivatives(t,x,u)
sys = [];
% ����S-Function����״̬�ĵ�����ͨ��sys�������ظ�simulink���л��ּ���


function sys=mdlUpdate(t,x,u)
sys = [];
% ����S-Function����ɢ״̬��ͨ��sys��Simulink������Щ״̬����ֵ


function sys=mdlOutputs(t,x,u)
sys = [];
% ����S-Function������źŲ�ͨ��sys�������ظ�Simulink


function sys=mdlGetTimeOfNextVarHit(t,x,u)
sampleTime = []; 
sys = t + sampleTime;
% ������һ������ʱ�̲��ҷ��ظ�Simulink


function sys=mdlTerminate(t,x,u)
sys = [];
