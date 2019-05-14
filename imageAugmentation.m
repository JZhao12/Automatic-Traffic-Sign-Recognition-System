%% read 43 classes traffic sign
    imds1 = imageDatastore('Ahead only', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds2 = imageDatastore('Bend to left', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds3 = imageDatastore('Bend to right', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds4 = imageDatastore('Crossroads', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds5 = imageDatastore('Cycle route ahead', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds6 = imageDatastore('Distance to ‘Give Way’ line ahead', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds7 = imageDatastore('Double bend first to left', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds8 = imageDatastore('End of minimum speed 80', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds9 = imageDatastore('End of no-overtaking zone', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds10 = imageDatastore('End of no-overtaking zone over 3.5t', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds11 = imageDatastore('Keep left', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds12 = imageDatastore('Keep right', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds13 = imageDatastore('Maximum speed 20', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds14 = imageDatastore('Maximum speed 30', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds15 = imageDatastore('Maximum speed 50', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds16 = imageDatastore('Maximum speed 60', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds17 = imageDatastore('Maximum speed 70', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds18 = imageDatastore('Maximum speed 80', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds19 = imageDatastore('Maximum speed 100', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds20 = imageDatastore('Maximum speed 120', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds21 = imageDatastore('Mini-roundabout', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds22 = imageDatastore('National speed limit applies', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds23 = imageDatastore('No entry for vehicular traffic', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds24 = imageDatastore('No overtaking', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds25 = imageDatastore('No overtaking over 3.5t', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds26 = imageDatastore('No vehicle', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds27 = imageDatastore('No vehicles except bicycles being pushed', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds28 = imageDatastore('Other danger', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds29 = imageDatastore('Oxidizing substance', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds30 = imageDatastore('Risk of snow or ice', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds31 = imageDatastore('Road narrows on right', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds32 = imageDatastore('Road works', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds33 = imageDatastore('School crossing patrol ahead', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds34 = imageDatastore('Soft verges', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds35 = imageDatastore('STOP', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds36 = imageDatastore('Traffic signals', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds37 = imageDatastore('Trun left or ahead', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds38 = imageDatastore('Trun right or ahead', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds39 = imageDatastore('Turn left ahead', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds40 = imageDatastore('Turn right ahead', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds41 = imageDatastore('Uneven road', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds42 = imageDatastore('Wild animals', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');
    imds43 = imageDatastore('Zebra crossing', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');


%% calculate number of images, in order to do augmentation

numimds1 = numel(imds1.Files);
numimds2 = numel(imds2.Files);
numimds3 = numel(imds3.Files);
numimds4 = numel(imds4.Files);
numimds5 = numel(imds5.Files);
numimds6 = numel(imds6.Files);
numimds7 = numel(imds7.Files);
numimds8 = numel(imds8.Files);
numimds9 = numel(imds9.Files);
numimds10 = numel(imds10.Files);
numimds11 = numel(imds11.Files);
numimds12 = numel(imds12.Files);
numimds13 = numel(imds13.Files);
numimds14 = numel(imds14.Files);
numimds15 = numel(imds15.Files);
numimds16 = numel(imds16.Files);
numimds17 = numel(imds17.Files);
numimds18 = numel(imds18.Files);
numimds19 = numel(imds19.Files);
numimds20 = numel(imds20.Files);
numimds21 = numel(imds21.Files);
numimds22 = numel(imds22.Files);
numimds23 = numel(imds23.Files);
numimds24 = numel(imds24.Files);
numimds25 = numel(imds25.Files);
numimds26 = numel(imds26.Files);
numimds27 = numel(imds27.Files);
numimds28 = numel(imds28.Files);
numimds29 = numel(imds29.Files);
numimds30 = numel(imds30.Files);
numimds31 = numel(imds31.Files);
numimds32 = numel(imds32.Files);
numimds33 = numel(imds33.Files);
numimds34 = numel(imds34.Files);
numimds35 = numel(imds35.Files);
numimds36 = numel(imds36.Files);
numimds37 = numel(imds37.Files);
numimds38 = numel(imds38.Files);
numimds39 = numel(imds39.Files);
numimds40 = numel(imds40.Files);
numimds41 = numel(imds41.Files);
numimds42 = numel(imds42.Files);
numimds43 = numel(imds43.Files);

%% visualize Data

pie([numimds1 numimds2 numimds3 numimds4 numimds5 numimds6 numimds7 numimds8 numimds9 numimds10 numimds11 numimds12 numimds13 numimds14 numimds15 numimds16 numimds17 numimds18 numimds19 numimds20 numimds21 numimds22 numimds23 numimds24 numimds25 numimds26 numimds27 numimds28 numimds29 numimds30 numimds31 numimds32 numimds33 numimds34 numimds35 numimds36 numimds37 numimds38 numimds39 numimds40 numimds41 numimds42 numimds43],...
    {'1','2','3','4','5','6','7','8','9','10','11','12','13','14',...
    '15','16','17','18','19','20','21','22','23','24','25','26',...
    '27','28','29','30','31','32','33','34','35','36','37','38',...
    '39','40','41','42','43'})



%% augment less traffic sign classes 5 times
for d = 1:numimds9/30

for i = ((30*(d-1))+1) : (30*d)
    
for k = 1:5  
    m = (120*(d-1))+(30*(k-1))+i;
    
       if  (d<10)&&(m<10)
    FileName = sprintf('0000%d_0000%d.ppm',d,m); 
       
       elseif (d<10)&&(m>=10)&&(m<100)
    FileName = sprintf('0000%d_000%d.ppm',d,m);
       
       elseif (d<10)&&(m>=100)&&(m<1000)
    FileName = sprintf('0000%d_00%d.ppm',d,m); 
       
       elseif (d<10)&&(m>=1000)
    FileName = sprintf('0000%d_0%d.ppm',d,m);  
        
       elseif (d>=10)&&(m<10)
    FileName = sprintf('000%d_0000%d.ppm',d,m);
    
       elseif (d>=10)&&(m>=10)&&(m<100)
    FileName = sprintf('000%d_000%d.ppm',d,m);
       
       elseif (d>=10)&&(m>=100)&&(m<1000)
    FileName = sprintf('000%d_00%d.ppm',d,m); 
       
       elseif (d>=10)&&(m>=1000)
    FileName = sprintf('000%d_0%d.ppm',d,m);              
       end
       
angle = -10 + (20)*rand(1,1);
img = readimage(imds9,i);
L = imrotate(img,angle);
imwrite(L,FileName);

end
end
end


%% Generate circle
% white blue
a = rectangle('position',[0-1,0-1,2*2,2*2],'curvature',[1,1],...
    'edgecolor','w','LineWidth',12,'facecolor','b');
axis equal
axis off

% balck white 
b = rectangle('position',[0-1,0-1,2*2,2*2],'curvature',[1,1],...
    'edgecolor','k','LineWidth',12,'facecolor','w');
axis equal
axis off

% white red imds27
c = rectangle('position',[0-1,0-1,2*2,2*2],'curvature',[1,1],...
    'edgecolor','w','LineWidth',12,'facecolor','r');
axis equal
axis off

% whole red
d = rectangle('position',[0-1,0-1,2*2,2*2],'curvature',[1,1],...
    'edgecolor','r','LineWidth',12,'facecolor','r');
axis equal
axis off
%% Generate triangle
% red white 
x1=1;x2=2;x3=3;
y1=1;y2=sqrt(3)+1;
triangle_x=[x1,x2,x3,x1];
triangle_y=[y1,y2,y1,y1];
fill(triangle_x,triangle_y,'w','LineWidth',12,'edgecolor','r');
axis equal;
axis off

% whole red triangle
x1=1;x2=2;x3=3;
y1=1;y2=sqrt(3)+1;
triangle_x=[x1,x2,x3,x1];
triangle_y=[y1,y2,y1,y1];
fill(triangle_x,triangle_y,'r','LineWidth',12,'edgecolor','r');
axis equal;
axis off

%% Generate inverted triangle
% white red imds6
x1=1;x2=2;x3=3;
y1=3;y2=3-sqrt(3);
triangle_x=[x1,x2,x3,x1];
triangle_y=[y1,y2,y1,y1];
fill(triangle_x,triangle_y,'r','LineWidth',12,'edgecolor','w');
axis equal;
axis off

% whole red inverted triangle
x1=1;x2=2;x3=3;
y1=3;y2=3-sqrt(3);
triangle_x=[x1,x2,x3,x1];
triangle_y=[y1,y2,y1,y1];
fill(triangle_x,triangle_y,'r','LineWidth',12,'edgecolor','r');
axis equal;
axis off
%% Generate diamond
% white yellow
x1=1;x2=sqrt(2)+1;x3=2*sqrt(2)+1;x4=sqrt(2)+1;
y1=3;y2=3+sqrt(2);y3 =3-sqrt(2);
triangle_x=[x1,x2,x3,x4,x1];
triangle_y=[y1,y2,y1,y3,y1];
fill(triangle_x,triangle_y,'y','LineWidth',12,'edgecolor','w');
axis equal;
axis off

%% Generate hexagon
% white red
x1=1;x2=2;x3=4;x4=5;
y1=3;y2=3+sqrt(3);y3 =3-sqrt(3);
triangle_x=[x1,x2,x3,x4,x3,x2,x1];
triangle_y=[y1,y2,y2,y1,y3,y3,y1];
fill(triangle_x,triangle_y,'r','LineWidth',12,'edgecolor','w');
axis equal;
axis off

%% Augment created shapes

A = imread('white red inverted triangle.png');
for n = 1:5
for k = 1:100
    
	FName = sprintf('0000%d_%d.jpg',n,10100+k);

angle = -10 + (20)*rand(1,1);
L = imrotate(A,angle); 
imwrite(L,FName);
end
end

%% remove black background

im  = imread('white red inverted triangle.png');
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
A = imread('whole red triangle.ppm');
angle = -10;
T = @(I) imrotate(I,angle,'bilinear','crop');
TA = T(A);
mask = T(ones(size(A)))==1;
A(mask) = TA(mask);
imshow(A);

%% image rotation, remove black background

for d = 1:numimds9/30
for i = ((30*(d-1))+1) : (30*d)   
for k = 1:5  
    m = (120*(d-1))+(30*(k-1))+i;
    
       if  (d<10)&&(m<10)
    FileName = sprintf('0000%d_0000%d.ppm',d,m); 
       
       elseif (d<10)&&(m>=10)&&(m<100)
    FileName = sprintf('0000%d_000%d.ppm',d,m);
       
       elseif (d<10)&&(m>=100)&&(m<1000)
    FileName = sprintf('0000%d_00%d.ppm',d,m); 
       
       elseif (d<10)&&(m>=1000)
    FileName = sprintf('0000%d_0%d.ppm',d,m);  
        
       elseif (d>=10)&&(m<10)
    FileName = sprintf('000%d_0000%d.ppm',d,m);
    
       elseif (d>=10)&&(m>=10)&&(m<100)
    FileName = sprintf('000%d_000%d.ppm',d,m);
       
       elseif (d>=10)&&(m>=100)&&(m<1000)
    FileName = sprintf('000%d_00%d.ppm',d,m); 
       
       elseif (d>=10)&&(m>=1000)
    FileName = sprintf('000%d_0%d.ppm',d,m);              
       end
       
angle = -10 + (20)*rand(1,1);
img = readimage(imds9,i);
T = @(I) imrotate(I,angle,'bilinear','crop');
Ti = T(img);
mask = T(ones(size(img)))==1;
img(mask) = Ti(mask);
imwrite(img,FileName);

end
end
end