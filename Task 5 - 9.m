clear all;
clc;
close all;

n = [0:1:9];                    % Length of discrete points.
n = 10;                         % For use ONLY on this task!!!!!

x = [1 0 0 0 0 0 0 0 0 0];      % Values for x.
x2 = [1 1 1 1 1 1 1 1 1 1];     % Values for x2.
x3 = cos(2*pi*n/10);            % Values for x3.

%% -- TASK 5 & 6 --
% Write a function "A = DFTmatrix(N)" that returns the NxN DFT matrix.
% Use the matrix A to compute the DFT of the same signals used in Task 2.
% Confirm that the results are the same as in the previous section.

% X1 DFT Matrix.
A = DFTmatrix(length(x))        % Call and implement the function.
X = A*x'                        % X is equal to A x x (above).
stem(abs(X))                    % Plot the results onto a stem graph.
grid on                         % Apply a grid.  
ylabel('Magnitude')             % Give the y-axis a label.
xlabel('Discrete Points')       % Give the x-axis a label.
title('X DFT Matrix')           % Give the graph a title.
ylim([-0.1 2]);                 % Set the maximum dimensions of the y-axis.

% X2 DFT Matrix.
A = DFTmatrix(length(x2))       % Call and implement the function.
X = A*x2'                       % X is equal to A x x2 (above).
stem(abs(X))                    % Plot the results onto a stem graph.
grid on                         % Apply a grid.  
ylabel('Magnitude')             % Give the y-axis a label.
xlabel('Discrete Points')       % Give the x-axis a label.
title('X2 DFT Matrix')          % Give the graph a title.
ylim([-1 11]);                  % Set the maximum dimensions of the y-axis.

% X3 DFT Matrix.
A = DFTmatrix(length(x3))       % Call and implement the function.
X = A*x3'                       % X is equal to A x x3 (above).
stem(abs(X))                    % Plot the results onto a stem graph.
grid on                         % Apply a grid.
ylabel('Magnitude')             % Give the y-axis a label.
xlabel('Discrete Points')       % Give the x-axis a label.
title('X3 DFT Matrix')          % Give the graph a title.
ylim([-1 7])                    % Set the maximum dimensions of the y-axis.
             
%% -- TASK 7 --
% Randomly select a column from your DFT matrix A and extract it into vector a.

a = A(:,2);                     % Select column 2's numbers.
b = A(:,6);                     % ----------
c = A(:,1);                     % ----------
d = A(:,8);                     % ----------

bans = a'*b;                    % Transpose vector a with b.
brans = round(bans);            % Rounded answer.

cans = a'*c;                    % ----------
crans = round(cans);            % ----------

dans = a'*d;                    % ----------
drans = round(dans);            % ----------

aans = a'*a;                    % ----------
arans = round(aans);            % ----------

% OBSERVATION - It doesn't matter which vector you multiply with another 
% in the same matrix, the rounded integer result will always be zero. 
% However, if you multiply the same vector on itself, you will get an exact 
% answer of 10.

%% -- TASK 8 --
% Write a Matlab function "B = IDFTmatrix(N)" that returns the NxN inverse
% DFT matrix B.

B = IDFTmatrix(length(x))       % Call the sum and multiply by the signal.
X = B*x'                        % Matrix vector equation.
stem(abs(X))                    % Plot the results as a stem graph.
grid on                         % Enable the grid.
ylabel('Magnitude')             % Label the Y-axis.
xlabel('Discrete Points')       % Label the X-axis.
title('X IDFT Matrix')          % Give the graph a title.
ylim([-0.1 0.2]);               % Set the graph size limits.

B = IDFTmatrix(length(x2))      % ----------
X = B*x2'                       % ----------
stem(abs(X))                    % ----------
grid on                         % ----------
ylabel('Magnitude')             % ----------
xlabel('Discrete Points')       % ----------
title('X2 IDFT Matrix')         % ----------
ylim([-1 2]);                   % ----------

B = IDFTmatrix(length(x3))      % ----------
X = B*x3'                       % ----------
stem(abs(X))                    % ----------
grid on                         % ----------
ylabel('Magnitude')             % ----------
xlabel('Discrete Points')       % ----------
title('X3 IDFT Matrix')         % ----------
ylim([-0.5 1]);                 % ----------

%% -- TASK 9 --
% Compute the matrices A and B for N = 10. Then compute the matrix product 
% C = AB and display it. 
% Is the result as you expected?

C = A*B;                        % The sum is equal to A x B.
stem(abs(X))                    % ----------
grid on;                        % ----------
ylabel('Magnitude')             % ----------
xlabel('Discrete Points')       % ----------
title('AB Matrix IDFT')         % ----------
ylim([-0.5 1]);                 % ----------