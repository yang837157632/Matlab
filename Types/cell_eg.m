clear;clc;
% ����
a{1,1}=[1 2;3 4];      a{1,2}='I am ok';
a{2,1}=[];             a{2,2}='';
b(1,1)={[1 2;3 4]};    b(1,2)={'I am ok'};
b(2,1)={[]};           b(2,2)={''};
c={[1 2;3 4],'I am ok';[],''};

% ��ʾ
a
a(1,1)
a{1,1}
a{1,1}(1,1)
celldisp(a)
cellplot(a)

% ����
a{3,1}=1
a(3,2)={2}

% ɾ��
a{1,1}=[]
a(1,2)={[]}
a(1,:)=[]
a(:,2)=[]

% Ƕ��
d={a,[5 6;7 8];'hello',b}

% ת��
e{1,1}='I';        e{2,1}='am'
f=char(e)             % cellת��ͨ�ַ�����
g=cellstr(f)          % ��ͨ�ַ�����תcell
% cell2mat            cellת��������ͨ����
% mat2cell            ��������ͨ����תcell  1*1cell
% num2cell            ��������ͨ����תcell  m*ncell

% �߼�
x=iscell(c)
y=iscellstr(e)
