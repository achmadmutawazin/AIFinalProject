function varargout = loginpage(varargin)
% LOGINPAGE MATLAB code for loginpage.fig
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @loginpage_OpeningFcn, ...
                   'gui_OutputFcn',  @loginpage_OutputFcn, ...
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
function loginpage_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
function varargout = loginpage_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% --- Executes on button press in loginbutton.
function loginbutton_Callback(hObject, eventdata, handles)
Username = get(handles.username,'string');
Password = get(handles.password,'string');
username1 = 'user';
password1 = 'user';

s = strcmp(Username,username1);
y = strcmp(Password,password1);

if s == 1 && y == 1
    laptopgui;
    msgbox('Login Successfull');
    set(handles.username,'string','');
    set(handles.password,'string','');
else
    msgbox('Wrong username or password');
    set(handles.username,'string','');
    set(handles.password,'string','');
end
% --- Executes on button press in closebutton.
function closebutton_Callback(hObject, eventdata, handles)
close;
function username_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function username_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function password_Callback(hObject, eventdata, handles)
% hObject    handle to password (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of password as text
%        str2double(get(hObject,'String')) returns contents of password as a double


% --- Executes during object creation, after setting all properties.
function password_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
