clc;
close all;
clear all;
I = imread('circuit.tif');
I = rgb2gray(I);
subplot(2,2,1)
imshow(I);
rotI = imrotate(I,33,'crop');
subplot(2,2,2) 
imshow(rotI);
BW = edge(rotI,'prewitt');
[H,T,R] = hough(BW);
subplot(2,2,3)
imshow(BW);
imshow(H,[],'Xdata',T,'Ydata',R);
xlabel('Theta');
ylabel('Rho');
axis on, axis normal, hold on;
P = houghpeaks(H,5,'threshold',ceil(0.3*max(H(:))));
x = T(P(:,2));
y = R(P(:,1));
plot(x,y,'s','color','white');
lines = houghlines(BW,T,R,P,'FillGap',5,'MinLength',7);
subplot(2,2,4);
imshow(rotI);
hold on;
for k = 1:length(lines)
    xy = [lines(k).point1;lines(k).point2];
    plot(xy(:,1),xy(:,2),'LineWidth',2,'color','green');
    plot(xy(1,1),xy(1,2),'x','LineWidth',2,'color','yellow');
    plot(xy(2,1),xy(2,2),'x','LineWidth',2,'color','red');
end
