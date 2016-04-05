function feature = getFeatures(map)

% Get features
load('featuresbig.mat');
feature = features;
a = load('featuresBigWalk.mat');
b = a.features;
feature = [feature b];

end

