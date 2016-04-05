init_params
[~,features{1}] = detectBuildings1(map);
[~,features{end+1}] = detectBuildings2(map);
[~,features{end+1}] = detectBuildings3(map);
[~,features{end+1}] = detectBuildings4(map);
[~,features{end+1}] = detectBuildings5(map);
[~,features{end+1}] = detectPathway(map);
[~,features{end+1}] = detectRailwayTracks(map);
[~,features{end+1}] = detectRoads(map);
[~,features{end+1}] = detectRoads2(map);
[~,features{end+1}] = detectTrees(map);
save('featuresBigWalk.mat','features');