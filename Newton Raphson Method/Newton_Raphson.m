clear;
clc;
close all;


f = @(x) (x.^2)+(2*x)-10;
fl = @(x) 2*x+2;

x0 = input('Başlangıç değerini girin: ');
x1 = input('Bitiş değerini girin: ');

N = input('Yineleme değerini girin: ');
es = input('Hata oranını girin: ');

x=x0:0.1:x1;
y=f(x);
figure(1),
plot(x,y)
xlabel('X Values')
ylabel('f(x)')
grid on;


if(f(x0)*f(x1)>0)
    disp('Hata: kök x1 ile x2 arasında değil');
    return;
end


i=0;
while(i<=N)
    i=i+1;
    
    x2 = x0-((f(x0))/fl(x0));
    
    %Hata
    ea =abs(((x2-x0)/x2)*100);
    
    if(f(x2)==0)
        msg = sprintf('Deneme = %d, Kök = %f, Hata = %f',i,x2,ea);
        disp(msg);
        figure(1);
        plot(x,y,x2,f(x2),'o');
        title(msg);
        xlabel('X Values')
        ylabel('f(x)')
        grid on;
        break; %kök bulundu
    end 
    
    msg = sprintf('Deneme = %d, Kök = %f, Hata = %f',i,x2,ea);
    disp(msg);
    figure(1);
    plot(x,y,x2,f(x2),'o');
    title(msg);
    xlabel('X Values')
    ylabel('f(x)')
    grid on;
    pause(0.7);
    
       % durdu
    if(ea<es)
        break;
    end
    
    x0 = x2;
end