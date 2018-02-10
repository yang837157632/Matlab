clear;clc;
% 创建
a{1,1}=[1 2;3 4];      a{1,2}='I am ok';
a{2,1}=[];             a{2,2}='';
b(1,1)={[1 2;3 4]};    b(1,2)={'I am ok'};
b(2,1)={[]};           b(2,2)={''};
c={[1 2;3 4],'I am ok';[],''};

% 显示
a
a(1,1)
a{1,1}
a{1,1}(1,1)
celldisp(a)
cellplot(a)

% 增加
a{3,1}=1
a(3,2)={2}

% 删除
a{1,1}=[]
a(1,2)={[]}
a(1,:)=[]
a(:,2)=[]

% 嵌套
d={a,[5 6;7 8];'hello',b}

% 转换
e{1,1}='I';        e{2,1}='am'
f=char(e)             % cell转普通字符数组
g=cellstr(f)          % 普通字符数组转cell
% cell2mat            cell转单类型普通数组
% mat2cell            单类型普通数组转cell  1*1cell
% num2cell            数据类普通数组转cell  m*ncell

% 逻辑
x=iscell(c)
y=iscellstr(e)
