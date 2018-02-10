% fplot(fname,lims,tol,选项）
% fplot会自动调整取值密度
subplot(1,2,1);
fplot(@(x)[tan(x),sin(x),cos(x)],-pi*[-1,1,-1,1],'*');
legend('tan(x)','sin(x)','cos(x)');
subplot(1,2,2);
fplot('cos(tan(pi*x))',[0 1],1e-4);