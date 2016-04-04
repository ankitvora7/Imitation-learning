clc
clear all
I = imread('../maps/aerial_color.jpg');
 figure(1);imagesc(I);  colormap(1-gray);

 points = ginput;
 hold on; 
  
 [p_len,~]  = size(points);
 for k=1:p_len-1
    plot(points(k:k+1,1), points(k:k+1,2),'m');
    hold on
 end
 
 
t_goal(:,1) = points(:,2);
t_goal(:,2) = points(:,1);

costs = ones(5344,12480);

goal = [t_goal(end,1) t_goal(end,2)];
tic;
ctg = dijkstra_matrix(costs,ceil(goal(1)),ceil(goal(2)));
toc

[ip1, jp1] = dijkstra_path(ctg, costs, ceil(t_goal(1,1)), ceil(t_goal(1,2)));

figure(1); hold on;
plot(jp1, ip1, 'b-');