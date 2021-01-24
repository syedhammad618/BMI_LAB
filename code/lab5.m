%Bluring The Image;
%fspecial
%h = fspecial(type)
%h = fspecial('average',hsize)
%h = fspecial('disk',radius)
%h = fspecial('gaussian',hsize,sigma)
%h = fspecial('laplacian',alpha)
%h = fspecial('log',hsize,sigma)
%h = fspecial('motion',len,theta)
%h = fspecial('prewitt')
%h = fspecial('sobel')
clear all;
clc;
Image=imread('F:\MatlabLabs\peppers.jpg');
%imshow(Image);
filter=fspecial('laplacian',0.2);
filteredImage=imfilter(Image,filter);
imshow(filteredImage)