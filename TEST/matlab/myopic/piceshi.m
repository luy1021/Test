a1=1.15;a2=1.16;a3=1.12;b1=0.16;b2=0.25;b3=0.29;D1=2.06;D2=2.03;D3=2.03;r1=0.67;r2=0.78;r3=0.69;C1=9.99;C2=10.01;C3=10.00;
x1=0;x2=0;x3=0;t=1;
%while t<=1
%function f myfun(x)
f=@(x)(-((1/b1)*x(1)*(a1+r1*log(C1*x1+D1)-log(x(1))+log(1-x(1)-x(2)-x(3)))+(1/b2)*x(2)*(a2+r2*log(C2*x2+D2)-log(x(2))+log(1-x(1)-x(2)-x(3)))+(1/b3)*x(3)*(a3+r3*log(C3*x3+D3)-log(x(3))+log(1-x(1)-x(2)-x(3)))));
%syms q1 q2 q3
%pi=(1/b1)*q1*(a1+r1*log(C1*x1+D1)-log(q1)+log(1-q1-q2-q3))+(1/b2)*q2*(a2+r2*log(C2*x2+D2)-log(q2)+log(1-q1-q2-q3))+(1/b3)*q3*(a3+r3*log(C3*x3+D3)-log(q3)+log(1-q1-q2-q3));
x0=[0.01;0.01;0.01];
%A=[1 1 1];
%b=[1];
%[x,fval]=fmincon(f,x0,A,b);
%x1=q1;x2=q2;x3=q3;
%t=t+1
%end
%X=fminsearch(-f,[0,0,0])
lb=[0;0];
ub=[1;1];
%x=fminunc(f,x0)
[x1,fval1] = fmincon(f,x0,[],[],[],[],lb,ub);
x1max2 = x1(1) % 极值点x的值
x2max2 = x1(2) % 极值点y的值
pimax2 = -fval1 % Z的最大值 