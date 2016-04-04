function path = getTrainingPaths(map, numPaths)

% Get hand drawn training paths
for i = 1:numPaths
    imshow(map)
    disp(['Click Waypoints for path :',num2str(i)]);
    path{i}.wayPts = ceil(ginput);
    path{i}.fullPath = getPathFromWayPoints(path{i}.wayPts);
end
close all
