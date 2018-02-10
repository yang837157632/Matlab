function varargout = gui_menu(varargin)
% GUI_MENU MATLAB code for gui_menu.fig
%      GUI_MENU, by itself, creates a new GUI_MENU or raises the existing
%      singleton*.
%
%      H = GUI_MENU returns the handle to a new GUI_MENU or the handle to
%      the existing singleton*.
%
%      GUI_MENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_MENU.M with the given input arguments.
%
%      GUI_MENU('Property','Value',...) creates a new GUI_MENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_menu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_menu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_menu

% Last Modified by GUIDE v2.5 30-Jul-2015 17:12:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_menu_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_menu_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui_menu is made visible.
function gui_menu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_menu (see VARARGIN)

% Choose default command line output for gui_menu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_menu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_menu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function LineSolid_Callback(hObject, eventdata, handles)
% hObject    handle to LineSolid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gco,'LineStyle','-');

% --------------------------------------------------------------------
function LineDashed_Callback(hObject, eventdata, handles)
% hObject    handle to LineDashed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gco,'LineStyle','--');

% --------------------------------------------------------------------
function LineDot_Callback(hObject, eventdata, handles)
% hObject    handle to LineDot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gco,'LineStyle',':');

% --------------------------------------------------------------------
function LineDashedDot_Callback(hObject, eventdata, handles)
% hObject    handle to LineDashedDot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gco,'LineStyle','-.');

% --------------------------------------------------------------------
function mFileOpen_Callback(hObject, eventdata, handles)
% hObject    handle to mFileOpen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile('*.dat','加载数据');
if filename~=0
    filename=[pathname filename];
    [fid,msg]=fopen(filename,'rt');
    if fid<0
        str=['文件' filename '无法打开。'];
        title='文件打开失败';
        errordlg(str,title,'modal');
    else
        [in,count]=fscanf(fid,'%g',2);
        ii=0;
        x=zeros(1,count);
        y=zeros(1,count);
        while ~feof(fid)
            ii=ii+1;
            x(ii)=in(1);
            y(ii)=in(2);
            [in,count]=fscanf(fid,'%g',2);
        end
        fclose(fid);
        hline=plot(x,y,'LineWidth',3);
        xlabel('x');
        ylabel('y');
        set(hline,'Uicontextmenu',handles.ContextMenu);    
        set(handles.hgon,'Enable','on');
        set(handles.hgoff,'Enable','on');
        set(handles.hbon,'Enable','on');
        set(handles.hboff,'Enable','on');
        set(handles.hhon,'Enable','on');
        set(handles.hhoff,'Enable','on');
        handles.hline=hline;
    end
end
guidata(hObject, handles);


% --------------------------------------------------------------------
function mFileEXit_Callback(hObject, eventdata, handles)
% hObject    handle to mFileEXit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);


% --------------------------------------------------------------------
function ContextMenu1_Callback(hObject, eventdata, handles)
% hObject    handle to ContextMenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function LineWidthPlus_Callback(hObject, eventdata, handles)
% hObject    handle to LineWidthPlus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gco,'LineWidth',get(gco,'LineWidth')+0.5);


% --------------------------------------------------------------------
function LineWidthSubtract_Callback(hObject, eventdata, handles)
% hObject    handle to LineWidthSubtract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gco,'LineWidth',get(gco,'LineWidth')-0.5);


% --------------------------------------------------------------------
function PlotSin_Callback(hObject, eventdata, handles)
% hObject    handle to PlotSin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1=0:0.01:2*pi;
y1=sin(x1);
hsin=plot(x1,y1,'LineWidth',3);
set(hsin,'Uicontextmenu',handles.ContextMenu);  
set(handles.hgon,'Enable','on');
set(handles.hgoff,'Enable','on');
set(handles.hbon,'Enable','on');
set(handles.hboff,'Enable','on');
set(handles.hhon,'Enable','on');
set(handles.hhoff,'Enable','on');
handles.hsin=hsin;
guidata(hObject, handles);



% --------------------------------------------------------------------
function PlotCos_Callback(hObject, eventdata, handles)
% hObject    handle to PlotCos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x2=0:0.01:2*pi;
y2=cos(x2);
hcos=plot(x2,y2,'LineWidth',3);
set(hcos,'Uicontextmenu',handles.ContextMenu);  
set(handles.hgon,'Enable','on');
set(handles.hgoff,'Enable','on');
set(handles.hbon,'Enable','on');
set(handles.hboff,'Enable','on');
set(handles.hhon,'Enable','on');
set(handles.hhoff,'Enable','on');
handles.hcos=hcos;
guidata(hObject, handles);


% --------------------------------------------------------------------
function hgon_Callback(hObject, eventdata, handles)
% hObject    handle to hgon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
grid on;


% --------------------------------------------------------------------
function hgoff_Callback(hObject, eventdata, handles)
% hObject    handle to hgoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
grid off;


% --------------------------------------------------------------------
function hbon_Callback(hObject, eventdata, handles)
% hObject    handle to hbon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
box on;


% --------------------------------------------------------------------
function hboff_Callback(hObject, eventdata, handles)
% hObject    handle to hboff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
box off;


% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ColorRed_Callback(hObject, eventdata, handles)
% hObject    handle to ColorRed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'Color','r');


% --------------------------------------------------------------------
function ColorGreen_Callback(hObject, eventdata, handles)
% hObject    handle to ColorGreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'Color','g');


% --------------------------------------------------------------------
function ColorBlue_Callback(hObject, eventdata, handles)
% hObject    handle to ColorBlue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'Color','b');


% --------------------------------------------------------------------
function ColorWhite_Callback(hObject, eventdata, handles)
% hObject    handle to ColorWhite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'Color','w');


% --------------------------------------------------------------------
function ContextMenu_Callback(hObject, eventdata, handles)
% hObject    handle to ContextMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function hhon_Callback(hObject, eventdata, handles)
% hObject    handle to hhon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hold on;


% --------------------------------------------------------------------
function hhoff_Callback(hObject, eventdata, handles)
% hObject    handle to hhoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hold off;
