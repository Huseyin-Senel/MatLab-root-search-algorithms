clear;
clc;
close all;


f = @(x) sin(x);

x0 = input('Başlangıç değerini girin: ');
x1 = input('Bitiş değerini girin: ');

N = input('Yineleme değerini girin: ');
es = input('Hata oranını girin: ');

x=x0:0.1:x1;
y=f(x);
figure(2),
plot(x,y)
xlabel('X Values')
ylabel('f(x)')
grid on;


r = (sqrt(5)-1) / 2;


 k1 = x1-r*(x1-x0);
 k2 = x0+r*(x1-x0);

i=0;
while(i<=N)
    i=i+1;
           
    if(f(k1)>f(k2))
        x0=k1;
        k1 = x1-r*(x1-x0);
        k2 = x0+r*(x1-x0);
    else
        x1=k2;
        k1 = x1-r*(x1-x0);
        k2 = x0+r*(x1-x0);
    end
    
    %Hata
    ea=x1-x0;
    
    msg = sprintf('Deneme = %d, Kök = %f, Hata = %f',i,x1,ea);
    disp(msg);
    figure(2);
    plot(x,y,x0,f(x0),'o');
    title(msg);
    xlabel('X Values')
    ylabel('f(x)')
    grid on;
    pause(0.7);
    
       % durdu
    if(x1-x0<es)
        break;
    end    
    
end