function [lin1,lin2] = l(nrp,x,y)
sx=0;
sy=0;
sxx=0;
sxy=0;
for  i=1:nrp
    sx = sx+x(i);
    sy = sy+y(i);
    sxy = sxy + x(i)*y(i);
    sxx = sxx + x(i)^2;
end
lin1 =(nrp*sxy-sx*sy)/(nrp*sxx-sx*sx);
lin2 =(sy*sxx-sx*sxy)/(nrp*sxx-sx*sx);