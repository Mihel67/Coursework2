clear all;
close all;
clc;

% Establish connection with Arduino
% Replace 'COM3' with your actual Arduino port (check in Device Manager)
% Examples: 'COM3' (Windows), '/dev/ttyUSB0' (Linux), '/dev/cu.usbmodem' (Mac)
fprintf('Establishing connection with Arduino...\n');
a = arduino('COM3', 'Uno');  % Modify port as needed
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

% Commit this initial setup to Git repository
% Right-click on file -> Source Control -> View and commit changes
