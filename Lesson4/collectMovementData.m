%% Collect movement data

% We use the motors / trajectory file from setTrajectory test.
clc; clear;

motors = struct;
motors.name = [1,2,3,4]; % We have 4 motors
motors.connection = [true, true, true, false]; % Motor 4 is a faulty motor.
motors.currentPos = [0.0, 0.0, 0.0]; % Currrent position readings of the motor.

load('trajectory.mat'); % load trajectory data

%% Generate movement data

% Generate data using moveAndReadPos() function in a while-loop, and log the output data into a xyz-vector.

%% Q2. Evaluate errors in the collected data

% Calculate the error between the collected data and the trajectory data.
% Specifically, calculate the mean and the standard deviation of the error.
% Also, make a 1-dimensional vector that contains error value at each reading.
% Then, save the vector as 'err.mat'

%% Functions

function posData = moveAndReadPos(pos)
    noise = rand * 0.001;
    posData = pos + noise;
end