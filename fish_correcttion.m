clear all;
clc;
tic
pi=3.141592653589793;
%for i = 55:1:56
%str = strcat ('D:\123\', int2str(i) ,'.jpg') ; % 连接字符串形成图像的文件名。
%I0=extraction_fish('d2.jpg');
I1=imread('23.jpg');
%I1=rgb2gray(I0);
%figure,imshow(I1);
[height0,width0]=size(rgb2gray(I1));
height=1*(height0);
width =1*(width0);
I2=zeros(height,width,3);
a1=0;
a2=height;
b1=0;
b2=width;
for i=1:height
    for j=1:width
        if i<=a1 || i>a2 || j<=b1 || j>b2;
            I2(i,j,:)=255;
        else
            I2(i,j,:)=I1(i-a1,j-b1,:);
        end
    end
end
Inew=DistortionRate(I2);
Inew=uint8(Inew);
figure;
subplot(1,2,1),imshow(I1);
title('校正前');
subplot(1,2,2),imshow(Inew);
title('校正后');
toc
time=toc;
%end


