clear;clc;
% ����
% s1=struct                                1*1    no fields
% s2=struct([])                            0*0    no fields
% s3=struct('math',{},'English',{},...}    0*0    fields
a=struct('name','Mike','age',8,'gender','boy');
a(2)=struct('name','Jane','age','9','gender','girl');
b.name='Mike';      b.age=8;      b.gender='boy';
b(2).name='Jane';   b(2).age=9;   b(2).gender='girl';

% ��ʾ
a
a(1)
a(2).gender

% ɾ��
a=rmfield(a,'gender')

% ����   (1)�ز����٣���2��δ��ֵ��Ϊ��
a(1).grade=[90 89 78]

% ����
c=orderfields(b)

% Ƕ��
c(1).family.father='John';
c(1).family.mother='Kate'

% ת��
% struct2cell  b=struct2cell(a)
% cell2struct  a=cell2xtruct(b,c,DIM)

% �߼�
x=isstruct(a)
y=isfield(a,'gender')
z=fieldnames(c)
