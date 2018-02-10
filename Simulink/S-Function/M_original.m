function [sys,x0,str,ts,simStateCompliance] = M_eg(t,x,u,flag)
% M�ļ�S-Function ���岿��
% �������ƣ�M_eg
% ��Ҫ���ܣ������������flag����ֵ������Ӧ�ĺ���
switch flag,

  %%%%%%%%%%%%%%%%%%
  % Initialization %
  %%%%%%%%%%%%%%%%%%
  case 0,
  % ��flag = 0ʱ����mdlInitializeSizes����ִ�г�ʼ��
    [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes;

  %%%%%%%%%%%%%%%
  % Derivatives %
  %%%%%%%%%%%%%%%
  case 1,
  % ��flag = 1ʱ����mdlDerivatives������������״̬������
    sys=mdlDerivatives(t,x,u);

  %%%%%%%%%%
  % Update %
  %%%%%%%%%%
  case 2,
  % ��flag = 2ʱ����mdlUpdate����������ɢ״̬����ֵ
    sys=mdlUpdate(t,x,u);

  %%%%%%%%%%%
  % Output %
  %%%%%%%%%%%
  case 3,
  % ��flag = 3ʱ����mdlOutputs������������źŵ���ֵ
    sys=mdlOutputs(t,x,u);

  %%%%%%%%%%%%%%%%%%%%%%%
  % GetTimeOfNextVarHit %
  %%%%%%%%%%%%%%%%%%%%%%%
  case 4,
  % ��flag = 4ʱ����mdlGetTimeOfNextVarHit����������һ������ʱ��
  % ֻ���ڱ����ʱ��ģ��
    sys=mdlGetTimeOfNextVarHit(t,x,u);

  %%%%%%%%%%%%%
  % Terminate %
  %%%%%%%%%%%%%
  case 9,
  % ��flag = 9ʱ����mdlTerminate������������
    sys=mdlTerminate(t,x,u);

  %%%%%%%%%%%%%%%%%%%%
  % Unexpected flags %
  %%%%%%%%%%%%%%%%%%%%
  otherwise
  % ��flagΪ������ֵʱ��ʾ������̳���    
    DAStudio.error('Simulink:blocks:unhandledFlag', num2str(flag));

end
% end M_eg


%=============================================================================
% mdlInitializeSizes
% S-function�ĳ�ʼ��.
%=============================================================================
function [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes
% ����simsizes���һ�����ڴ�ų�����Ϣ�Ľṹ
% -1��ʾ��̬ȷ���ķ�Χ
sizes = simsizes;

sizes.NumContStates  = 0;   %��������״̬�ĸ���
sizes.NumDiscStates  = 0;   %������ɢ״̬�ĸ���
sizes.NumOutputs     = 0;   %��������źŸ���
sizes.NumInputs      = 0;   %���������źŸ���
sizes.DirFeedthrough = 1;   %����ֱ�ӷ���
% 0��ʾû��ֱ�ӷ�����1��ʾ����ֱ�ӷ���
sizes.NumSampleTimes = 1;   %���ó���ʱ���������Ϊ1
sys = simsizes(sizes);      %����simsizes��sizes�ṹ���ظ�sys

x0  = [];                   %����S-Function�ĳ�ʼ״̬x0
str = [];                   %����S-Function�ı�������str��Ӧ������Ϊ��������
ts  = [0 0];                %����ʱ��
% ts��һ����������Ԫ�صľ������е�һ�б�ʾ����ʱ�䣬����һ�б�ʾʱ��ƫ��
% ���ȡ��������Ϊ-1���򽫼̳������źŵĲ�������

% Specify the block simStateCompliance. The allowed values are:
%    'UnknownSimState', < The default setting; warn and assume DefaultSimState
%    'DefaultSimState', < Same sim state as a built-in block
%    'HasNoSimState',   < No sim state
%    'DisallowSimState' < Error out when saving or restoring the model sim state
simStateCompliance = 'UnknownSimState';
% end mdlInitializeSizes


%=============================================================================
% mdlDerivatives
% ����S-Function����״̬�ĵ�����ͨ��sys�������ظ�simulink���л��ּ���
%=============================================================================
function sys=mdlDerivatives(t,x,u)
sys = [];
% end mdlDerivatives


%=============================================================================
% mdlUpdate
% ����S-Function����ɢ״̬��ͨ��sys��Simulink������Щ״̬����ֵ
%=============================================================================
function sys=mdlUpdate(t,x,u)
sys = [];
% end mdlUpdate


%=============================================================================
% mdlOutputs
% ����S-Function������źŲ�ͨ��sys�������ظ�Simulink
%=============================================================================
function sys=mdlOutputs(t,x,u)
sys = [];
% end mdlOutputs


%=============================================================================
% mdlGetTimeOfNextVarHit
% ������һ������ʱ�̲��ҷ��ظ�Simulink
% ������ֻ�����ڿɱ䲽����ɢ����ʱ�����ڳ�ʼ�������а�ts����Ϊ[-2 0]
%=============================================================================
function sys=mdlGetTimeOfNextVarHit(t,x,u)
% һ��������һ��ʱ�̳���ʱ�̵�ʵ��
% ��һ������ʱ������Ϊ�뵱ǰʱ�����1s
sampleTime = 1; 
sys = t + sampleTime;
% end mdlGetTimeOfNextVarHit


%=============================================================================
% mdlTerminate
% �ڷ������ʱִ����������������ڴ��
%=============================================================================
function sys=mdlTerminate(t,x,u)
% ���÷��ز���sysΪ�վ���[ ]
sys = [];
% end mdlTerminate
