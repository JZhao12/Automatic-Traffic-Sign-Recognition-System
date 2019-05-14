%% Generate circle
% white blue
a = rectangle('position',[0-1,0-1,2*2,2*2],'curvature',[1,1],...
    'edgecolor','w','LineWidth',12,'facecolor','b');
axis([-2 2 -3 6])
axis equal
axis off

% balck white 
b = rectangle('position',[0-1,0-1,2*2,2*2],'curvature',[1,1],...
    'edgecolor','k','LineWidth',12,'facecolor','w');
axis([-2 2 -3 6])
axis equal
axis off

% white red
c = rectangle('position',[0-1,0-1,2*2,2*2],'curvature',[1,1],...
    'edgecolor','w','LineWidth',12,'facecolor','r');
axis([-2 2 -3 6])
axis equal
axis off

% whole red
d = rectangle('position',[0-1,0-1,2*2,2*2],'curvature',[1,1],...
    'edgecolor','r','LineWidth',12,'facecolor','r');
axis([-2 2 -3 6])
axis equal
axis off
%% Generate triangle
% red white triangle
x1=1;x2=2;x3=3;
y1=1;y2=sqrt(3)+1;
triangle_x=[x1,x2,x3,x1];
triangle_y=[y1,y2,y1,y1];
fill(triangle_x,triangle_y,'w','LineWidth',12,'edgecolor','r');
axis([-2 2 -3 6])
axis equal;
axis off

% whole red triangle
x1=1;x2=2;x3=3;
y1=1;y2=sqrt(3)+1;
triangle_x=[x1,x2,x3,x1];
triangle_y=[y1,y2,y1,y1];
fill(triangle_x,triangle_y,'r','LineWidth',12,'edgecolor','r');
axis([-2 2 -3 6])
axis equal;
axis off

%% Generate inverted triangle
% white red inverted triangle
x1=1;x2=2;x3=3;
y1=3;y2=3-sqrt(3);
triangle_x=[x1,x2,x3,x1];
triangle_y=[y1,y2,y1,y1];
fill(triangle_x,triangle_y,'r','LineWidth',12,'edgecolor','w');
axis([-2 2 -1 5])
axis equal;
axis off

% whole red inverted triangle
x1=1;x2=2;x3=3;
y1=3;y2=3-sqrt(3);
triangle_x=[x1,x2,x3,x1];
triangle_y=[y1,y2,y1,y1];
fill(triangle_x,triangle_y,'r','LineWidth',12,'edgecolor','r');
axis([-2 2 -3 6])
axis equal;
axis off
%% Generate diamond
% white yellow diamond
x1=1;x2=sqrt(2)+1;x3=2*sqrt(2)+1;x4=sqrt(2)+1;
y1=3;y2=3+sqrt(2);y3 =3-sqrt(2);
triangle_x=[x1,x2,x3,x4,x1];
triangle_y=[y1,y2,y1,y3,y1];
fill(triangle_x,triangle_y,'y','LineWidth',12,'edgecolor','w');
axis([-2 2 0 6])
axis equal;
axis off

%% Generate hexagon
% white red hexagon
x1=1;x2=2;x3=4;x4=5;
y1=3;y2=3+sqrt(3);y3 =3-sqrt(3);
triangle_x=[x1,x2,x3,x4,x3,x2,x1];
triangle_y=[y1,y2,y2,y1,y3,y3,y1];
fill(triangle_x,triangle_y,'r','LineWidth',12,'edgecolor','w');
axis([-2 2 -1 8])
axis equal;
axis off
%% homography
I1 = imread('white red inverted triangle.png');

theta = 5;
tm = [cosd(theta) -sind(theta) 0.0005; ...
    sind(theta) cosd(theta) 0; ...
    0 0 1];
tform = projective2d(tm);

I3 = imwarp(I1,tform);

figure
imshow(I3);
%% remove black background
im  = imread('whole red triangle.png');
s   = ceil(size(im)/2);
imP = padarray(im, s(1:2), 'replicate', 'both');
imR = imrotate(imP, 45);
S   = ceil(size(imR)/2);
imF = imR(S(1)-s(1):S(1)+s(1)-1, S(2)-s(2):S(2)+s(2)-1, :);
figure, 
subplot(1, 3, 1)
imshow(im); 
title('Original Image')
subplot(1, 3, 2)
imshow(imR);
title('Rotated Image with black background')
subplot(1, 3, 3)
imshow(imF);
title('Rotated Image without black background')
%% still remove
A = imread('whole red triangle.png');
angle = -10;
T = @(I) imrotate(I,angle,'bilinear','crop');
TA = T(A);
mask = T(ones(size(A)))==1;
A(mask) = TA(mask);
imshow(A);
%% Augment created shapes
img = imread('black white circle.png');
for n = 1:5
for k = 1:200
    
	FName = sprintf('0000%d_%d.jpg',n,11800+k);

angle = -5 + (10)*rand(1,1);
T = @(I) imrotate(I,angle,'bilinear','crop');
Ti = T(img);
mask = T(ones(size(img)))==1;
img(mask) = Ti(mask);
imwrite(img,FName);

end
end

