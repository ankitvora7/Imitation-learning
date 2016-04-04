% Initialize params

addpath(genpath('./'))
maploc = '../maps/map_big.jpg';
map = imread(maploc);
map = imresize(map,0.2);
numPaths = 20;
numIter = 50;
learnRate = 0.0005;