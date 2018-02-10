function [sys,x0,str,ts,simStateCompliance] = M_eg(t,x,u,flag)
% M文件S-Function 主体部分
% 函数名称：M_eg
% 主要功能：根据输入参数flag的数值调用相应的函数
switch flag,

  %%%%%%%%%%%%%%%%%%
  % Initialization %
  %%%%%%%%%%%%%%%%%%
  case 0,
  % 当flag = 0时调用mdlInitializeSizes函数执行初始化
    [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes;

  %%%%%%%%%%%%%%%
  % Derivatives %
  %%%%%%%%%%%%%%%
  case 1,
  % 当flag = 1时调用mdlDerivatives函数计算连续状态的数量
    sys=mdlDerivatives(t,x,u);

  %%%%%%%%%%
  % Update %
  %%%%%%%%%%
  case 2,
  % 当flag = 2时调用mdlUpdate函数计算离散状态的数值
    sys=mdlUpdate(t,x,u);

  %%%%%%%%%%%
  % Output %
  %%%%%%%%%%%
  case 3,
  % 当flag = 3时调用mdlOutputs函数计算输出信号的数值
    sys=mdlOutputs(t,x,u);

  %%%%%%%%%%%%%%%%%%%%%%%
  % GetTimeOfNextVarHit %
  %%%%%%%%%%%%%%%%%%%%%%%
  case 4,
  % 当flag = 4时调用mdlGetTimeOfNextVarHit函数计算下一个采样时间
  % 只用于变采样时间模块
    sys=mdlGetTimeOfNextVarHit(t,x,u);

  %%%%%%%%%%%%%
  % Terminate %
  %%%%%%%%%%%%%
  case 9,
  % 当flag = 9时调用mdlTerminate函数结束仿真
    sys=mdlTerminate(t,x,u);

  %%%%%%%%%%%%%%%%%%%%
  % Unexpected flags %
  %%%%%%%%%%%%%%%%%%%%
  otherwise
  % 当flag为其他数值时表示仿真过程出错    
    DAStudio.error('Simulink:blocks:unhandledFlag', num2str(flag));

end
% end M_eg


%=============================================================================
% mdlInitializeSizes
% S-function的初始化.
%=============================================================================
function [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes
% 调用simsizes获得一个用于存放长度信息的结构
% -1表示动态确定的范围
sizes = simsizes;

sizes.NumContStates  = 0;   %设置连续状态的个数
sizes.NumDiscStates  = 0;   %设置离散状态的个数
sizes.NumOutputs     = 0;   %设置输出信号个数
sizes.NumInputs      = 0;   %设置输入信号个数
sizes.DirFeedthrough = 1;   %设置直接反馈
% 0表示没有直接反馈，1表示存在直接反馈
sizes.NumSampleTimes = 1;   %设置抽样时间个数最少为1
sys = simsizes(sizes);      %设置simsizes把sizes结构返回给sys

x0  = [];                   %设置S-Function的初始状态x0
str = [];                   %设置S-Function的保留参数str（应该设置为空向量）
ts  = [0 0];                %抽样时间
% ts是一个具有两列元素的矩阵，其中第一列表示抽样时间，另外一列表示时间偏移
% 如果取采样周期为-1，则将继承输入信号的采样周期

% Specify the block simStateCompliance. The allowed values are:
%    'UnknownSimState', < The default setting; warn and assume DefaultSimState
%    'DefaultSimState', < Same sim state as a built-in block
%    'HasNoSimState',   < No sim state
%    'DisallowSimState' < Error out when saving or restoring the model sim state
simStateCompliance = 'UnknownSimState';
% end mdlInitializeSizes


%=============================================================================
% mdlDerivatives
% 计算S-Function连续状态的导数并通过sys参数返回给simulink进行积分计算
%=============================================================================
function sys=mdlDerivatives(t,x,u)
sys = [];
% end mdlDerivatives


%=============================================================================
% mdlUpdate
% 计算S-Function的离散状态并通过sys向Simulink返回这些状态的数值
%=============================================================================
function sys=mdlUpdate(t,x,u)
sys = [];
% end mdlUpdate


%=============================================================================
% mdlOutputs
% 计算S-Function的输出信号并通过sys参数返回给Simulink
%=============================================================================
function sys=mdlOutputs(t,x,u)
sys = [];
% end mdlOutputs


%=============================================================================
% mdlGetTimeOfNextVarHit
% 计算下一个抽样时刻并且返回给Simulink
% 本函数只适用于可变步长离散仿真时间且在初始化过程中把ts设置为[-2 0]
%=============================================================================
function sys=mdlGetTimeOfNextVarHit(t,x,u)
% 一个设置下一个时刻抽样时刻的实例
% 下一个抽样时刻设置为与当前时刻相差1s
sampleTime = 1; 
sys = t + sampleTime;
% end mdlGetTimeOfNextVarHit


%=============================================================================
% mdlTerminate
% 在仿真结束时执行清理工作，如回收内存等
%=============================================================================
function sys=mdlTerminate(t,x,u)
% 设置返回参数sys为空矩阵[ ]
sys = [];
% end mdlTerminate
