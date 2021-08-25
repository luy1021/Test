a1=1.15;a2=1.16;a3=1.12;b1=0.16;b2=0.25;b3=0.29;D1=2.06;D2=2.03;D3=2.03;r1=0.67;r2=0.78;r3=0.69;C1=9.99;C2=10.01;C3=10.00;

x1=0;x2=0;x3=0;theta=0.01;
b=[b1,b2,b3];
r=[r1,r2,r3];
bmax=max(b);
bmin=min(b);
rmax=max(r);
gap1=(bmin/bmax)*(lambertw(exp(a1-1)+exp(a2-1)+exp(a3-1))/lambertw(exp(-1)*((exp((a1+rmax*log(C1*(1+D1/C1+D2/C2+D3/C3))-1)/(1-rmax)))+exp((a2+rmax*log(C2*(1+D1/C1+D2/C2+D3/C3))-1)/(1-rmax)))+exp((a3+rmax*log(C3*(1+D1/C1+D2/C2+D3/C3))-1)/(1-rmax))))^(1-rmax)
gap2=1-(theta/(1-theta^12))*(bmax/(lambertw(exp(a1-1)+exp(a2-1)+exp(a3-1))))*((r1*C1)/(b1*D1)+(r2*C2)/(b2*D2)+(r3*C3)/(b3*D3))