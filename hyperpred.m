load trainedmod.mat trainedModel
compactmdl=trainedModel;
saveLearnerForCoder(compactmdl.ClassificationEnsemble,'Model')
%% prediction
a=9;b=31;
% r = round((b-a).*rand(100,1) + a);
% r1=round((b-a).*rand(100,1) + a);

r= 10:1:30;
r1= 10:1:30;
[r1a,ra]=ndgrid(r1,r);
% X=[2*ones(length(r),1),r1,1*ones(length(r),1),1*ones(length(r),1),r];
X=[1*ones(length(ra(:)),1),ra(:),2*ones(length(ra(:)),1),2*ones(length(ra(:)),1),r1a(:)];
yfit = compactmdl.predictFcn(X);
figure(1)
xticks([1 2 3])
xticklabels({'Crash','Hover','Safe Landing'})
plot3(yfit,ra(:),r1a(:),'*')


ypred=[X,yfit];

iypreds=find(ypred(:,6)==3);
if isempty(iypreds)
    iypreds=find(ypred(:,6)==2);
end
ypreds=ypred(iypreds,:);

n=min(ypreds(:,2)+ypreds(:,5)); 

iypredmin=find(ypreds(:,2)+ypreds(:,5)<=n+1);
ypredmin=ypreds(iypredmin,:);
[p,I]=sort(ypredmin(:,2)+ypredmin(:,5));
ypredmin=ypredmin(I,:);

c=1;d=20;
% r2 = round((d-c).*rand(100,1) + c);
% r3=round((d-c).*rand(100,1) + c);
r2=2:0.5:20;
r3=2:0.5:20;
[r2a,r3a]=ndgrid(r2,r3);

% X1=[2*ones(length(r2),1),ypredmin(1,2)*ones(length(r2),1),r2,r3,ypredmin(1,5)*ones(length(r1),1)];
X1=[1.*ones(length(r2a(:)),1),ypredmin(1,2)*ones(length(r2a(:)),1),r2a(:),r3a(:),ypredmin(1,5)*ones(length(r2a(:)),1)];
yfit = compactmdl.predictFcn(X1);
figure(2)
plot3(yfit(yfit==3),r2a(yfit==3),r3a(yfit==3),'k*',yfit(yfit==1),r2a(yfit==1),r3a(yfit==1),'*',yfit(yfit==2),r2a(yfit==2),r3a(yfit==2),'b*' )
xticks([1 2 3])
xticklabels({'Crash','Hover','Safe Landing'})
yp=[X1,yfit];

iyps=find(yp(:,6)==3);
if isempty(iyps)
    iyps=find(yp(:,6)==2);
end
yps=yp(iyps,:);

n1=min(yps(:,3)+yps(:,4)); 

iypmin=find(yps(:,3)+yps(:,4)==n1);
ypmin=yps(iypmin,:);