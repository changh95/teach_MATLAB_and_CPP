%% Initialise motor

% Motor interface functions are provided at the bottom of the script
% Write your answer using these functions

clc; clear;

motors = struct;
motors.name = [0,1,2,3]; % We have 4 motors
motors.connection = [true, true, true, false]; % Motor 4 is a faulty motor.
motors.currentPos = [0.5, 0.3, 1.0]; % Currrent position readings of the motor.

%% Q1. Built a control flow to check if the motor is connected to the PC.

% Write an if-statement to check the followings:
% If at least one of the motor 1, 2, 3 are not connected, notify the user and end the program.
% If motor 4 is not connected, notify the user and continue the program.
% We expect motor 1, 2, 3 are connected, and motor 4 not to be connected.

if (~isConnected(motors.connection(1)))
    disp("Motor 1 is not connected");
    return;
end

if (~isConnected(motors.connection(2)))
    disp("Motor 2 is not connected");
    return;
end

if (~isConnected(motors.connection(3)))
    disp("Motor 3 is not connected");
    return;
end

if (isConnected(motors.connection(4)))
    disp("Motor 4 is connected, when it should not be");
    return;
end

disp("Motor 1,2,3 are connected");

%% Q2. Set motor position to 0,0,0.

% Currently the motor positions are set as x=0.5, y= 0.3, z=1.0.
% Use moveX, moveY, moveZ functions to set all the values as 0.
% Then display the new readings after the zero-ing.

motors.currentPos(1) = moveX(motors.currentPos,-motors.currentPos(1));
motors.currentPos(2) = moveY(motors.currentPos,-motors.currentPos(2));
motors.currentPos(3) = moveZ(motors.currentPos,-motors.currentPos(3));

str = sprintf('The current pose is at %f, %f, %f', motors.currentPos(1), motors.currentPos(2), motors.currentPos(3));
disp(str);

%% Provided functions 
function output = isConnected(bool)
   output = bool;
end

function newVal = moveX(pos, displacement)
    newVal = pos(1) + displacement;
end

function newVal = moveY(pos, displacement)
    newVal = pos(2) + displacement;
end

function newVal = moveZ(pos, displacement)
    newVal = pos(3) + displacement;
end