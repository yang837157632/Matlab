function varargout = gui_check(varargin)
% GUI_CHECK MATLAB code for gui_check.fig
%      GUI_CHECK, by itself, creates a new GUI_CHECK or raises the existing
%      singleton*.
%
%      H = GUI_CHECK returns the handle to a new GUI_CHECK or the handle to
%      the existing singleton*.
%
%      GUI_CHECK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_CHECK.M with the given input arguments.
%
%      GUI_CHECK('Property','Value',...) creates a new GUI_CHECK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_check_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_check_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_check

% Last Modified by GUIDE v2.5 15-Oct-2015 15:31:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_check_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_check_OutputFcn, ...
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


% --- Executes just before gui_check is made visible.
function gui_check_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_check (see VARARGIN)

% Choose default command line output for gui_check
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_check wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_check_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in myposi.
function myposi_Callback(hObject, eventdata, handles)
% hObject    handle to myposi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of myposi
set(handles.mydefault,'Value',0);
set(gcf,'Position',[200 200 400 500]);
if get(handles.myposi,'Value')==1
    set(gcf,'Position',[100 100 600 500]);
end


% --- Executes on button press in mycolor.
function mycolor_Callback(hObject, eventdata, handles)
% hObject    handle to mycolor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mycolor
set(handles.mydefault,'Value',0);
set(gcf,'Color','w');
if get(handles.mycolor,'Value')==1
    set(gcf,'Color','r');
end




% --- Executes on button press in myname.
function myname_Callback(hObject, eventdata, handles)
% hObject    handle to myname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of myname
set(handles.mydefault,'Value',0);
set(gcf,'Name','none');
if get(handles.myname,'Value')==1
    set(gcf,'Name','Star');
end


% --- Executes on button press in mydefault.
function mydefault_Callback(hObject, eventdata, handles)
% hObject    handle to mydefault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mydefault
set(handles.myposi,'Value',0);
set(handles.mycolor,'Value',0);
set(handles.myname,'Value',0);
set(gcf,'Position',[490 212 560 420],...
    'Name','gui_check',...
    'color','default');
