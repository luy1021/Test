a1=2.16;a2=2.17;a3=2.16;a4=2.17;
b1=0.27;b2=0.26;b3=0.36;b4=0.34;
r1=0.31;r2=0.33;r3=0.30;r4=0.32;
C1=9;C2=9;C3=9;C4=9;
D1=2.02;D2=2.02;D3=2.02;D4=2.02;
x1=0;x2=0;x3=0;theta=0.01;
b=[b1,b2,b3,b4];
r=[r1,r2,r3,r4];
bmax=max(b);
bmin=min(b);
rmax=max(r);
gap1=(bmin/bmax)*(lambertw(exp(a4-1)+exp(a1-1)+exp(a2-1)+exp(a3-1))/lambertw(exp(-1)*((exp((a4+rmax*log(C4*(1+D1/C1+D2/C2+D3/C3+D4/C4))-1)/(1-rmax))+exp((a1+rmax*log(C1*(1+D1/C1+D2/C2+D3/C3+D4/C4))-1)/(1-rmax)))+exp((a2+rmax*log(C2*(1+D1/C1+D2/C2+D3/C3+D4/C4))-1)/(1-rmax)))+exp((a3+rmax*log(C3*(1+D1/C1+D2/C2+D3/C3+D4/C4))-1)/(1-rmax))))^(1-rmax)
gap2=1-(theta/(1-theta^12))*(bmax/(lambertw(exp(a4-1)+exp(a1-1)+exp(a2-1)+exp(a3-1))))*((r1*C1)/(b1*D1)+(r2*C2)/(b2*D2)+(r3*C3)/(b3*D3)+(r4*C4)/(b4*D4))