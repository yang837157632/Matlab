function varargout = gui_dlg(varargin)
% GUI_DLG MATLAB code for gui_dlg.fig
%      GUI_DLG, by itself, creates a new GUI_DLG or raises the existing
%      singleton*.
%
%      H = GUI_DLG returns the handle to a new GUI_DLG or the handle to
%      the existing singleton*.
%
%      GUI_DLG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_DLG.M with the given pushbutton2 arguments.
%
%      GUI_DLG('Property','Value',...) creates a new GUI_DLG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_dlg_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_dlg_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_dlg

% Last Modified by GUIDE v2.5 30-Jul-2015 12:34:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_dlg_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_dlg_OutputFcn, ...
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


% --- Executes just before gui_dlg is made visible.
function gui_dlg_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_dlg (see VARARGIN)

% Choose default command line output for gui_dlg
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_dlg wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_dlg_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
out=dialog('WindowStyle', 'normal', 'Name', 'My Dialog');



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt = {'a:','b:','c:'};
name ='Input the parameter';
numlines = [1 2 1];
def = {'3','4','5'};
options.Resize='on';                     % off/on
options.WindowStyle='normal';            % modal/normal
options.Interpreter='tex';               % none/tex
answer=inputdlg(prompt,name,numlines,def,options);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Please input ''reset''','°ïÖú','help','modal');



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
warndlg('Pressing OK will clear memory','!! Warning !!');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpdlg('You need to choose 10 points from the figure','File Help');


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
errordlg('File not found','File Error');


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName1,PathName1] = uigetfile('*.m','Select the MATLAB code file')
[filename1, pathname2, filterindex] = uigetfile( ...
        {'*.mat','MAT-files (*.mat)';'*.mdl','Models (*.mdl)';'*.*',  'All Files (*.*)'}, ...
        'Pick a file','MultiSelect', 'on')



% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file1,path1] = uiputfile('animinit.m','Save file name');
[file2, path2, filterindex] = uiputfile( ...
       {'*.mat','MAT-files (*.mat)';'*.mdl','Models (*.mdl)';'*.*',  'All Files (*.*)'}, ...
        'Save as', 'Untitled.mat');


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ButtonName = questdlg('favorite color?','Color Question', ...
                         'Red', 'Green', 'Blue', 'Green');
switch ButtonName,
     case 'Red',
      disp('Your favorite color is Red');
     case 'Blue',
      disp('Your favorite color is Blue.')
     case 'Green',
      disp('Your favorite color is Green.');
end 


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h_color=uisetcolor;
set(handles.eg,'Back',h_color);

uisetcolor(gcf,'Choose color');


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h_font=uisetfont;
set(handles.pushbutton11,h_font);

uisetfont(handles.eg,'Choose Font');


% --- Executes on button press in Printdlg.
function Printdlg_Callback(hObject, eventdata, handles)
% hObject    handle to Printdlg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
printdlg;


% --- Executes during object creation, after setting all properties.
function text1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
