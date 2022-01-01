% X |  1  |  2  |  3  |  4   |  5   |  6   |  7
% Y |  4  | 7.3 | 5.8 | 10.5 | 14.5 |  12  |  15


x= [1, 2, 3, 4, 5, 6, 7]; 
y= [4, 7.3, 5.8, 10.5, 14.5, 12, 15];
[a0,a1]=Squares_Linear_Regression(x,y);
plot(x,y,'r.'); %noktalar
hold on;
plot(x,a0+a1*x,'b'); %doğru formülü

disp(y-(a0+a1.*x)); % hata oranları
