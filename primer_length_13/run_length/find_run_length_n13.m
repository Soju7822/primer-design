clear all
clc

load('c_3wmucode.mat')

[m,n]=size(c_3wmucode);
run=zeros(m,1);
for j=1:m
    
v=c_3wmucode(j,:);


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

run(j,1)=max_count;
end

save('run.mat','run')
