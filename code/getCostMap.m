function costMap = getCostMap(features,weights)

costMap = zeros(size(features{1}));

% Get cost map from features and weights
numFeatures = size(features,2);

for i = 1:numFeatures    
    costMap = costMap + weights(i)*features{i};
end

end

