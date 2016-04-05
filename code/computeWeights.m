function [weights,J] = computeWeights(path, features, weights, map, learnRate, costMap)

% Compute new weights
J = 0;
disp('Computing new weights')
numPaths = size(path,2);
allDjikstraIdx = [];
allHandIdx = [];
for i= 1:numPaths
    djikstra_path = path{i}.djikstraPath;
    hand_path = path{i}.fullPath;
    djikstraIdx = sub2ind(size(map),djikstra_path(:,2),djikstra_path(:,1));
    handIdx = sub2ind(size(map),hand_path(:,2),hand_path(:,1));
    allDjikstraIdx = [allDjikstraIdx;djikstraIdx];
    allHandIdx = [allHandIdx;handIdx];
end
J = sum(costMap(allHandIdx)) - sum(costMap(allDjikstraIdx));
numFeatures = size(features,2);
for i = 1:numFeatures
    curFeature = features{i};
    weights(i) = weights(i) - learnRate*(sum(curFeature(allHandIdx)) - sum(curFeature(allDjikstraIdx)));
end
end