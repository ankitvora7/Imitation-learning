function path = getPathFromWayPoints(wayPts)

% Generate path from waypoints
numWaypoints = size(wayPts,1);
pathx = []; pathy = [];
for i = 1:numWaypoints - 1
    [x,y] = getMapCellsFromRay(wayPts(i,1),wayPts(i,2),wayPts(i+1,1),wayPts(i+1,2));
    pathx = [pathx;x]; pathy = [pathy;y];
end
path = [pathx pathy];
