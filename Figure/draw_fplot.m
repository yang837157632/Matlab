% fplot(fname,lims,tol,ѡ�
% fplot���Զ�����ȡֵ�ܶ�
subplot(1,2,1);
fplot(@(x)[tan(x),sin(x),cos(x)],-pi*[-1,1,-1,1],'*');
legend('tan(x)','sin(x)','cos(x)');
subplot(1,2,2);
fplot('cos(tan(pi*x))',[0 1],1e-4);