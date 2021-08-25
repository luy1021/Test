a1=3.17;a2=3.18;a3=3.22;b1=0.15;b2=0.17;b3=0.13;D1=1.05;D2=1.05;D3=1.06;r1=0.28;r2=0.31;r3=0.33;C1=7.99;C2=8.00;C3=8.00;
x1=0;x2=0;x3=0;theta=1;
t=1;
while t<=6
f=@(x)(-((1/b1)*x(1)*(a1+r1*log(C1*x(4)+D1)-log(x(1))+log(1-x(1)-x(2)-x(3)))+(1/b2)*x(2)*(a2+r2*log(C2*x(5)+D2)-log(x(2))+log(1-x(1)-x(2)-x(3)))+(1/b3)*x(3)*(a3+r3*log(C3*x(6)+D3)-log(x(3))+log(1-x(1)-x(2)-x(3)))+theta*((1/b1)*x(4)*(a1+r1*log(C1*x1+D1)-log(x(4))+log(1-x(4)-x(5)-x(6)))+(1/b2)*x(5)*(a2+r2*log(C2*x2+D2)-log(x(5))+log(1-x(4)-x(5)-x(6)))+(1/b3)*x(6)*(a3+r3*log(C3*x3+D3)-log(x(6))+log(1-x(4)-x(5)-x(6))))));
x0=[0.01;0.01;0.01;0.01;0.01;0.01];
lb=[0;0;0;0;0;0];
ub=[1;1;1;1;1;1];
[xx1,fval1] = fmincon(f,x0,[],[],[],[],lb,ub);
p11=(1/b1)*(a1+r1*log(C1*x1+D1)-log(xx1(4))+log(1-xx1(4)-xx1(5)-xx1(6)))%第一期价格
p12=(1/b2)*(a2+r2*log(C2*x2+D2)-log(xx1(5))+log(1-xx1(4)-xx1(5)-xx1(6)))
p13=(1/b3)*(a3+r3*log(C3*x3+D3)-log(xx1(6))+log(1-xx1(4)-xx1(5)-xx1(6)))
p21=(1/b1)*(a1+r1*log(C1*xx1(4)+D1)-log(xx1(1))+log(1-xx1(1)-xx1(2)-xx1(3)))%第二期价格
p22=(1/b2)*(a2+r2*log(C2*xx1(5)+D2)-log(xx1(2))+log(1-xx1(1)-xx1(2)-xx1(3)))
p23=(1/b3)*(a3+r3*log(C3*xx1(6)+D3)-log(xx1(3))+log(1-xx1(1)-xx1(2)-xx1(3)))

x1 = xx1(1); %第二期市场份额变成第三期的已知量
x2 = xx1(2);
x3 = xx1(3);
xx1(4)%1q
xx1(5)
xx1(6)
xx1(1) %第二期市场份额
xx1(2)
xx1(3)
pi1 = p11*xx1(4)+p12*xx1(5)+p13*xx1(6)
pi2 = p21*xx1(1)+p22*xx1(2)+p23*xx1(3)
%pi=-fval1
%pipi=pi1+pi2
t=t+1
end
