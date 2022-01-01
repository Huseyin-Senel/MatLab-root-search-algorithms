clear;
clc;
close all;


f = @(x) cos(x);

x0 = input('Başlangıç değerini girin: ');
x1 = input('Bitiş değerini girin: ');

N = input('Yineleme değerini girin: ');
es = input('Hata oranını girin: ');

x=x0:0.1:x1;
y=f(x);
figure(1),
plot(x,y,x,x)
xlabel('X Values')
ylabel('Y Values')
grid on;



i=0;
while(i<=N)
    i=i+1;   

    x2 = f(x0);
      
    %Hata
    ea = abs(((x2-x0)/x2)*100);
    
    if(x2==0)
        msg = sprintf('Deneme = %d, Kök = %f, Hata = %f',i,x2,0);
        disp(msg);
        figure(1);
        plot(x,y,x,x,x2,f(x2),'o');
        title(msg);
        xlabel('X Values')
        ylabel('Y Values')
        grid on;
        pause(0.7);
        break;
    end     
    
    msg = sprintf('Deneme = %d, Kök = %f, Hata = %f',i,x2,ea);
    disp(msg);
    figure(1);
    plot(x,y,x,x,x2,f(x2),'o');
    title(msg);
    xlabel('X Values')
    ylabel('Y Values')
    grid on;
    pause(0.7);
    
       % durdu
    if(ea<es)
        break;
    end

    x0=x2;
end