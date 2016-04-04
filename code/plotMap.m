function plotMap(map, path, index)

% Plot map
imshow(map)
hold on
plot(path{index}.fullPath(:,1),path{index}.fullPath(:,2),'b.');
plot(path{index}.djikstraPath(:,1),path{index}.djikstraPath(:,2),'r.');
disp('Hit enter to continue')
pause;
close all


end

