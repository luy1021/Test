a1=2.9809;a2=2.750855;a3=3.2682;b1=2.245;b2=2.3556;b3=2.667859;r1=0.032324;r2=0.025;r3=2.92;C1=7.99793;C2=7.999;C3=8.2272;D1=2.004499;D2=1.97474;D3=1.092242;
x1=0.6538;x2=0.230769;x3=0.1154;t=1;
p1=30.758;p2=29.03;p3=25.65;
while t<=1
q1=exp(a1-b1*p1+r1*log(C1*x1+D1))/(exp(a1-b1*p1+r1*log(C1*x1+D1))+exp(a2-b2*p2+r2*log(C2*x2+D2))+exp(a3-b3*p3+r3*log(C3*x3+D3)))
q2=exp(a2-b2*p2+r2*log(C2*x2+D2))/(exp(a1-b1*p1+r1*log(C1*x1+D1))+exp(a2-b2*p2+r2*log(C2*x2+D2))+exp(a3-b3*p3+r3*log(C3*x3+D3)))
q3=exp(a3-b3*p3+r3*log(C3*x3+D3))/(exp(a1-b1*p1+r1*log(C1*x1+D1))+exp(a2-b2*p2+r2*log(C2*x2+D2))+exp(a3-b3*p3+r3*log(C3*x3+D3)))
pi=p1*q1+p2*q2
x1=q1;x2=q2;x3=q3;
t=t+1
end
%a1=2.68865;a2=2.138945;a3=4.17240458;b1=0.0857909;b2=0.121055872;b3=0.29535775;D1=0.726501579;D2=0.66232333;D3=2.3283;r1=-0.2027278242;r2=0.25849946;r3=1.467097979;C1=7.9975194;C2=7.9631615419;C3=7.968193118;
%x1=0.525292;x2=0.287938;x3=0.18677;t=1;
%p1=28.76393;p2=28.12981;p3=29.41292;
%a1=2.76576;a2=2.22028;a3=4.0139548;b1=0.1167473;b2=0.1359078;b3=0.29860477;r1=0.07175266;r2=0.40441629;r3=1.560549888;C1=7.95383353;C2=7.962439;C3=7.999127305;D1=1.12299386;D2=0.548666;D3=2.124972;
%x1=0.545455;x2=0.265734;x3=0.18881;t=1;	
%p1=29.46351;p2=30.06519;p3=29.2481;
%a1=2.78492;a2=2.354916;a3=3.86016313999;b1=0.098489;b2=0.1005314;b3=0.25750866;r1=0.683739289;r2=0.783367763522;r3=1.80196818986;C1=8.03172;C2=8.01755284426;C3=7.974254441428402;D1=0.46028097;D2=0.47603957;D3=2.105348959847;
%x1=0.698113;x2=0.169811;x3=0.132075;t=1;
%p1=32.9;p2=32.9;p3=32.9;
%a1=2.98298;a2=2.89306;a3=3.12395619;b1=3.1474;b2=3.29786;b3=3.46872;r1=0.2225335386;r2=0.30538679;r3=1.9303261748615;C1=7.999307512;C2=7.9999638928;C3=8.07942840;D1=1.00088314;D2=0.966473377;D3=0.059214975;
%x1=0.6538;x2=0.230769;x3=0.1154;t=1;
%p1=30.758;p2=29.03;p3=25.65;
%a1=3.10817;a2=2.46015519;a3=3.431674;b1=0.15543262;b2=0.1671216;b3=0.211583727;r1=-0.07045;r2=-0.1115391;r3=-0.3450259;C1=8.0031966578;C2=7.998518;C3=8.0275;D1=1.06576845917;D2=0.74765;D3=0.018458127;
%x1=0.689655;x2=0.172414;x3=0.137931;t=1;
%p1=33.65;p2=25.735;p3=22.74143;
