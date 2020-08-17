% Introduction

clc; clear;

%% Example for loading a function from an external function file

% Check if there is addTwoNumbers.m file in the same directory

x = 3;
y = 3.5;

z = addTwoNumbers(x,y);

%% Example for writing a function

x = 3;
y = 3.5;
z = x + y;

o = addThreeNumbers(x,y,z); % Find the function implementation at the bottom of this script

%% Example for showing how functions can be useful

val_start = 1.5;
errorThreshold = 1;
valArray = val_start;

[valArray, numIter] = NewtonOptimization(val_start, errorThreshold, valArray);

%% In-script function implementations

% In-script Function implementation must be located at the bottom of script


function [results, numIter] = NewtonOptimization(x_start, err, results)
    x = x_start;    
    numIter = 0;
    
    while err >= 1e-20                               %set while-conditions
        y = x-(sin(x)+x*cos(x))/(2*cos(x)-x*sin(x)); %compute next iterate
        results = [results; y];                      %write next iterate in array
        err = abs(y - x);                            %compute error
        x = y;
        numIter = numIter + 1;                                   %update x and n
    end                                              %end of while-loop
end

function d = addThreeNumbers(a,b,c)
d = a + b + c;
end

