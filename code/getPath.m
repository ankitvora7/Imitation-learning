function path = getPath(costMap, wayPts)

% compute path for test set
if sum(sum(costMap<0))>0
    disp('Making positive cost map values')
    costMap = costMap - min(min(costMap)) + 1;
end

start = wayPts(1,:);
goal = wayPts(end,:);
costToGoal = dijkstra_matrix(costMap,goal(2),goal(1));
[x, y] = dijkstra_path(costToGoal, costMap, start(2), start(1));
path = [y x];


end

