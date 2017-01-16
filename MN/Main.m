clc;
clear all;
a=[1,2,3,4,5,6,7,8,9,10];
b=[1.44,1.728,2.0736,2.4883,2.9859,3,5831,4.2998,5.1597,6.191];
np=length(a);
[a_lin,~]=l(np,a,b)
[~,b_lin]=l(np,a,b)
[a_epx,~] = e(a,b,np)
[~,b_epx] = e(a,b,np)
[a_geo,~] = g(np,a,b)
[~,b_geo] = g(np,a,b)
prompt = 'Expected value value for a:';
a_expected_value=input(prompt);
prompt = 'Expected value value for b:';
b_expected_value=input(prompt);
e_a_lin=abs(a_lin-a_expected_value);
e_b_lin=abs(b_lin-b_expected_value);
e_lin_total=e_a_lin + e_b_lin
e_a_epx=abs(a_epx-a_expected_value);
e_b_epx=abs(b_epx-b_expected_value);
e_epx_total=e_a_epx + e_b_epx
e_a_geo=abs(a_geo-a_expected_value);
e_b_geo=abs(b_geo-b_expected_value);
e_geo_total=e_a_geo + e_b_geo
errors = [e_lin_total,e_epx_total,e_geo_total];

if min(errors)==e_lin_total
    disp('Function is linear:y=a*x+b');
end
if min(errors)==e_epx_total
    disp('Function is exponential:y=a*b^x');
end
if min(errors)==e_geo_total
    disp('Function is geometric:y=a*x^b');
end


