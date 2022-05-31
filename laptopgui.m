function varargout = laptopgui(varargin)
% LAPTOPGUI MATLAB code for laptopgui.fig
%      LAPTOPGUI, by itself, creates a new LAPTOPGUI or raises the existing
%      singleton*.
%
%      H = LAPTOPGUI returns the handle to a new LAPTOPGUI or the handle to
%      the existing singleton*.
%
%      LAPTOPGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAPTOPGUI.M with the given input arguments.
%
%      LAPTOPGUI('Property','Value',...) creates a new LAPTOPGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before laptopgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to laptopgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help laptopgui

% Last Modified by GUIDE v2.5 25-May-2022 13:12:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @laptopgui_OpeningFcn, ...
                   'gui_OutputFcn',  @laptopgui_OutputFcn, ...
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


% --- Executes just before laptopgui is made visible.
function laptopgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to laptopgui (see VARARGIN)

% Choose default command line output for laptopgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes laptopgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = laptopgui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ssd_Callback(hObject, eventdata, handles)
% hObject    handle to ssd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ssd as text
%        str2double(get(hObject,'String')) returns contents of ssd as a double


% --- Executes during object creation, after setting all properties.
function ssd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ssd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function weight_Callback(hObject, eventdata, handles)
% hObject    handle to weight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of weight as text
%        str2double(get(hObject,'String')) returns contents of weight as a double


% --- Executes during object creation, after setting all properties.
function weight_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display_Callback(hObject, eventdata, handles)
% hObject    handle to display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display as text
%        str2double(get(hObject,'String')) returns contents of display as a double


% --- Executes during object creation, after setting all properties.
function display_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ram_Callback(hObject, eventdata, handles)
% hObject    handle to ram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ram as text
%        str2double(get(hObject,'String')) returns contents of ram as a double


% --- Executes during object creation, after setting all properties.
function ram_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function price_Callback(hObject, eventdata, handles)
% hObject    handle to price (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of price as text
%        str2double(get(hObject,'String')) returns contents of price as a double


% --- Executes during object creation, after setting all properties.
function price_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
SSD = str2double(get(handles.ssd, 'string'));
Weight = str2double(get(handles.weight, 'string'));
Display = str2double(get(handles.display, 'string'));
RAM = str2double(get(handles.ram, 'string'));
Price = str2double(get(handles.price,'string'));

sample = [SSD Weight Display RAM Price];

opts = detectImportOptions('LaptopList.xlsx');
opts.SelectedVariableNames = (2:6);
training = readmatrix('LaptopList.xlsx',opts);

opts.SelectedVariableNames = (1);
class = readmatrix('LaptopList.xlsx',opts);

if isnan(sample)
    msgbox('All of the Variables Must be Filled');
else
knn = fitcknn(training, class);
knn.NumNeighbors = 10;

Recommendation = predict(knn, sample);

set(handles.recommendation,'string',Recommendation);end

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
set(handles.ssd,'string','');
set(handles.weight,'string','');
set(handles.display,'string','');
set(handles.ram,'string','');
set(handles.price,'string','');

function recommendation_Callback(hObject, eventdata, handles)
% hObject    handle to recommendation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of recommendation as text
%        str2double(get(hObject,'String')) returns contents of recommendation as a double


% --- Executes during object creation, after setting all properties.
function recommendation_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in showtabel.
function showtabel_Callback(hObject, eventdata, handles)
format short
dataset = readcell('LaptopList.xlsx','Range','A2:F201');
header = readcell('LaptopList.xlsx','Range','A1:F1');
set(handles.tabel, 'Data', dataset, 'ColumnName', header);

% --- Executes on button press in resettabel.
function resettabel_Callback(hObject, eventdata, handles)
set(handles.tabel, 'Data', cell(size(get(handles.tabel,'Data'))));


% --- Executes on button press in infobutton.
function infobutton_Callback(hObject, eventdata, handles)
info;


% --- Executes on button press in backbutton.
function backbutton_Callback(hObject, eventdata, handles)
% hObject    handle to backbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
loginpage;