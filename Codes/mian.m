clear;
clc;
format longG;

%% ��һ���ļ����������OD�ԣ�
filename1= 'OD1-34.xlsx' ;
a1= xlsread(filename1);
a1(a1==0)= inf; %0 ��ֵΪINF
a1(logical(eye(size(a1))))= 0; %�Խ���Ԫ�ص���0
outset1= 1; % ������
destination1= 34; % �յ�
[path1, pathLength1]= diatanceMatrix(a1, outset1 , destination1); % ��һ���ļ���OD��

%% �ڶ����ļ����������OD�ԣ�

filename2= 'OD2-15102.xlsx' ;
a2= xlsread(filename2);
a2(a2==0)= inf; %0 ��ֵΪINF
a2(logical(eye(size(a2))))= 0; %�Խ���Ԫ�ص���0
outset2= 1;
destination2= 65;
[path2, pathLength2]= diatanceMatrix(a2, outset2 , destination2); % �ڶ����ļ���OD��

%% �������ļ����������OD�ԣ�
filename3= 'OD3-44.xlsx' ;
a3= xlsread(filename3);
a3(a3==0)= inf; %0 ��ֵΪINF
a3(logical(eye(size(a3))))= 0; %�Խ���Ԫ�ص���0
outset3= 1;
destination3= 39;
[path3, pathLength3]= diatanceMatrix(a3, outset3 , destination3); % �������ļ���OD��

%% ���ĸ��ļ����������OD�ԣ�
filename4= 'OD4-7.xlsx';
a4= xlsread(filename4);
a4(a4==0)= inf;
a4(logical(eye(size(a4))))= 0;
outset4= 1;
destination4= 52;
[path4, pathLength4]= diatanceMatrix(a4, outset4 , destination4); % ���ĸ��ļ���OD��