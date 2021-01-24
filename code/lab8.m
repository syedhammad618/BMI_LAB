%Histograms Equalization
clear all;
close all;
clc;
image=imread('F:\BMI\data\x-ray.jpg');
subplot(2,2,1)
imshow(image);
title('Orignal');

gray_image=rgb2gray(image);
x_ray_imadjust=imadjust(gray_image);

subplot(2,2,2 );
imshow(x_ray_imadjust);%Adjust image intensity values or color map
title('Imadjust');

XRay_histeq=histeq(image); %Enhance contrast using histogram equalization
subplot(2,2,3);
imshow(XRay_histeq);
title('Histeq');

gray_image=rgb2gray(image);
XRay_adapthisteq=adapthisteq(gray_image); %Contrast-limited adaptive histogram equalization (CLAHE)
subplot(2,2,4);
imshow(XRay_adapthisteq);
title('Adapthisteq');


 