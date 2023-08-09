clear all
clc

load('bal_c3.mat')



[m,n]=size(bal_c3);
bal_run=zeros(m,1);
for j=1:m
    
v=bal_c3(j,:);


count = 1;
max_count = 1;


for i = 2:length(v)
    if v(i) == v(i-1)
        count = count + 1;
    else
        if count > max_count
            max_count = count;
        end
        count = 1;
    end
end


if count > max_count
    max_count = count;
end

bal_run(j,1)=max_count;
end

save('bal_run.mat','bal_run')
