%% Collect movement data

% We use the error vector file from collectMovementData().
clc; clear;

load('err.mat'); % load error matrix data

%% Q1. Plot a graph showing error values per sensor reading

% Title should be 'Positional error for every sensor reading'
% x-axis label showing 'sensor reading' should be there
% y-axis label showing 'positional error (m)' should be there

plot(err);
title("Positional error for every sensor reading");
xlabel("Sensor reading");
ylabel("Positional error (m)");