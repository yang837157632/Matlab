% MenuBar Name NumberTitle Resize Position Units Color Pointer
% KeyPressFcn WindowButtonDownFcn WindowButtonMotionFcn WindowButtonUpFcn
close all;
x=linspace(0,2*pi,60);
y=sin(x);
z=cos(x);
hf=figure('Color',[0.2 0.4 0.8],...       % [R G B]/r/g/b/...
    'Units','normalized',...              % pixel/normalized/...
    'Position',[0.2 0.2 0.4 0.5],...      %
    'Resize','on',...                     % on/off
    'Name','My figure',...                %
    'NumberTitle','off',...               % on/off
    'MenuBar','none',...                  % figure/none
    'Pointer','watch',...                 % arrow/watch/crisshair/...
    'WindowButtonDownFcn','plot(x,y);axis([0 2*pi -1 1]);',...
    'KeyPressFcn','plot(x,z);axis([0 2*pi -1 1]);');