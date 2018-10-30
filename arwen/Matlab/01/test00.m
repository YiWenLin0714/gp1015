clear all
load wave.txt

xx= wave(:,1);
yy= wave(:,2);
% plot(xx,yy)
% 
tic
[max_yy,index_yy] = max(yy);
toc
% hold on;
% plot(xx(index_yy),yy(index_yy),'ro');

tic
gg=-9999999;
for i=1:length(yy);
    if yy(i) > gg;
       gg=yy(i);
    end
end
fprintf('%2.0f\n',gg)
gg
toc