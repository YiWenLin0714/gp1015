clear;
load Pingzhen.txt

xx=Pingzhen(:,1);
yy=Pingzhen(:,2);
M = zeros(1,length(xx));

M(30)=sum(yy(1:30))/30

for i=31:length(xx);
    M(i)=M(i-1)-yy(i-30)/30 + yy(i)/30;
end

A=[xx,M']
save MA30.txt A -ascii