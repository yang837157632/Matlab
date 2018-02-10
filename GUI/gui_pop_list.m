function varargout = gui_pop_list(varargin)
% GUI_POP_LIST MATLAB code for gui_pop_list.fig
%      GUI_POP_LIST, by itself, creates a new GUI_POP_LIST or raises the existing
%      singleton*.
%
%      H = GUI_POP_LIST returns the handle to a new GUI_POP_LIST or the handle to
%      the existing singleton*.
%
%      GUI_POP_LIST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_POP_LIST.M with the given input arguments.
%
%      GUI_POP_LIST('Property','Value',...) creates a new GUI_POP_LIST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_pop_list_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_pop_list_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_pop_list

% Last Modified by GUIDE v2.5 30-Jul-2015 19:34:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_pop_list_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_pop_list_OutputFcn, ...
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


% --- Executes just before gui_pop_list is made visible.
function gui_pop_list_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_pop_list (see VARARGIN)

% Choose default command line output for gui_pop_list
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_pop_list wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_pop_list_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in Cpop.
function Cpop_Callback(hObject, eventdata, handles)
% hObject    handle to Cpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Cpop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Cpop
cbcol1=['r','g','b','w'];
set(gcf,'Color',cbcol1(get(handles.Cpop,'Value')));

% --- Executes during object creation, after setting all properties.
function Cpop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Clist.
function Clist_Callback(hObject, eventdata, handles)
% hObject    handle to Clist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Clist contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Clist
cbcol2=['k','c','m','y'];
set(gcf,'Color',cbcol2(get(handles.Clist,'Value')));



% --- Executes during object creation, after setting all properties.
function Clist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Clist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radio1.
function radio1_Callback(hObject, eventdata, handles)
% hObject    handle to radio1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radio1
set(handles.radio1,'Value',1);
set(handles.radio2,'Value',0);
set(handles.Cpop,'Enable','on');
set(handles.Clist,'Enable','off');


% --- Executes on button press in radio2.
function radio2_Callback(hObject, eventdata, handles)
% hObject    handle to radio2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radio2
set(handles.radio1,'Value',0);
set(handles.radio2,'Value',1);
set(handles.Cpop,'Enable','off');
set(handles.Clist,'Enable','on');
