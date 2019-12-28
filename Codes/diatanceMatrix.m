function [path, pathLength]= diatanceMatrix(D, outset , destination)
% % USAGE:
% 使用距离矩阵法求解最短路问题
% D：路网路权值
% outset：起点
% destination：终点
% path：最短路对应的路径
% pathLength： 最短路对应的路长

n= length(D);
R= zeros(n); % 提前分配内存

for i= 1:n
    for j= 1:n
        R(i, j)=j;%赋路径初值
    end
end 

for k= 1:n
    
    for i= 1:n
        for j= 1:n
            if (D(i,k)+ D(k,j) <D(i,j))
                D(i,j)= D(i, k)+ D(k, j); %更新 dij
                R(i, j)= k; %更新 rij
            end
        end
    end
    
%     k %显示迭代步数
%     D %显示每步迭代后的路长
%     R %显示每步迭代后的路径

end %计算结束
pathLength= D(outset, destination);

% 反向追踪到最短路的路径
path_ij = R(outset, :); % 起点所在的行
count= 1;
path(count)= destination;
tmp= path_ij(destination);
while path(end) ~= tmp
    count= count+1;
    path(count)= tmp;
    tmp= path_ij(tmp);
end
path(count+1) = outset;
path= fliplr(path);
