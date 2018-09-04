function [p q] = plot_reg(t,x1,y1,x2,y2)
scatter(x1, y1);
hold;
scatter(x2, y2);
p = [-4:0.1:4];
q = -t(1)/t(3) - t(2)/t(3)*p;
plot(p,q);
