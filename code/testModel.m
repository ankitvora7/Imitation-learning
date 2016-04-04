% Test the models
addpath(genpath('./'))
load('costMapBigDrive.mat')
map = imread('../maps/map_big.jpg');
map = imresize(map, 0.2);

flag = 'y';
counter = 0;
while flag=='y'
    str = input('Enter w for walk and d for drive :','s');
    if str=='w'
        imshow(map)
        wayPts = ceil(ginput);
        walkPath = getPath(costMapWalk, wayPts);
        hold on
        plot(walkPath(:,1),walkPath(:,2),'r.')
        disp('Hit Enter to continue')
        pause;
        close all
        counter = counter + 1;
        allTestPaths{counter}.path = walkPath;
    elseif str=='d'
        imshow(map)
        wayPts = ceil(ginput);
        drivePath = getPath(costMapDrive, wayPts);
        hold on
        plot(drivePath(:,1),drivePath(:,2),'r.')
        disp('Hit Enter to continue')
        pause;
        close all
        counter = counter + 1;
        allTestPaths{counter}.path = drivePath;
    else
        disp('Wrong input! Enter d or w')
        continue
    end
    flag = input('Want to search more paths ? Press y for Yes or any other key for No :','s');
end