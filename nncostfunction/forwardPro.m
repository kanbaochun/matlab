%Ϊ��������ƫ����
X = [ones(m,1) X];

%ǰ�򴫲�
z_2 = X*Theta1'; %m*25
a_2 = sigmoid(X*Theta1'); %m*25
a_2_new = [ones(m,1) a_2]; %Ϊ���ز����ƫ�õ�Ԫ��m*26
h_x = sigmoid(a_2_new*Theta2');%m*10

%��y�ṩ��1-10����ת��Ϊ�����������������ʽ
Vec_y = zeros(m,num_labels);
for i = 1:m
    Vec_y(i,y(i)) = 1;
end

%normal cost function�������򻯵Ĵ��ۺ�����
J = -1/m*sum(sum(Vec_y.*log(h_x)+(1-Vec_y).*log(1-h_x))); 

%regularized cost function���������򻯵Ĵ��ۺ�����
J = -1/m*sum(sum(Vec_y.*log(h_x)+(1-Vec_y).*log(1-h_x)))+lambda/2/m*(sum(sum(Theta1(:,2:end).^2))+sum(sum(Theta2(:,2:end).^2)));