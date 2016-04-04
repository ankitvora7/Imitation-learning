clear all
close all

% Initialize params
init_params;

% Get feature maps
features = getFeatures(map);
numFeatures = size(features,2);

% % Get training paths
% path = getTrainingPaths(map, numPaths);
% save('pathsbigWalk.mat','path')
load('pathsbigWalk.mat')

% Initialize weights
weights = ones(numFeatures,1)*numFeatures;

for i = 1:numIter
    
    disp(['Iteration ',num2str(i)]);
    % Get the cost map
    costMap = getCostMap(features, weights);
    
    % Get djikstra's path
    path = getDjikstraPaths(path, costMap, map);    
  
    % Compute new weights
    weights = computeWeights(path, features, weights, map, learnRate);
    
end
costMapDrive = costMap;
save('costMapBigWalk.mat','costMapDrive');
 