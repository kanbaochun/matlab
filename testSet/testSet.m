function testSet()

[x, y, x1, x2, y1, y2] = loadtestset()
[J t] = costFunctionJ(x, y)
plot_reg(t,x1,y1,x2,y2);
