% 常微分方程的数值解法
% [t,y]=solver(@fname,tspan,y0)
% ode23 ode45 ode113 ode23t ode15s ode23s ode23tb ode15i
[x1,y1]=ode23(@ode_eg,0:0.01:1,1);
plot(x1,y1,'+g');
hold on;
[x2,y2]=ode45(@ode_eg,0:0.01:1,1);
plot(x1,y1,'r');
legend('ode23','ode45');