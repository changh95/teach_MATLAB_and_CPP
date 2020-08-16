%% Introduction

% For-loop repeats the code execution, given the range-based conditional statement is
% true.

clc;clear;

%% Basic example of for-loop

count = 0;

for i = 1:10
    count = count + 1;
    disp(count);
end

%% Vector example of for-loop 1

% Fill a vector with numbers: starting with 0, to 10 elements with even
% spacing of 2.

val = 0;
vec = zeros(10,1);

for i = 1 : size(vec,1)
    vec(i,1) = val;
    val = val + 2;
end

%% Vector example of for-loop 2

% Copy vector elements in reverse order.

vec1 = [1,2,3,4,5];
numElem = size(vec1,2);

vec2 = zeros(1, numElem);

for i = 1:numElem
   vec2(1,i) = vec1(1,end+1-i); 
end

%% Matrix example of for-loop 1 (Nested for-loop) 

% Copy all matrix elements into a vector.

mat = [1,2,3; 4,5,6; 7,8,9;];

matrix_row = size(mat,1);
matrix_col = size(mat,2);
numElem = matrix_row * matrix_col;
vec = zeros(numElem,1);

count = 1;

for r = 1:matrix_row
    for c = 1:matrix_col
        vec(count,1) = mat(r,c);
        count = count + 1;
    end
end

%% Matrix example of for-loop 2 (nested for loop)

% Calculate the sum of all elements in a matrix

mat = [4,7,5; 14, 35, 67; 79, 68, 346];
numRows = size(mat,1);
numCols = size(mat,2);

sum = 0;

for r = 1:numRows
    for c = 1:numCols
        sum = sum + mat(r,c);
    end
end

disp(sum);

%% Matrix example of for-loop 3

% Calculate the average each odd column of a matrix

mat = randi(200,200);

% Method 1:
% Use this method when you don't know how many elements you'll get.
% This method will be VERY SLOW.

% avg_col = zeros(1,1);
% 
% for col = 1:2:size(mat,2)
%    avg_col = [avg_col; mean(mat(:,col))]; 
% end

% Method 2:
avg_col = zeros(100,1);
count = 1;

for col = 1:2:size(mat,2)
    avg_col(count) = mean(mat(:,col));
    count = count + 1;
end