clear all
% Classification using perceptron
 
% Reading apple images
A1=imread('apple_04.jpg');
A2=imread('apple_05.jpg');
A3=imread('apple_06.jpg');
A4=imread('apple_07.jpg');
A5=imread('apple_11.jpg');
A6=imread('apple_12.jpg');
A7=imread('apple_13.jpg');
A8=imread('apple_17.jpg');
A9=imread('apple_19.jpg');
 
% Reading pears images
P1=imread('pear_01.jpg');
P2=imread('pear_02.jpg');
P3=imread('pear_03.jpg');
P4=imread('pear_09.jpg');
 
% Calculate for each image, colour and roundness
% For Apples
% 1st apple image(A1)
hsv_value_A1=spalva_color(A1); %color
metric_A1=apvalumas_roundness(A1); %roundness
% 2nd apple image(A2)
hsv_value_A2=spalva_color(A2); %color
metric_A2=apvalumas_roundness(A2); %roundness
% 3rd apple image(A3)
hsv_value_A3=spalva_color(A3); %color
metric_A3=apvalumas_roundness(A3); %roundness
% 4th apple image(A4)
hsv_value_A4=spalva_color(A4); %color
metric_A4=apvalumas_roundness(A4); %roundness
% 5th apple image(A5)
hsv_value_A5=spalva_color(A5); %color
metric_A5=apvalumas_roundness(A5); %roundness
% 6th apple image(A6)
hsv_value_A6=spalva_color(A6); %color
metric_A6=apvalumas_roundness(A6); %roundness
% 7th apple image(A7)
hsv_value_A7=spalva_color(A7); %color
metric_A7=apvalumas_roundness(A7); %roundness
% 8th apple image(A8)
hsv_value_A8=spalva_color(A8); %color
metric_A8=apvalumas_roundness(A8); %roundness
% 9th apple image(A9)
hsv_value_A9=spalva_color(A9); %color
metric_A9=apvalumas_roundness(A9); %roundness
 
%For Pears
%1st pear image(P1)
hsv_value_P1=spalva_color(P1); %color
metric_P1=apvalumas_roundness(P1); %roundness
%2nd pear image(P2)
hsv_value_P2=spalva_color(P2); %color
metric_P2=apvalumas_roundness(P2); %roundness
%3rd pear image(P3)
hsv_value_P3=spalva_color(P3); %color
metric_P3=apvalumas_roundness(P3); %roundness
%2nd pear image(P4)
hsv_value_P4=spalva_color(P4); %color
metric_P4=apvalumas_roundness(P4); %roundness
 
%selecting features(color, roundness, 3 apples and 2 pears)
%A1,A2,A3,P1,P2
%building matrix 2x5
x1=[hsv_value_A1 hsv_value_A2 hsv_value_A3 hsv_value_P1 hsv_value_P2];
x2=[metric_A1 metric_A2 metric_A3 metric_P1 metric_P2];
% estimated features are stored in matrix P:
P=[x1;x2];
 
%Desired output vector
T=[1;1;1;-1;-1]; % <- ??IA ANKS??IAU BUVO KLAIDA!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
%% train single perceptron with two inputs and one output
 
% generate random initial values of w1, w2 and b
w1 = randn(1);
w2 = randn(1);
b = randn(1);
 
% calculate weighted sum with randomly generated parameters
%v1 = <...>; % write your code here
 
%%%%%%%%%%%%%%%%%%%%%%%
    v1 = w1*hsv_value_A1...
    + w2 * metric_A1...
    + b;
%%%%%%%%%%%%%%%%%%%%%%%
 
% calculate current output of the perceptron 
if v1 > 0
	y = 1;
else
	y = -1;
end
% calculate the error
e1 = T(1) - y;
 
% repeat the same for the rest 4 inputs x1 and x2
% calculate wieghted sum with randomly generated parameters
% v2 = <...> ; % write your code here
%%%%%%%%%%%%%%%%%%%%%%%
    v2 = w1 * hsv_value_A2...
    + w2 * metric_A2...
    + b;
%%%%%%%%%%%%%%%%%%%%%%%
% calculate current output of the perceptron 
if v2 > 0
	y = 1;
else
	y = -1;
end
% calculate the error
e2 = T(2) - y;
 
% <...> write the code for another 3 inputs
 
 
 
%%%%%%%%%%%%%%%%%%%%%%%
    v3 = w1 * hsv_value_A3...
    + w2 * metric_A3...
    + b;
%%%%%%%%%%%%%%%%%%%%%%%
% calculate current output of the perceptron 
if v3 > 0
	y = 1;
else
	y = -1;
end
% calculate the error
e3 = T(3) - y;
 
 
 
 
%%%%%%%%%%%%%%%%%%%%%%%
    v4 = w1 * hsv_value_P1...
    + w2 * metric_P1...
    + b;
%%%%%%%%%%%%%%%%%%%%%%%
% calculate current output of the perceptron 
if v4 > 0
	y = 1;
else
	y = -1;
end
% calculate the error
e4 = T(4) - y;
 
 
 
 
 
 
%%%%%%%%%%%%%%%%%%%%%%%
    v5 = w1 * hsv_value_P2...
    + w2 * metric_P2...
    + b;
%%%%%%%%%%%%%%%%%%%%%%%
% calculate current output of the perceptron 
if v5 > 0
	y = 1;
else
	y = -1;
end
% calculate the error
e5 = T(5) - y;
 
disp('job done');
 
n = 0.5;
 
% calculate the total error for these 5 inputs 
e = abs(e1) + abs(e2) + abs(e3) + abs(e4) + abs(e5);
 
% write training algorithm
while e ~= 0 % executes while the total error is not 0
	% here should be your code of parameter update
%   calculate output for current example

 
 
%   
%   calculate error for current example
 
% 
%   update parameters using current inputs ant current error
 	w1 = w1 + n * e1 * x1(1);
    w1 = w1 + n * e2 * x1(2);
    w1 = w1 + n * e3 * x1(3);
    w1 = w1 + n * e4 * x1(4);
    w1 = w1 + n * e5 * x1(5);
 
    w2 = w2 + n * e1 * x2(1);
    w2 = w2 + n * e2 * x2(2);
    w2 = w2 + n * e3 * x2(3);
    w2 = w2 + n * e4 * x2(4);
    w2 = w2 + n * e5 * x2(5);
 
    b = b + n * e1;
    b = b + n * e2;
    b = b + n * e3;
    b = b + n * e4;
    b = b + n * e5;
% 
%   Test how good are updated parameters (weights) on all examples used for training
%   calculate outputs and errors for all 5 examples using current values of the parameter set {w1, w2, b}
%   calculate 'v1', 'v2', 'v3',... 'v5'
% 
%   calculate 'y1', ..., 'y5'
%     
%   calculate 'e1', ... 'e5'
%%%%%%%%%%%%%%%%%%%%%%%
    v1 = w1*hsv_value_A1...
    + w2 * metric_A1...
    + b;
%%%%%%%%%%%%%%%%%%%%%%%
% calculate current output of the perceptron 
if v1 > 0
	y = 1;
else
	y = -1;
end
% calculate the error
e1 = T(1) - y;
 
% repeat the same for the rest 4 inputs x1 and x2
% calculate wieghted sum with randomly generated parameters
% v2 = <...> ; % write your code here
%%%%%%%%%%%%%%%%%%%%%%%
    v2 = w1 * hsv_value_A2...
    + w2 * metric_A2...
    + b;
%%%%%%%%%%%%%%%%%%%%%%%
% calculate current output of the perceptron 
if v2 > 0
	y = 1;
else
	y = -1;
end
% calculate the error
e2 = T(2) - y;
 
% <...> write the code for another 3 inputs
%%%%%%%%%%%%%%%%%%%%%%%
    v3 = w1 * hsv_value_A3...
    + w2 * metric_A3...
    + b;
%%%%%%%%%%%%%%%%%%%%%%%
% calculate current output of the perceptron 
if v3 > 0
	y = 1;
else
	y = -1;
end
% calculate the error
e3 = T(3) - y;
 
%%%%%%%%%%%%%%%%%%%%%%%
    v4 = w1 * hsv_value_P1...
    + w2 * metric_P1...
    + b;
%%%%%%%%%%%%%%%%%%%%%%%
% calculate current output of the perceptron 
if v4 > 0
	y = 1;
else
	y = -1;
end
% calculate the error
e4 = T(4) - y;
 
%%%%%%%%%%%%%%%%%%%%%%%
    v5 = w1 * hsv_value_P2...
    + w2 * metric_P2...
    + b;
%%%%%%%%%%%%%%%%%%%%%%%
% calculate current output of the perceptron 
if v5 > 0
	y = 1;
else
	y = -1;
end
% calculate the error
e5 = T(5) - y;    
 
	% calculate the total error for these 5 inputs 
	e = abs(e1) + abs(e2) + abs(e3) + abs(e4) + abs(e5)
end
disp('training done');

%%testing with the rest%
%%%%%%%%%%%%%%%%%%%%%%%
    v6 = w1 * hsv_value_P3...
    + w2 * metric_P3...
    + b;
% calculate current output of the perceptron 
if v6 > 0
	y = 1;
else
	y = -1
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%
    v7 = w1 * hsv_value_P4...
    + w2 * metric_P4...
    + b;
% calculate current output of the perceptron 
if v7 > 0
	y = 1;
else
	y = -1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%
    v9 = w1 * hsv_value_A4...
    + w2 * metric_A4...
    + b;
% calculate current output of the perceptron 
if v9 > 0
	y = 1;
else
	y = -1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%
    v10 = w1 * hsv_value_A5...
    + w2 * metric_A5...
    + b;
% calculate current output of the perceptron 
if v10 > 0
	y = 1;
else
	y = -1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%
    v11 = w1 * hsv_value_A6...
    + w2 * metric_A6...
    + b;
% calculate current output of the perceptron 
if v11 > 0
	y = 1;
else
	y = -1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%
    v12 = w1 * hsv_value_A7...
    + w2 * metric_A7...
    + b;
% calculate current output of the perceptron 
if v12 > 0
	y = 1;
else
	y = -1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%
    v13 = w1 * hsv_value_A8...
    + w2 * metric_A8...
    + b;
% calculate current output of the perceptron 
if v13 > 0
	y = 1;
else
	y = -1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%
    v14 = w1 * hsv_value_A9...
    + w2 * metric_A9...
    + b;
% calculate current output of the perceptron 
if v14 > 0
	y = 1;
else
	y = -1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
