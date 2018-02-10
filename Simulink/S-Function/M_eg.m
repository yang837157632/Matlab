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
% -1表示动态确定的范围
sizes = simsizes;
sizes.NumContStates  = 0;   %设置连续状态的个数  
% size(A,1)
sizes.NumDiscStates  = 0;   %设置离散状态的个数  
% size(A,1)
sizes.NumOutputs     = 0;   %设置输出信号个数    
% size(D,1)    -1表示dynamically sized
sizes.NumInputs      = 0;   %设置输入信号个数    
% size(D,2)    -1表示dynamically sized
sizes.DirFeedthrough = 1;   %设置反馈，0没有直接反馈，1存在直接反馈
sizes.NumSampleTimes = 1;   %设置抽样时间个数最少为1,与ts相关
sys = simsizes(sizes);      

str = []; 
x0  = [];                   %设置S-Function的初始状态x0
%无输入时，连续zeros(sizes.NumContStates,1)，离散ones(sizes.NumDiscStates,1)                
ts  = [0 0];                %具有两列元素的矩阵，第一列抽样时间，另一列时间偏移
% 连续采样时间 [0 0]  [0 1]
% 离散采样时间 [dperiod doffset]
% 可变采样时间 [-2 0]
% 继承采样时间 [-1 0]

simStateCompliance = 'UnknownSimState';


function sys=mdlDerivatives(t,x,u)
sys = [];
% 计算S-Function连续状态的导数并通过sys参数返回给simulink进行积分计算


function sys=mdlUpdate(t,x,u)
sys = [];
% 计算S-Function的离散状态并通过sys向Simulink返回这些状态的数值


function sys=mdlOutputs(t,x,u)
sys = [];
% 计算S-Function的输出信号并通过sys参数返回给Simulink


function sys=mdlGetTimeOfNextVarHit(t,x,u)
sampleTime = []; 
sys = t + sampleTime;
% 计算下一个抽样时刻并且返回给Simulink


function sys=mdlTerminate(t,x,u)
sys = [];
