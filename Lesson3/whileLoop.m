%% Introduction

clc; clear;

%% Basic example of a while loop

count = 0;

while count < 100
    count = count + 1;
    disp(count);
end

%% Example of a while loop

% Fibonacci sequence

num1 = 0;
num2 = 1;

while num1 < 1000000000 && num2 <1000000000 && num3 < 1000000000
   num3 = num1 + num2;
   disp(num3);
   
   num2 = num1 + num3;
   disp(num2);
   
   num1 = num2 + num3;
   disp(num1);
end

%% Example of a while loop 2 (Newton's method)

% Finding first positive root of g(x)=sin(x)+x cos(x).
% Since g'(x)=2cos(x)-xsin(x),
% Newton's iteration scheme is x_n+1=x_n - g(x_n)/g'(x_n)
% therefore, x_n+1 = x_n -[sin(x_n)+ x cos(x_n)]/[2cos(x_n)-xsin(x_n)].


x=1.5;                                         %set starting value
eps=1;                                         %initialize error bound eps
xvals=x;                                       %initialize array of iterates
n=0;                                           %initialize n (counts iterations)

while eps >= 1e-20                              %set while-conditions
    y = x-(sin(x)+x*cos(x))/(2*cos(x)-x*sin(x)); %compute next iterate
    xvals = [xvals; y];                          %write next iterate in array
    eps = abs(y - x);                            %compute error
    x = y;
    n = n + 1;                                   %update x and n
end                                              %end of while-loop

disp(xvals(end));