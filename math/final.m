% 2Dsin a =ny(n=1,y=1.5418)

a=59.90; 
n=1; %n
y=1.5418;%y= λ
D=1.5418./(2*sin(deg2rad(a/2)));



syms X;
H=-6;
K=0;
L=3;
N=numel(D);
A=12.21-0.42*X;
B=3.04-0.13*X;
C=5.81-0.17*X;
P=(103.87+0.31*X)/180*pi;
for i=1:N
U(i)=((H*H)/(A*A*sin(P)*sin(P))+((L*L)/(C*C*sin(P)*sin(P)))-((2*H*L*cos(P))/(A*C*sin(P)*sin(P)))+((K*K)/(B*B)))^(-0.5)==D(i);
end
for i=1:N
R(i)=vpasolve(U(i),X);
end
D
R
