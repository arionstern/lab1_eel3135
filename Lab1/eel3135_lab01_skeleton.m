%% PREAMBLE
% DO NOT REMOVE THE LINE BELOW
clear; close all;

%% ==============================================================
%% 1.  COMMENTING 
%% ==============================================================
type('eel3135_lab01_comment.m')



%% ==============================================================
%% 2.  PLOTTING SINUSOIDS
%% ==============================================================

% --------------------------------------------------------------- 
% 2(a)  
% ---------------------------------------------------------------
n= 0:7; %define sample indices from 0 to 7
theta = (pi/4)*n; %x-axis increases by pi/4 at a time
x = 2*cos((pi/4)*n + pi/3); %x[n] = 2cos((π/4)n +π/3)
figure
stem(theta, x); %plot function at theta values
xlabel('Angle (Radians)');
ylabel('Amplitude');
title('x[n] = 2cos((\pi/4)n + \pi/3)'); %added title and grid
grid on;
% --------------------------------------------------------------- 
% 2(b)  
% ---------------------------------------------------------------
n= 0:99; %define sample indices from 0 to 99
theta = (3*pi/100)*n; %x-axis increases by 3pi/100 at a time
y = cos(theta.^2); %y is cos function y[n] = cos[(3π/100)n]^2
figure
plot(theta, y); %plot function at theta values
xlabel('Angle (Radians)');
ylabel('Amplitude');
title('y[n] = cos(((3\pi/100)n)^2)'); %added title and grid
grid on;

% --------------------------------------------------------------- 
% 2(c)  
% ---------------------------------------------------------------
t = -4:0.01:4; %define t vector samples
z = 2*cos((pi/2)*t) + 3*cos(2*pi*t); %z function
figure
plot(t, z); %plot function at t values
xlabel('Time (Seconds)');
ylabel('Amplitude');
title('z(t) = 2cos((\pi/2)t) + 3cos(2\pi*t)'); %added title and grid
grid on;


%% ==============================================================
%% 3.  FINDING COMPLEX ROOTS
%% ==============================================================

% --------------------------------------------------------------- 
% 3(a)  
% ---------------------------------------------------------------
type('myroots.m')



% --------------------------------------------------------------- 
% 3(b)  
% ---------------------------------------------------------------
% ANSWER QUESTION BELOW
% The purpose of the help command is to display the documentation comments 
% at the top of a MATLAB function file. It allows users to see what the
% funcion does and what the inputs and outputs should be without having to
% open the code.
% 



% --------------------------------------------------------------- 
% 3(c)  
% ---------------------------------------------------------------
disp(myroots(5, -1));
disp(myroots(11, 2048j));



%% ==============================================================
%% 4.  AI FOR SIGNALS
%% ==============================================================
% --------------------------------------------------------------- 
% 4(a)  
% ---------------------------------------------------------------
%You are acting as a MATLAB signal-processing assistant. Generate a MATLAB script to produce a signal x(t) defined on t =0 to t=2 seconds, sampled at fs = 200 samples per second.
%The signal must satisfy all of the following properties:
%• Exactly 3 distinct nonzero frequency components.
%• The signal must be exactly periodic.
%• The signal must have a mean of 1.
%The output must:

%1. Define the time vector t
%2. Define x(t) using sinusoidal components
%3. Plot x(t) with proper axis labels and title


% --------------------------------------------------------------- 
% 4(b)  
% ---------------------------------------------------------------


% ----------------------------------------------------
%  MATLAB script – Periodic sine‑series with mean = 1
% ----------------------------------------------------
% Sampling parameters
fs = 200;          % Samples per second
T  = 2;            % Total duration (seconds)

% Time vector (avoid repeating the end point so that the signal
% is exactly periodic over the interval)
t = 0 : 1/fs : T-1/fs;   % 0 … 1.99 s

% ---------- Frequency components ----------
% Fundamental period = 2 s → fundamental frequency f0 = 1/T = 0.5 Hz
f = [0.5   1.0   1.5];    % three distinct, non‑zero frequencies (Hz)

% Corresponding amplitudes (arbitrary but non‑zero)
A = [0.8   0.5   0.3];    % amplitudes

% Optional phases – here we choose zero for simplicity
phi = [0 0 0];           % phases (radians)

% ---------- Construct the signal ----------
x = 1; % mean offset
for k = 1:length(f)
    x = x + A(k)*sin(2*pi*f(k)*t + phi(k));
end

% ---------- Plot ----------
figure;
plot(t, x, 'LineWidth', 1.2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Periodic signal with 3 frequency components and mean 1');
grid on;
xlim([0 T]);     % display the full 0–2 s interval
