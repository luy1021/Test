a1=3.17;a2=3.18;a3=3.22;b1=0.15;b2=0.17;b3=0.13;D1=1.05;D2=1.05;D3=1.06;r1=0.28;r2=0.31;r3=0.33;C1=7.99;C2=8.00;C3=8.00;
x1=0;x2=0;x3=0;theta=0.99;
t=1;V=0;
while t<=12
f=@(x)(-(...
    (1/b1)*x(1)*(a1+r1*log(C1*x1+D1)-log(x(1))+log(1-x(1)-x(2)-x(3)))+...
    (1/b2)*x(2)*(a2+r2*log(C2*x2+D2)-log(x(2))+log(1-x(1)-x(2)-x(3)))+...
    (1/b3)*x(3)*(a3+r3*log(C3*x3+D3)-log(x(3))+log(1-x(1)-x(2)-x(3)))+...
    theta*V));
x0=[0.00001;0.00001;0.00001];
lb=[0;0;0];
ub=[1;1;1];
[xx1,fval1] = fmincon(f,x0,[],[],[],[],lb,ub);
p1=(1/b1)*(a1-log(xx1(1))+log(1-xx1(1)-xx1(2)-xx1(3))+r1*log(C1*x1+D1))
p2=(1/b2)*(a2-log(xx1(2))+log(1-xx1(1)-xx1(2)-xx1(3))+r2*log(C2*x2+D2))
p3=(1/b3)*(a3-log(xx1(3))+log(1-xx1(1)-xx1(2)-xx1(3))+r3*log(C3*x3+D3))
x1 = xx1(1) 
x2 = xx1(2) 
x3 = xx1(3)
pi1=p1*xx1(1)+p2*xx1(2)+p3*xx1(3)
V = -fval1 
t=t+1
end
