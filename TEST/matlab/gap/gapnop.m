a1=3.17;a2=3.18;a3=3.22;
b1=0.17;b2=0.19;b3=0.15;
D1=2.03;D2=2.03;D3=2.04;
r1=0.39;r2=0.43;r3=0.46;
C1=8.00;C2=8.00;C3=8.00;
x1=0;x2=0;x3=0;theta=0.01;
b=[b1,b2,b3];
r=[r1,r2,r3];
bmax=max(b);
bmin=min(b);
rmax=max(r);
gap1=(bmin/bmax)*(lambertw(exp(a1-1)+exp(a2-1)+exp(a3-1))/lambertw(exp(-1)*((exp((a1+rmax*log(C1*(1+D1/C1+D2/C2+D3/C3))-1)/(1-rmax)))+exp((a2+rmax*log(C2*(1+D1/C1+D2/C2+D3/C3))-1)/(1-rmax)))+exp((a3+rmax*log(C3*(1+D1/C1+D2/C2+D3/C3))-1)/(1-rmax))))^(1-rmax)
gap2=1-(theta/(1-theta^12))*(bmax/(lambertw(exp(a1-1)+exp(a2-1)+exp(a3-1))))*((r1*C1)/(b1*D1)+(r2*C2)/(b2*D2)+(r3*C3)/(b3*D3))