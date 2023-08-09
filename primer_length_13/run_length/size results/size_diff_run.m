clear all
clc


load('run.mat')

n=13;
size_run=zeros(n-1,1);

for i=1:n-1
    size_run(i,1)=length(find(run==i));
end

save('size_different_run.mat','size_run')