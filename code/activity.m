clear all;
close all;
clc;

I=imread('F:\BMI\data\x-ray.jpg');
gray_image=rgb2gray(I);
subplot(2,4,1);
imshow(I);
title('Orignal Image');

subplot(2,4,2);
imhist(gray_image);
title('Orignal Histogram');

equ=histeq(gray_image);
subplot(2,4,3);
imshow(equ);
title('Equilize Image');

subplot(2,4,4);
imhist(equ);
title('equilize Histogram');

blur=fspecial('motion',40,90);
filter=imfilter(I,blur);
subplot(2,4,5);
imshow(filter);
title('Blur Image');

enhance=adapthisteq(gray_image);
subplot(2,4,6);
imshow(enhance);
title('Enhanced Image');

sharp=imsharpen(I,'Radius',0.5,'Amount',0.9);
subplot(2,4,7);
imshow(sharp);
title('Sharpened Image');
