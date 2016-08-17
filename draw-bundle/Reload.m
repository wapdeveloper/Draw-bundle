load('BAL.mat')


time=load('dense-time');
values=load('dense-value');
n=size(time,1);
A=zeros(1,50-n);
for a = 1:50-n
  A(1,a)=NaN;
end
% 补全矩阵对齐
merge=[time' A];
time=merge';
merge=[values' A];
values=merge';



time1=load('sparse-time');
values1=load('sparse-value');
n=size(time1,1);
A=zeros(1,50-n);
for a = 1:50-n
  A(1,a)=NaN;
end
% 补全矩阵对齐
merge=[time1' A];
time1=merge';
merge=[values1' A];
values1=merge';

% 合并前两列
time=[time  time1];
values=[values values1];



time1=load('pcg-s-time');
values1=load('pcg-s-value');
n=size(time1,1);
A=zeros(1,50-n);
for a = 1:50-n
  A(1,a)=NaN;
end
% 补全矩阵对齐
merge=[time1' A];
time1=merge';
merge=[values1' A];
values1=merge';

% 合并前两列
time=[time  time1];
values=[values values1];


time1=load('pcg-b-time');
values1=load('pcg-b-value');
n=size(time1,1);
A=zeros(1,50-n);
for a = 1:50-n
  A(1,a)=NaN;
end
% 补全矩阵对齐
merge=[time1' A];
time1=merge';
merge=[values1' A];
values1=merge';

% 合并前两列
time=[time  time1];
values=[values values1];








save('BAL.mat', 'names', 'time', 'values');