clc;
clear all;
close all;
I = imread('eight.tif');
J = imnoise(I,'salt & pepper',0.09);
K = medfilt3(J);
L = I-K;
M = L.^2;
N = I+L;
O = I+M;
subplot(231)
imshow(I);
subplot(232)
imshow(J);
subplot(233)
imshow(K);
subplot(234)
imshow(L);
subplot(235)
imshow(M);
subplot(236)
imshow(N);