a1=3.0177755;a2=2.9865932;a3=2.99563124;b1=3.92093128959;b2=4.0002506;b3=4.0653698;
x1=0.689655;x2=0.172414;x3=0.137931;t=1;
p1=33.65;p2=26.67031;p3=22.74143;
while t<=1
q1=exp(a1-b1*p1)/(exp(a1-b1*p1)+exp(a2-b2*p2)+exp(a3-b3*p3))
q2=exp(a2-b2*p2)/(exp(a1-b1*p1)+exp(a2-b2*p2)+exp(a3-b3*p3))
q3=exp(a3-b3*p3)/(exp(a1-b1*p1)+exp(a2-b2*p2)+exp(a3-b3*p3))
pi=p1*q1+p2*q2
x1=q1;x2=q2;x3=q3;
t=t+1
end
