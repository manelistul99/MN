function [geo1,geo2] = g(nrp,x,y)
sx=0;
sy=0;
sxx=0;
sxy=0;
for i=1:nrp
    sx = sx +log(x(i));
    sy = sy + log(y(i));
    sxy = sxy + log(x(i))*log(y(i));
    sxx = sxx + log(x(i))*log(x(i));
end
geo1 = (nrp*sxy-sx*sy)/(nrp*sxx-sx*sx);
geo2 = exp((sy*sxx-sx*sxy)/(nrp*sxx-sx*sx));