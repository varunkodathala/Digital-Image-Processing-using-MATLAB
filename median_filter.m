clc;
close all;
clear all;
I = imread('eight.tif');
J = imnoise(I,'salt & pepper', 0.09);
K = medfilt3(J);
subplot(1,3,1)
imshow(I);
subplot(1,3,2)
imshow(J);
subplot(1,3,3);
imshow(K);