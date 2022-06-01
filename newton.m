clc; clear all;

x(1) = -4; %initial guess
TOL = 10^(-5);
disp('  Iter        x(k)               fc  ')
for k=1:1000

    x(k+1) = x(k)-(exp(x(k))-tan(x(k)))/(exp(x(k))-sec(x(k))^2); %newton iteration x(k+1)= x(k)-fx(k)/f'x(k)

    fc = exp(x(k+1))-tan(x(k+1));

    if abs(fc)<10^(-5)
	break
    end
fprintf('%3i   %11.6f    %11.6f\n',k,x(k+1),fc);
end
fc
