function [sys,x0,str,ts,simStateCompliance] = timesn(t,x,u,flag,n)
% ��Ҫ���ܣ�����������n��
switch flag,
  case 0,
     [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes;
  case {1,2,4,9}
     sys=[];
  case 3,
      sys=mdlOutputs(t,x,u,n);
  otherwise
    DAStudio.error('Simulink:blocks:unhandledFlag', num2str(flag));
end


% mdlInitializeSizes
function [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes
sizes = simsizes;
sizes.NumContStates  = 0;   %��������״̬�ĸ���
sizes.NumDiscStates  = 0;   %������ɢ״̬�ĸ���
sizes.NumOutputs     = -1;   %��������źŸ���
sizes.NumInputs      = -1;   %���������źŸ���
sizes.DirFeedthrough = 1;   %����ֱ�ӷ���

sizes.NumSampleTimes = 1;   %���ó���ʱ���������Ϊ1
sys = simsizes(sizes);      %����simsizes��sizes�ṹ���ظ�sys

x0  = [];                   %����S-Function�ĳ�ʼ״̬x0
str = [];                   %����S-Function�ı�������str��Ӧ������Ϊ��������
ts  = [-1 0];                %����ʱ��
% ts��һ����������Ԫ�صľ������е�һ�б�ʾ����ʱ�䣬����һ�б�ʾʱ��ƫ��
% ���ȡ��������Ϊ-1���򽫼̳������źŵĲ�������

% Specify the block simStateCompliance. The allowed values are:
%    'UnknownSimState', < The default setting; warn and assume DefaultSimState
%    'DefaultSimState', < Same sim state as a built-in block
%    'HasNoSimState',   < No sim state
%    'DisallowSimState' < Error out when saving or restoring the model sim state
simStateCompliance = 'UnknownSimState';
% end mdlInitializeSizes


% mdlOutputs
function sys=mdlOutputs(t,x,u,n)
sys = n*u;
% end mdlOutputs
