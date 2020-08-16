%% Introduction

% 'if-' statements are used to execute code under certain conditions.

% There are 3 ways to use 'if-' statements.

% 1. if-statement
%   For if-statement, we execute the code under the if-statement only when
%   the condition is satisfied. Otherwise, we ignore the entire code under
%   the if-statement.

% 2. if-else statement
%   For if-else statement, we execute the code under the if-statement when
%   the condition is satisfied. Otherwise, we execute the code under the
%   else-statement.

% 3. if-elseif-else statement
%   For if-elseif-else statement, there must exist multiple conditions. The
%   first condition is stated at the if-statement; if the first condition
%   is satisfied, the code under the if-statement is executed, and the rest
%   of the code (i.e. under elseif / else statements) are ignored. If the
%   first condition is not satisfied, then the conditions at elseif
%   statements are sequentially examined. If an elseif condition is
%   satisfied, then the rest of the code are not executed. If the
%   if-statement and all of the elseif statements are not satisfied, then
%   the code under else-statement is executed.

clc; clear;

%% Example of if-statement

conditionA = true;
conditionB = false;
conditionC = true;

if (conditionA == true) % correct expression
    disp('conditionA is true');
end

if (conditionB == false) % correct expression
    disp('conditionB is false');
end

if (conditionC == false) % wrong expression
    disp('conditionC = is false')
end

%% Example of if-else statement

conditionA = true;
conditionB = false;

if (conditionA == true) % correct expression
    disp('conditionA is true');
else
    disp('conditionA is false'); % should not reach here
end

if (conditionB == true) % wrong expression
    disp('conditionB is true'); % should not reach here
else
    disp('conditionB is false');
end

%% Example 1 of if-elseif-else statement

num = 2;

if (num == 1)
    disp('num is 1')
elseif (num == 2) % Correct expression
    disp ('num is 2'); % Should reach here
elseif (num == 3)
    disp ('num is 3');
else
    disp ('num is something else');
end

%% Example 2 of if-elseif-else statement

num = 55;

if (0 <= num && num < 10)
    disp('num is between 0 and 9');
elseif (10 <= num && num < 30)
    disp('num is between 10 and 29');
elseif (30 <= num && num < 50)
    disp('num is between 30 and 49');
elseif (50 <= num && num < 70)
    disp('num is between 50 and 69'); % Should reach here
    num = 100; % increases value of num to over 69
else
    disp('num is larger than 69'); % But we will not reach here, since elseif has already been executed.
end

str = sprintf('num is now %d', num);
disp(str); % print the new value of num
