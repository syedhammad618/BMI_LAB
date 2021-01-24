clear all;
clc;
close all;

I=imread('F:\BMI\data\peppers.jpg');
subplot(3,2,1);
imshow(I);
title('Orignal Images');

motioned=fspecial('motion',50,45);
H1=imfilter(I,motioned,'replicate');
subplot(3,2,2);
imshow(H1);
title('Motion Blurred Image')

Blur=fspecial('disk',10);
H2=imfilter(I,Blur,'replicate');
subplot(3,2,3);
imshow(H2)
title('Blurred Image');

sharpen=imsharpen(I,'Radius',10,'Amount',9);
subplot(3,2,4);
imshow(sharpen);
title('sharpened Image');

%Activity
H1=ones(2,2)/2;
H2=ones(3,3)/25;
I1=imfilter(I,H1,'replicate');
I2=imfilter(I,H2,'replicate');
subplot(3,2,5);
imshow(I1);
title('1st Check');
subplot(3,2,6);
imshow(I2);
title('2nd Check');