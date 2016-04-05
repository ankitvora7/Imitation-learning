function path = getTrainingPaths(map, numPaths)

% Get hand drawn training paths
for i = 1:numPaths
    imshow(map)
    disp(['Click Waypoints for path :',num2str(i)]);
    path{i}.wayPts = ceil(ginput);
    path{i}.fullPath = getPathFromWayPoints(path{i}.wayPts);
    plot(path{i}.fullPath(:,1),path{i}.fullPath(:,2),'b.')
    hold on
    close all
end
close all
