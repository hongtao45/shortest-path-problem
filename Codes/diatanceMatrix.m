function [path, pathLength]= diatanceMatrix(D, outset , destination)
% % USAGE:
% ʹ�þ������������·����
% D��·��·Ȩֵ
% outset�����
% destination���յ�
% path�����·��Ӧ��·��
% pathLength�� ���·��Ӧ��·��

n= length(D);
R= zeros(n); % ��ǰ�����ڴ�

for i= 1:n
    for j= 1:n
        R(i, j)=j;%��·����ֵ
    end
end 

for k= 1:n
    
    for i= 1:n
        for j= 1:n
            if (D(i,k)+ D(k,j) <D(i,j))
                D(i,j)= D(i, k)+ D(k, j); %���� dij
                R(i, j)= k; %���� rij
            end
        end
    end
    
%     k %��ʾ��������
%     D %��ʾÿ���������·��
%     R %��ʾÿ���������·��

end %�������
pathLength= D(outset, destination);

% ����׷�ٵ����·��·��
path_ij = R(outset, :); % ������ڵ���
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
