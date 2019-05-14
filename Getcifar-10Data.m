%% Load Data

cifar10Data = tempdir;

url = 'https://www.cs.toronto.edu/~kriz/cifar-10-matlab.tar.gz';
%%here will use the help function: helperCIFAR10Data.m
helperCIFAR10Data.download(url,cifar10Data);
[trainingImages,trainingLabels,testImages,testLabels] = helperCIFAR10Data.load(cifar10Data);

trainingCategories = categories(trainingLabels);

airplaneLabels = (trainingLabels == 'airplane');
automobileLabels = (trainingLabels == 'automobile');
birdLabels = (trainingLabels == 'bird');
catLabels = (trainingLabels == 'cat');
deerLabels = (trainingLabels == 'deer');
dogLabels = (trainingLabels == 'dog');
frogLabels = (trainingLabels == 'frog');
horseLabels = (trainingLabels == 'horse');
shipLabels = (trainingLabels == 'ship');
truckLabels = (trainingLabels == 'truck');

ix = find(airplaneLabels);

a = trainingImages(:,:,:,ix);
montage(a)
%% export pictures
for i = 1:5000
img = (uint8(a(:,:,:,i)));
FileName = sprintf('%d.ppm',i);
imwrite(img,FileName);
end




