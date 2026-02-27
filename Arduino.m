% EEEE1006 - Aerospace Electronic Engineering and Computing
% Coursework 2 - Solving Engineering Problems with a Programming Language
% 
% Name: [Your Name]
% Email: [Your Email]
% Student ID: [Your ID]
% Date: [Current Date]
%
% This script implements a temperature monitoring system for a spacecraft
% crew capsule using Arduino and MATLAB. It includes temperature data
% logging, real-time LED monitoring, and temperature prediction algorithms.

%% ========================================================================
%  PRELIMINARY TASK - ARDUINO AND GIT INSTALLATION
%  ========================================================================

% Clear workspace and command window
clear all;
close all;
clc;

delete(instrfindall);


% Establish connection with Arduino
% Replace 'COM3' with your actual Arduino port (check in Device Manager)
% Examples: 'COM3' (Windows), '/dev/ttyUSB0' (Linux), '/dev/cu.usbmodem' (Mac)
fprintf('Establishing connection with Arduino...\n');
a = arduino();  % Modify port as needed
fprintf('Arduino connected successfully!\n\n');

% Connect GND and 5V to breadboard power rails
% Test LED setup - Digital Pin D12 with 220Ω resistor

% LED blink test - blinks at 0.5s intervals
fprintf('Testing LED connection (5 blinks)...\n');
for i = 1:5
    writeDigitalPin(a, 'D12', 1);  % LED ON
    pause(0.5);
    writeDigitalPin(a, 'D12', 0);  % LED OFF
    pause(0.5);
end
fprintf('LED test completed!\n\n');