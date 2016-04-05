% Initialize params

addpath(genpath('./'))
maploc = '../maps/map_big.jpg';
map = imread(maploc);
map = imresize(map,0.2);
numPaths = 10;
numIter = 75;
learnRate = 0.001;