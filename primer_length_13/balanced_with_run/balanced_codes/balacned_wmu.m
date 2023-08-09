clear all
clc

load('c_3wmucode.mat')


[m,n]=size(c_3wmucode);
bal_c3=[];


for i=1:m
    c_temp=c_3wmucode(i,:);
    c=balancedcheck(c_temp,n);
    bal_c3=[bal_c3;c];
end

% balanced codewords
save('bal_c3.mat','bal_c3')

