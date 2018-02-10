function varargout = gui_eg(varargin)
% GUI_EG MATLAB code for gui_eg.fig
%      GUI_EG, by itself, creates a new GUI_EG or raises the existing
%      singleton*.
%
%      H = GUI_EG returns the handle to a new GUI_EG or the handle to
%      the existing singleton*.
%
%      GUI_EG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_EG.M with the given input arguments.
%
%      GUI_EG('Property','Value',...) creates a new GUI_EG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_eg_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_eg_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_eg

% Last Modified by GUIDE v2.5 06-Sep-2015 18:38:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_eg_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_eg_OutputFcn, ...
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


% --- Executes just before gui_eg is made visible.
function gui_eg_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_eg (see VARARGIN)

% Choose default command line output for gui_eg
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_eg wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_eg_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function add1_Callback(hObject, eventdata, handles)
% hObject    handle to add1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of add1 as text
%        str2double(get(hObject,'String')) returns contents of add1 as a double


% --- Executes during object creation, after setting all properties.
function add1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to add1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function add2_Callback(hObject, eventdata, handles)
% hObject    handle to add2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of add2 as text
%        str2double(get(hObject,'String')) returns contents of add2 as a double


% --- Executes during object creation, after setting all properties.
function add2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to add2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.add1,'String'));
b=str2num(get(handles.add2,'String'));
c=num2str(a+b);
set(handles.result,'String',c);
guidata(hObject, handles);
