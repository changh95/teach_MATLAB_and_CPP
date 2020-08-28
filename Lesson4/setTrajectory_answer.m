%% Set Trajectory

% Our motor is able to read 100 readings per second.
% We are going to move at constant speed of 1.0 m/s
% Also to note, we are not moving diagonally, but only in each x,y,z direction at once.

clc; clear;

motors = struct;
motors.name = [1,2,3,4]; % We have 4 motors
motors.connection = [true, true, true, false]; % Motor 4 is a faulty motor.
motors.currentPos = [0.0, 0.0, 0.0]; % Currrent position readings of the motor.

%% Q1. Make functions for trajectory building

% At the bottom of this script, make a function called
% - moveXtraj
% - moveYtraj
% - moveZtraj
% Each function is going to provide a vector that contains expected
% position values when moving at 1.0 m/s

%% Q2. Build trajectory

% Using the functions you made in Q1, build a matrix vector containing x,y,z coordinates of the path:
% 1. move 0.5m in x direction
% 2. move 0.1m in y direction
% 3. move -0.5m in x direction
% 4. move 0.1m in y direction
% 5. move 0.5m in x direction
% 6. move 0.5m in z direction

trajectory = [];

trajectory = [trajectory; moveXTraj(motors.currentPos, 0.5)];
motors.currentPos(1) = trajectory(end,1);

trajectory = [trajectory; moveYTraj(motors.currentPos, 0.1)];
motors.currentPos(2) = trajectory(end,2);

trajectory = [trajectory; moveXTraj(motors.currentPos, -0.5)];
motors.currentPos(1) = trajectory(end,1);

trajectory = [trajectory; moveYTraj(motors.currentPos, 0.1)];
motors.currentPos(2) = trajectory(end,2);

trajectory = [trajectory; moveXTraj(motors.currentPos, 0.5)];
motors.currentPos(1) = trajectory(end,1);

trajectory = [trajectory; moveZTraj(motors.currentPos, 0.5)];
motors.currentPos(3) = trajectory(end,3);

save('trajectory.mat','trajectory');

%% Functions

function trajPoints = moveXTraj(pos, displacement)
    dist = abs(displacement);
    numPoints = 100 * dist;
    
    trajPoints = zeros(numPoints,3);
    trajPoints(:,2) = pos(2);
    trajPoints(:,3) = pos(3);
    
    trajX = linspace(pos(1), displacement, numPoints);
    trajPoints(:,1) = trajX';
end

function trajPoints = moveYTraj(pos, displacement)
    dist = abs(displacement);
    numPoints = 100 * dist;
    
    trajPoints = zeros(numPoints,3);
    trajPoints(:,1) = pos(1);
    trajPoints(:,3) = pos(3);
    
    trajY = linspace(pos(2), displacement, numPoints);
    trajPoints(:,2) = trajY';
end

function trajPoints = moveZTraj(pos, displacement)
    dist = abs(displacement);
    numPoints = 100 * dist;
    
    trajPoints = zeros(numPoints,3);
    trajPoints(:,1) = pos(1);
    trajPoints(:,2) = pos(2);
    
    trajZ = linspace(pos(1), displacement, numPoints);
    trajPoints(:,3) = trajZ';
end
