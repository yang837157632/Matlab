function [sys,x0,str,ts,simStateCompliance] = timesn(t,x,u,flag,n)
% 主要功能：输出是输入的n倍
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
sizes.NumContStates  = 0;   %设置连续状态的个数
sizes.NumDiscStates  = 0;   %设置离散状态的个数
sizes.NumOutputs     = -1;   %设置输出信号个数
sizes.NumInputs      = -1;   %设置输入信号个数
sizes.DirFeedthrough = 1;   %设置直接反馈

sizes.NumSampleTimes = 1;   %设置抽样时间个数最少为1
sys = simsizes(sizes);      %设置simsizes把sizes结构返回给sys

x0  = [];                   %设置S-Function的初始状态x0
str = [];                   %设置S-Function的保留参数str（应该设置为空向量）
ts  = [-1 0];                %抽样时间
% ts是一个具有两列元素的矩阵，其中第一列表示抽样时间，另外一列表示时间偏移
% 如果取采样周期为-1，则将继承输入信号的采样周期

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
