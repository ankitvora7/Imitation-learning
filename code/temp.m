clear all
close all
maploc = '../maps/map_small.jpg';
im = imread(maploc);

% cannyedge = edge(rgb2gray(im),'sobel',0.2);
% cannyedgegf = imgaussfilt(double(cannyedge),2);
% imshow(cannyedgegf)
% pause;
% close all

% % LAB color space
% lab = rgb2lab(im);
% l = lab(:,:,1);
% a = lab(:,:,2);
% b = lab(:,:,3);
% subplot(2,2,1), imshow(l)
% subplot(2,2,2), imshow(a)
% subplot(2,2,3), imshow(b)
% subplot(2,2,4), imshow(im)
% pause;
% close all

% % YCbCr color space
% ycbcr = double(rgb2ycbcr(im));
% y = ycbcr(:,:,1);
% cb = ycbcr(:,:,2);
% cr = ycbcr(:,:,3);
% subplot(2,2,1), imshow(y)
% subplot(2,2,2), imshow(cb)
% subplot(2,2,3), imshow(cr)
% subplot(2,2,4), imshow(im)
% pause;
% close all

% YDbDr color space
ydbdr = double(colorspace('RGB->YDbDr',im));
y = ydbdr(:,:,1);
db = ydbdr(:,:,2);
dr = ydbdr(:,:,3);
subplot(2,2,1), imagesc(y)
subplot(2,2,2), imagesc(db)
subplot(2,2,3), imagesc(dr)
subplot(2,2,4), imagesc(im)
pause;
close all

% % HSV color space
% hsv = rgb2hsv(im);
% h = hsv(:,:,1);
% s = hsv(:,:,2);
% v = hsv(:,:,3);
% subplot(2,2,1), imshow(h)
% subplot(2,2,2), imshow(s)
% subplot(2,2,3), imshow(v)
% subplot(2,2,4), imshow(im)
% pause;
% close all

% % HSB color space
% hsb = colorspace('RGB->HSB',im);
% h = hsb(:,:,1);
% s = hsb(:,:,2);
% b = hsb(:,:,3);
% subplot(2,2,1), imagesc(h)
% subplot(2,2,2), imagesc(s)
% subplot(2,2,3), imagesc(b)
% subplot(2,2,4), imagesc(im)
% pause;
% close all

% % YUV color space
% yuv = colorspace('RGB->YUV',im);
% yuv_y = yuv(:,:,1);
% yuv_u = yuv(:,:,2);
% yuv_v = yuv(:,:,3);
% subplot(2,2,1), imagesc(yuv_y)
% subplot(2,2,2), imagesc(yuv_u)
% subplot(2,2,3), imagesc(yuv_v)
% subplot(2,2,4), imagesc(im)
% pause;
% close all

% imshow(im)
% [xidx, yidx] = ginput;
% hold on
% plot(xidx,yidx,'bo')
% pause;
% close all