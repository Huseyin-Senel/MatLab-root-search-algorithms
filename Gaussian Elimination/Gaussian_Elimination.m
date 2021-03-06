clc
clear

% 5x + 5y - 3z = 2
% -x + 3y + z = 12
% 3x -y + 2z = 6

a = [5 5 -3;-1 3 1;3 -1 2];
b = [2; 12; 6];
c = [a,b];
c

c(2,:) = c(2,:)+(c(3,:)/3);    %c2: c2+c3/3
c
c(3,:) = c(3,:)-(c(1,:)*(3/5)); %c3 :c3-c1(3/5)
c
c(3,:) = c(3,:)+(c(2,:)*1.5);    %c3 :c3+c2*1.5)
c
c(3,:) = c(3,:)/6.3;            %c3 : c3/6.3
c

%1.denklem   5x + 5y -3z = 2
%2.denklem   2.6667y + 1.6667z = 14 
%3.denkem    z = 4.0952

z = c(3,4)                       %3.denkem    

y = (c(2,4)-(1.6667*z))/2.6667   %2.denklem   

x = (c(1,4)-(y*5+z*-3))/5        %1.denklem  
