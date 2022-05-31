clear all
a = -2.8;
b = -4;
TOL = 1e-6;
disp('  Iter        xc               fc     Tolerance')

for iter = 1:1000
	xc=(a+b)/2;
	fc=exp(xc)-tan(xc);
	if fc==0
    	   break % c is a solution
	end
	if fc>0
	   b=xc; % a and c make the new interval
	else
	   a=xc; % a and c make the new interval
	end
	
	if abs(fc)<TOL
	   break
	end
fprintf('%3i   %11.6f    %11.6f  %11.6e\n',iter,xc,fc,TOL);
end


