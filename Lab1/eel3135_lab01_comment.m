% Copy and comment every line of the following MATLAB script. Say what
% each line is doing in your comment. Explain each MATLAB line by using
% no more than one comment line, as done in the first line below. Run and
% publish the script:
a=zeros(1,10) % Generate and print a 1x10 row vector of zeros
b=ones(4,2)  %Create and print a 4x2 matrix of ones, store in b
c=size(b);  %stores the rows and columns of the b matrix in c (4,2)    
abs([-2.2 , 3])  %returns the absolute values of the elements in the vector
floor(1.6)    %rounds the value down to the closest integer   
d=[1:-2.5:-9];   %create a row vector starting at 1, decrementing by 2.5, and ending at -9
f=d(2); %assigns the second element of d to f
g=sin(pi/2);  %computes sine of pi/2 and stores in g   
K=[1.4, 2.3; 5.1, 7.8]; % defines a 2x2 matrix with these values   
m=K(1,2);   %sets m to the element in the first row and second column of K                
n=K(:,2);  %sets n to the second column of K                
p=K(1,2);  %sets p to the element in the first row and second column of K (same as m)                 
comp = 10+40i;  %creates a complex number            
real(comp)   %returns the real part of the complex number              
imag(comp)   %returns the imaginary part of the complex number                
abs(comp)    %returns the magnitude of the complex number               
angle(comp)  %returns the phase angle of the complex number in radians             
disp('haha, MATLAB is fun'); %prints the text in the command window   
3^2   %computes 3 to the second power                          
4==4   %evaluates if 4 is equal to 4                        
[2==8 3~=5]   %perform logical comparisons and store the results in a vector                  
x=[0:3:9]; %creates array starting at 0 incrementing by 3 and going to 9, store in x                  
y=[5 9 6 8]; %creates array with values 5,9,6,8 store in y                 
tic; pause(0.2); toc  % Measure elapsed time with a pause of 0.2 seconds       

q = zeros(10,1); %creates 10x1 column vector of zeros              
for ii = 1:10  % Begin a loop that runs from 1 to 10                
    q(ii) = ii^2;  % Store the square of the loop index in q             
end                             
figure(129);   % Open a figure window with figure number 129               
stem(x,y)  % Create a stem plot of y versus x                    
hold on;  % Retain the current plot when adding new plots 
plot(x,y, 'k', 'linewidth', 2) % Plot y versus x as a black line    
plot(x,y,'+r', 'markersize', 20); % Plot red plus markers at the data points
hold off;   % Release the plot hold                
xlabel('Horizontal Axis')   % Label the x-axis  
ylabel('Vertical Axis') % Label the y-axis
snapnow; % Capture the current figure for publishing
