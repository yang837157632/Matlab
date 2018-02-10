function varargout = gui_radio(varargin)
% GUI_RADIO MATLAB code for gui_radio.fig
%      GUI_RADIO, by itself, creates a new GUI_RADIO or raises the existing
%      singleton*.
%
%      H = GUI_RADIO returns the handle to a new GUI_RADIO or the handle to
%      the existing singleton*.
%
%      GUI_RADIO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_RADIO.M with the given input arguments.
%
%      GUI_RADIO('Property','Value',...) creates a new GUI_RADIO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_radio_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_radio_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_radio

% Last Modified by GUIDE v2.5 30-Jul-2015 18:29:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_radio_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_radio_OutputFcn, ...
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


% --- Executes just before gui_radio is made visible.
function gui_radio_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_radio (see VARARGIN)

% Choose default command line output for gui_radio
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_radio wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_radio_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in hr.
function hr_Callback(hObject, eventdata, handles)
% hObject    handle to hr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of hr
set(handles.hr,'Value',1);
set(handles.hb,'Value',0);
set(handles.hy,'Value',0);
set(handles.hw,'Value',0);
set(gcf,'Color','r');


% --- Executes on button press in hb.
function hb_Callback(hObject, eventdata, handles)
% hObject    handle to hb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of hb
set(handles.hr,'Value',0);
set(handles.hb,'Value',1);
set(handles.hy,'Value',0);
set(handles.hw,'Value',0);
set(gcf,'Color','b');


% --- Executes on button press in hy.
function hy_Callback(hObject, eventdata, handles)
% hObject    handle to hy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of hy
set(handles.hr,'Value',0);
set(handles.hb,'Value',0);
set(handles.hy,'Value',1);
set(handles.hw,'Value',0);
set(gcf,'Color','y');



% --- Executes on button press in hw.
function hw_Callback(hObject, eventdata, handles)
% hObject    handle to hw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of hw
set(handles.hr,'Value',0);
set(handles.hb,'Value',0);
set(handles.hy,'Value',0);
set(handles.hw,'Value',1);
set(gcf,'Color','w');
