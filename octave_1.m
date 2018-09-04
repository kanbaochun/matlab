#文件操作
读取文件
load 2.txt
显示文件
who/whos
保存文件
save hello.txt A -ascii

#矩阵操作
创建单位矩阵
eye(4)
创建矩阵操作
A = [1 2; 3 4; 5 6]
B = [11 12; 13 14; 15 16]
索引操作左行右列
A(:, 2)
矩阵创建
C = [A B]  #右侧放矩阵
C = [A; B] #下册方矩阵
矩阵运算(.选取对应元素)
A .* B
A .^ 2
A'        #'转置矩阵
max(A);min(A);sum(A);mean(A)；ceil(A)
max(A, [], 1) #第3个参数：1表示列，2表示行
magic(3)  #行列相加数值相等
flipud(A) #主副对角线互换 