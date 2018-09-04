function t = normalEquation(x,y)

t = pinv(x'*x)*x'*y;