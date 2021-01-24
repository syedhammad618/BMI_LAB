clear all;
clc;
close all;
image=imread('F:\BMI\data\peppers.jpg');
subplot(2,1,1);
imshow(image);
title('Orignal Image');
grid('on')
sharpening=imsharpen(image,'Radius',2,'Amount',2); %Radius means Dimension and Amount mean intnsity
subplot(2,1,2);
imshow(sharpening)
title('Sharpened Image')    