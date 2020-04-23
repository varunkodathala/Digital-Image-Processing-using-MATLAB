clc;
close all;
clear all;
I = imread('saturn.png');
IB = rgb2gray(I);
IB2G = imnoise(IB,'Gaussian',0.02);
IB2S = imnoise(IB,'salt & pepper',0.02);
IB2S2 = imnoise(IB,'salt & pepper',0.2);
subplot(2,3,1)
imshow(I);
subplot(2,3,2)
imshow(IB);
subplot(2,3,3)
imshow(IB2G);
subplot(2,3,4)
imshow(IB2S);
subplot(2,3,5)
imshow(IB2S2);