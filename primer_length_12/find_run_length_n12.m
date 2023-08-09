clear all
clc

load('c_2wmucode.mat')

[m,n]=size(c_2wmucode);
run=zeros(m,1);
for j=1:m
    
v=c_2wmucode(j,:);

% initial the count and maximuum run length 
count = 1;
max_count = 1;

% calculate the maximum run length
for i = 2:length(v)
    % if the element is same with previous element
    if v(i) == v(i-1)
        count = count + 1;
    else
        if count > max_count
            max_count = count;
        end
        count = 1;
    end
end

% update the maximum run length
if count > max_count
    max_count = count;
end

run(j,1)=max_count;
end

%save run length results
save('run.mat','run')
