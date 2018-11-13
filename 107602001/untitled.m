clear;
load Pingzhen.txt

xx=Pingzhen(:,1);
yy=Pingzhen(:,2);
for i=5:length(xx);
M(i)=yy(i)/5 +yy(i-1)/5 +yy(i-2)/5 +yy(i-3)/5 +yy(i-4)/5;
end

A=[xx,M']
save MA5.txt A -ascii