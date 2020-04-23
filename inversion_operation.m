clc;
clear all;
close all;
I = imread('tire.tif');
subplot(2,2,1)
imshow(I);
subplot(2,2,2)
imhist(I);
subplot(2,2,3)
imshow(255-I);
subplot(2,2,4)
imhist(255-I);