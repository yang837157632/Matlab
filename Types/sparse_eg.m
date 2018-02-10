clear;clc;
A=[1 0 0 0;0 0 2 0;0 0 0 0;0 0 0 1;2 0 0 0]
S_a=sparse(A)
a=full(S_a)
b=issparse(S_a)
c=issparse(A)

B=[2 2 -1;3 1 -1;4 3 3;5 3 8;6 6 12]
S_b=spconvert(B)

[U,V,S]=find(S_a)
S_c=sparse(U,V,S)

S_d=sparse(3,4)
S_e=speye(5)
S_f1=sprand(S_a)
S_f2=sprand(4,5,0.1)   % 0<=density<=1
S_g1=sprandn(S_a)
S_g2=sprandn(3,5,0.07)
