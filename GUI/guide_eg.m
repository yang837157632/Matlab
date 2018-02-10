function varargout = guide_eg(varargin)
% GUIDE_EG MATLAB code for guide_eg.fig
%      GUIDE_EG, by itself, creates a new GUIDE_EG or raises the existing
%      singleton*.
%
%      H = GUIDE_EG returns the handle to a new GUIDE_EG or the handle to
%      the existing singleton*.
%
%      GUIDE_EG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIDE_EG.M with the given input arguments.
%
%      GUIDE_EG('Property','Value',...) creates a new GUIDE_EG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guide_eg_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guide_eg_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guide_eg

% Last Modified by GUIDE v2.5 15-Oct-2015 15:35:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guide_eg_OpeningFcn, ...
                   'gui_OutputFcn',  @guide_eg_OutputFcn, ...
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


% --- Executes just before guide_eg is made visible.
function guide_eg_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guide_eg (see VARARGIN)
handles.peaks=peaks(35);
handles.membrane=membrane;
[x y]=meshgrid(-8:0.5:8);
r=sqrt(x.^2+y.^2);
sinc=sin(r)./(r+eps);
handles.sinc=sinc;
handles.current_data=handles.peaks;
surf(handles.current_data);
% Choose default command line output for guide_eg
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guide_eg wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guide_eg_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Mesh.
function Mesh_Callback(hObject, eventdata, handles)
% hObject    handle to Mesh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mesh(handles.current_data);


% --- Executes on button press in Surf.
function Surf_Callback(hObject, eventdata, handles)
% hObject    handle to Surf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
surf(handles.current_data);


% --- Executes on button press in Contour3.
function Contour3_Callback(hObject, eventdata, handles)
% hObject    handle to Contour3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
contour3(handles.current_data);


% --- Executes on selection change in ChooseFun.
function ChooseFun_Callback(hObject, eventdata, handles)
% hObject    handle to ChooseFun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(hObject,'String');
val=get(hObject,'Value');
switch str{val};
    case 'Peaks'
        handles.current_data=handles.peaks;
    case 'Membrane'
        handles.current_data=handles.membrane;
    case 'Sinc'
        handles.current_data=handles.sinc;
end
guidata(hObject, handles);

% Hints: contents = cellstr(get(hObject,'String')) returns ChooseFun contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ChooseFun


% --- Executes during object creation, after setting all properties.
function ChooseFun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ChooseFun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function mSelect_Callback(hObject, eventdata, handles)
% hObject    handle to mSelect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mGreen_Callback(hObject, eventdata, handles)
% hObject    handle to mGreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'Color','g');


% --------------------------------------------------------------------
function mRed_Callback(hObject, eventdata, handles)
% hObject    handle to mRed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'Color','r');


% --- Executes during object creation, after setting all properties.
function text1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --------------------------------------------------------------------
function mBlue_Callback(hObject, eventdata, handles)
% hObject    handle to mBlue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'Color','b');


% --------------------------------------------------------------------
function mDefault_Callback(hObject, eventdata, handles)
% hObject    handle to mDefault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'Color','default');
