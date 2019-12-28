clear;
clc;
format longG;

%% 第一个文件数据里面的OD对：
filename1= 'OD1-34.xlsx' ;
a1= xlsread(filename1);
a1(a1==0)= inf; %0 赋值为INF
a1(logical(eye(size(a1))))= 0; %对角线元素等于0
outset1= 1; % 出发点
destination1= 34; % 终点
[path1, pathLength1]= diatanceMatrix(a1, outset1 , destination1); % 第一个文件的OD对

%% 第二个文件数据里面的OD对：

filename2= 'OD2-15102.xlsx' ;
a2= xlsread(filename2);
a2(a2==0)= inf; %0 赋值为INF
a2(logical(eye(size(a2))))= 0; %对角线元素等于0
outset2= 1;
destination2= 65;
[path2, pathLength2]= diatanceMatrix(a2, outset2 , destination2); % 第二个文件的OD对

%% 第三个文件数据里面的OD对：
filename3= 'OD3-44.xlsx' ;
a3= xlsread(filename3);
a3(a3==0)= inf; %0 赋值为INF
a3(logical(eye(size(a3))))= 0; %对角线元素等于0
outset3= 1;
destination3= 39;
[path3, pathLength3]= diatanceMatrix(a3, outset3 , destination3); % 第三个文件的OD对

%% 第四个文件数据里面的OD对：
filename4= 'OD4-7.xlsx';
a4= xlsread(filename4);
a4(a4==0)= inf;
a4(logical(eye(size(a4))))= 0;
outset4= 1;
destination4= 52;
[path4, pathLength4]= diatanceMatrix(a4, outset4 , destination4); % 第四个文件的OD对