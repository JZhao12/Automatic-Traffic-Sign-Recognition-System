%% Classify Images Use webcam
%%here could be replaced by Transferred GoogleNet
load('Transferred AlexNet.mat');
camera = webcam(3);
im = snapshot(camera);
hi=imshow(im);
while true
    im = snapshot(camera);
    set(hi,'CData',im);
    %%if using GoogleNet, here will be [224 224]
    im = imresize(im,[227 227]);
%     for n =1:100
%     tic
    [camLabel,confScore] = classify(classifer,im);
%     t(n) = toc;
%     end
    title(string(camLabel) + ", " + num2str(100*max(confScore),3)+"%");
    drawnow
end