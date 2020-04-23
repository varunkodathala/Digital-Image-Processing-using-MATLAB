clc;
clear all;
close all;
I = imread('coins.png');
n = imhist(I);
N = sum(n);
T = 256;
maxi = 0;
threshold = 0;
for i=1:256
    P(i) = n(i)/N;
end
for T=1:256      
    w0=sum(P(1:T)); 
    w1=sum(P(T+1:256)); 
    u0=dot([1:T],P(1:T))/w0; 
    u1=dot([T+1:256],P(T+1:256))/w1; 
    sigma(T)=w0*w1*((u1-u0)^2); 
    if sigma(T)>maxi 
        maxi=sigma(T); 
        threshold=T; 
    end
end
threshold = threshold/256;
bw=im2bw(I,threshold); 
imshow(bw);