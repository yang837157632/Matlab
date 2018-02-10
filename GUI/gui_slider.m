function varargout = gui_slider(varargin)
%GUI_SLIDER M-file for gui_slider.fig
%      GUI_SLIDER, by itself, creates a new GUI_SLIDER or raises the existing
%      singleton*.
%
%      H = GUI_SLIDER returns the handle to a new GUI_SLIDER or the handle to
%      the existing singleton*.
%
%      GUI_SLIDER('Property','Value',...) creates a new GUI_SLIDER using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to gui_slider_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUI_SLIDER('CALLBACK') and GUI_SLIDER('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUI_SLIDER.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_slider

% Last Modified by GUIDE v2.5 30-Jul-2015 19:00:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_slider_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_slider_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before gui_slider is made visible.
function gui_slider_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for gui_slider
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_slider wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_slider_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.fwidth,'String',num2str(get(handles.slider1,'Value')));
set(gcf,'Position',[120 120 get(handles.slider1,'Value') get(handles.slider2,'Value')]);


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.fheight,'String',num2str(get(handles.slider2,'Value')));
set(gcf,'Position',[120 120 get(handles.slider1,'Value') get(handles.slider2,'Value')]);


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function fwidth_Callback(hObject, eventdata, handles)
% hObject    handle to fwidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fwidth as text
%        str2double(get(hObject,'String')) returns contents of fwidth as a double
set(handles.fwidth,'String',num2str(get(handles.slider1,'Value')));

% --- Executes during object creation, after setting all properties.
function fwidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fwidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fheight_Callback(hObject, eventdata, handles)
% hObject    handle to fheight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fheight as text
%        str2double(get(hObject,'String')) returns contents of fheight as a double
set(handles.fheight,'String',num2str(get(handles.slider2,'Value')));


% --- Executes during object creation, after setting all properties.
function fheight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fheight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
