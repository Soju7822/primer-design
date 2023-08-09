function c=balancedcheck(c_temp,n)
l=3;
c=[];
k=0;
while k==0
    binc=zeros(1,n);
  
    for j=1:length(c_temp)
        if c_temp(1,j)==0 | c_temp(1,j)==0
           binc(1,j)=0;
        else
           binc(1,j)=1;
        end
    end

    if sum(binc)>=floor((1/2-(l-1)/n)*n) &&  sum(binc)<= floor((1/2+(l-1)/n)*n)
        c=c_temp;
        k=k+1;
    else
        k=k+1;
    end
end