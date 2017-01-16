function [epx1,epx2] = e(x,y,nrp)
sx=0;
sy=0;
sxx=0;
sxy=0;
for i=1:nrp
    sx = sx + x(i);
    sy = sy + log(y(i));
    sxy = sxy + x(i)*log(y(i));
    sxx = sxx + x(i)*x(i);
end
epx1 = exp((nrp*sxy-sx*sy)/(nrp*sxx-sx*sx));
epx2 = exp((sy*sxx-sx*sxy)/(nrp*sxx-sx*sx));