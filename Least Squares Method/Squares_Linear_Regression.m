function [a0,a1]=Squares_Linear_Regression(x,y)
x=x(:);
y=y(:);

X=mean(x);
Y=mean(y);

a1=sum((x-X).*(y-Y))/sum((x-X).^2);  % a0=∑(x-X)(y-Y) / ∑(x-X)^2
a0=Y-a1*X;  % Y = a0 + a1 * X               


end