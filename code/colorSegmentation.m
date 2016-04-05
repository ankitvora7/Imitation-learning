% Color segmentation
clear all
close all

maploc = '../maps/map_big.jpg';
im = imread(maploc);
% lab_im = double(colorspace('RGB->YDbDr',im));
im = imresize(im,0.2);
cform = makecform('srgb2lab');
lab_im = double(applycform(im,cform));
ab = lab_im(:,:,2:3);
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);

nColors = 10;
% repeat the clustering 3 times to avoid local minima
disp('Clustering...')
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean','Replicates',3);
pixel_labels = reshape(cluster_idx,nrows,ncols);
imshow(pixel_labels,[]), title('image labeled by cluster index');
segmented_images = cell(1,nColors);
rgb_label = repmat(pixel_labels,[1 1 1]);
disp('Clustering finished')

for k = 1:nColors
    color = lab_im(:,:,2);
    color(rgb_label ~= k) = 1;    
    color = imgaussfilt(color, 0.5);
    color = color./max(max(color));
    color = bsxfun(@minus,1,color);
    segmented_images{k} = color;
    subplot(1,2,1);imagesc(segmented_images{k})
    subplot(1,2,2);imagesc(im)
    pause;
    close all
end
% [~,segmented_images{end+1}] = detectBrightRoad(im);
% [~,segmented_images{end+1}] = detectPathWay(im);
features = segmented_images;
save('featuresbig.mat','features')
