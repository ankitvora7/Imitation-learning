function path = getDjikstraPaths(path, costMap, map)

% Compute Djikstra paths
numPaths = size(path,2);

% Remove negative cost map values
if sum(sum(costMap<0))>0
    disp('Making positive cost map values')
    costMap = costMap - min(min(costMap));
end

for i = 1:numPaths
    disp(['Computing Djikstra paths for path ',num2str(i)]);
    wayPts = path{i}.wayPts;
    start = wayPts(1,:);
    goal = wayPts(end,:);
    costToGoal = dijkstra_matrix(costMap,goal(2),goal(1));
    [x, y] = dijkstra_path(costToGoal, costMap, start(2), start(1));
    path{i}.djikstraPath = [y x];
%     imagesc(costMap)
%     hold on
%     plot(path{i}.fullPath(:,1),path{i}.fullPath(:,2),'b.')
%     plot(path{i}.djikstraPath(:,1),path{i}.djikstraPath(:,2),'r.')
%     pause;
%     close all

end


end

