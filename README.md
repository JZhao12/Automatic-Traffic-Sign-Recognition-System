# Automatic-Traffic-Sign-Recognition-TSR-system-in-Real-time
There all 12 MATLAB code files in total,including 4 help function.
# These 4 help function are:
1.createLgraphUsingConnections
2.findLayersToReplace
3.freezeWeights
4.helperCIFAR10Data
The first three help function are associated with Transfer learning
using GoogLeNet.
The last help function is associated with CIFAR-10 dataset
# The rest 8 MATLAB .m files' details is below:
1. 'DataVisual' file is used to do data visualization
2. 'DoubleTheImbalancedData' file is used to do data augmentation.
3. 'Getcifar-10Data' file is used to get the CIFAR-10 dataset.
4. 'imageAugmentation' file did a lot of thing. It is used to do
image augmentation, rotation, remove the black background, create
traffic sign shapes.
5. 'previewDatastore' file is used to preview the images after image
augmentation
6. 'RealtimeRecognition' file is used to implement the TSR system in 
real-time and record the processing speed
7. 'shapeAugment' file is used to genrate shapes do the image 
augmentation to the created shapes
8. 'traffic' file is used to import images,specify the network,do 
5-fold cross validation, configure the training options and train
the network.
