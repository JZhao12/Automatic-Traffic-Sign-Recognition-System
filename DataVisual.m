%% Analyze every class
c = categorical({'00','01','02','03','04',...
    '05','06','07','08','09','10','11',...
    '12','13','14','15','16','17','18',...
    '19','20','21','22','23','24','25',...
    '26','27','28','29','30','31','32',...
    '33','34','35','36','37','38','39',...
    '40','41','42'});
Numbers = [210;2220;2250;1410;1980;1860;420;1440;1410;1470;2010;1320;...
2100;2160;780;630;420;1110;1200;210;360;330;390;510;270;1500;600;240;...
540;270;450;780;240;690;420;1200;390;210;2070;300;360;240;240];
bar(c,Numbers)
a = (1:size(Numbers,1)).';
x = [a];
for k=1:size(Numbers,1)
    for m = 1:size(Numbers,2)
        text(x(k,m),Numbers(k,m),num2str(Numbers(k,m)),...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom')
    end
end
grid on;
title('Number of images in different classes in unbalanced dataset')  
xlabel('Different classes');
ylabel('Number of images');
ylim([0 2500])






%% Comparison between balanced and imbalanced data using AlexNet
c = categorical({'subset1','subset2','subset3','subset4','subset5'});
AverageTime = [0.983852918 0.976138032;0.971860465 0.970724638;...
0.976091954 0.967299578;0.991031746 0.985775862;0.986925795 0.969713262];
bar(c,AverageTime)
a = (1:size(AverageTime,1)).';
x = [a-0.15 a+0.15];
for k=1:size(AverageTime,1)
    for m = 1:size(AverageTime,2)
        text(x(k,m),AverageTime(k,m),num2str(AverageTime(k,m),'%0.3f'),...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom')
    end
end
grid on;
title('Comparison between balanced and imbalanced data using AlexNet')  
legend('balanced data using AlexNet','imbalanced data using AlexNet');
xlabel('Different subsets');
ylabel('Accuracy');
ylim([0.95 1])

%% Comparison between balanced data using AlexNet with or without cannot recognize class
c = categorical({'subset1','subset2','subset3','subset4','subset5'});
AverageTime = [0.983852918 0.941013825;0.971860465 0.90826087;...
0.976091954 0.928439716;0.991031746 0.955681818;0.986925795 0.967483296];
bar(c,AverageTime);
a = (1:size(AverageTime,1)).';
x = [a-0.2 a+0.2];
for k=1:size(AverageTime,1)
    for m = 1:size(AverageTime,2)
        text(x(k,m),AverageTime(k,m),num2str(AverageTime(k,m),'%0.3f'),...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom')
    end
end
grid on;
title('Comparison between AlexNet with and without cannot recognize class')  
legend('with cannot recognize class',...
'without cannot recognize class');
xlabel('Subsets');
ylabel('Accuracy');
ylim([0.8 1.05])
%% Comparison between Same optimization based on different networks
c = categorical({'ADAM','SGDM'});
AverageTime = [0.981952576 0.982798492;0.962417713 0.976846134];
bar(c,AverageTime)
a = (1:size(AverageTime,1)).';
x = [a-0.15 a+0.15];
for k=1:size(AverageTime,1)
    for m = 1:size(AverageTime,2)
        text(x(k,m),AverageTime(k,m),num2str(AverageTime(k,m),'%0.4f'),...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom')
    end
end
grid on;
title('Comparison between Same optimization basing on different networks')  
legend('AlexNet','GoogleNet');
xlabel('Different Optimization');
ylabel('Average accuracy for the 5 subsets');
ylim([0.8 1.05])
%% Comparison between different optimization using basing on GoogleNet
c = categorical({'subset1','subset2','subset3','subset4','subset5'});
AverageTime = [0.972222222 0.97773781;0.968410853 0.978294574;...
0.967241379 0.977471264;0.991825397 0.992777778;0.984530821 0.987711033];
bar(c,AverageTime)
a = (1:size(AverageTime,1)).';
x = [a-0.2 a+0.2];
for k=1:size(AverageTime,1)
    for m = 1:size(AverageTime,2)
        text(x(k,m),AverageTime(k,m),num2str(AverageTime(k,m),'%0.3f'),...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom')
    end
end
grid on;
title('Comparison between different optimization using basing on GoogleNet')  
legend('SGDM','ADAM');
xlabel('Different subsets');
ylabel('Accuracy');
ylim([0.8 1.05])
%% Comparison between different optimization using basing on AlexNet
c = categorical({'subset1','subset2','subset3','subset4','subset5'});
AverageTime = [0.981825397 0.983852918;0.952238209 0.971860465;...
0.942911877 0.976091954;0.962635659 0.991031746;0.972477424 0.986925795];
bar(c,AverageTime)
a = (1:size(AverageTime,1)).';
x = [a-0.2 a+0.2];
for k=1:size(AverageTime,1)
    for m = 1:size(AverageTime,2)
        text(x(k,m),AverageTime(k,m),num2str(AverageTime(k,m),'%0.3f'),...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom')
    end
end
grid on;
title('Comparison between different optimization using basing on AlexNet')  
legend('SGDM','ADAM');
xlabel('Different subsets');
ylabel('Accuracy');
ylim([0.8 1.05])
%% Comparison between different networks basing on SGDM
c = categorical({'subset1','subset2','subset3','subset4','subset5'});
AverageTime = [0.981825397 0.972222222;0.952238209 0.968410853;...
0.942911877 0.967241379;0.962635659 0.991825397;0.972477424 0.984530821];
bar(c,AverageTime)
a = (1:size(AverageTime,1)).';
x = [a-0.2 a+0.2];
for k=1:size(AverageTime,1)
    for m = 1:size(AverageTime,2)
        text(x(k,m),AverageTime(k,m),num2str(AverageTime(k,m),'%0.3f'),...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom')
    end
end
grid on;
title('Comparison between different networks basing on SGDM')  
legend('Alexnet','GoogleNet');
xlabel('Different subsets');
ylabel('Accuracy');
ylim([0.8 1.05])
%% Comparison between different networks basing on ADAM
c = categorical({'subset1','subset2','subset3','subset4','subset5'});
AverageTime = [0.983852918 0.97773781;0.971860465 0.978294574;...
0.976091954 0.977471264;0.991031746 0.992777778;0.986925795 0.987711033];
bar(c,AverageTime)
a = (1:size(AverageTime,1)).';
x = [a-0.2 a+0.2];
for k=1:size(AverageTime,1)
    for m = 1:size(AverageTime,2)
        text(x(k,m),AverageTime(k,m),num2str(AverageTime(k,m),'%0.3f'),...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom')
    end
end
grid on;
title('Comparison between different networks basing on ADAM')  
legend('Alexnet','GoogleNet');
xlabel('Different subsets');
ylabel('Accuracy');
ylim([0.8 1.05])
%% Comparison between processing speed
c = categorical({'ADAM','SGDM'});
AverageTime = [0.034687026 0.237052489;0.035222246 0.130796537];
bar(c,AverageTime)
a = (1:size(AverageTime,1)).';
x = [a-0.15 a+0.15];
for k=1:size(AverageTime,1)
    for m = 1:size(AverageTime,2)
        text(x(k,m),AverageTime(k,m),num2str(AverageTime(k,m),'%0.4f'),...
            'HorizontalAlignment','center',...
            'VerticalAlignment','bottom')
    end
end
grid on;
title('Processing time of different TSR system ')  
legend('AlexNet','GoogleNet');
xlabel('Different Optimization');
ylabel('Average Time/(second)');
ylim([0 0.3])











