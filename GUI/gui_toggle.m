function varargout = gui_toggle(varargin)
% GUI_TOGGLE MATLAB code for gui_toggle.fig
%      GUI_TOGGLE, by itself, creates a new GUI_TOGGLE or raises the existing
%      singleton*.
%
%      H = GUI_TOGGLE returns the handle to a new GUI_TOGGLE or the handle to
%      the existing singleton*.
%
%      GUI_TOGGLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_TOGGLE.M with the given input arguments.
%
%      GUI_TOGGLE('Property','Value',...) creates a new GUI_TOGGLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_toggle_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_toggle_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_toggle

% Last Modified by GUIDE v2.5 06-Sep-2015 18:50:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_toggle_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_toggle_OutputFcn, ...
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


% --- Executes just before gui_toggle is made visible.
function gui_toggle_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_toggle (see VARARGIN)

% Choose default command line output for gui_toggle
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_toggle wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_toggle_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Pplot.
function Pplot_Callback(hObject, eventdata, handles)
% hObject    handle to Pplot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=0:0.01:2*pi;
y=sin(x)+cos(x);
plot(x,y);


% --- Executes on button press in Tgrid.
function Tgrid_Callback(hObject, eventdata, handles)
% hObject    handle to Tgrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Tgrid
grid;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
