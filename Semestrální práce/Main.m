function varargout = Main(varargin)
%MAIN MATLAB code file for Main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('Property','Value',...) creates a new MAIN using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to Main_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      MAIN('CALLBACK') and MAIN('CALLBACK',hObject,...) call the
%      local function named CALLBACK in MAIN.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Main

% Last Modified by GUIDE v2.5 01-Jan-2022 20:08:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Main_OpeningFcn, ...
                   'gui_OutputFcn',  @Main_OutputFcn, ...
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

% --- Executes just before Main is made visible.
function Main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for Main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Main wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = Main_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);

% Get default command line output from handles structure
varargout{1} = handles.output;
handles.size = 5;
guidata(hObject,handles);
handles.minecount = 4;
guidata(hObject,handles);
handles.minesMatrix = matrix_creation(handles.size, handles.minecount);
handles.minesMatrix
handles.mineCount = handles.minecount;
pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
guidata(hObject,handles);

handles.mine = imread('Mine.png');
handles.mine = imresize(handles.mine, [75,75]);
guidata(hObject,handles);

handles.markMine = imread('MarkMine.png');
handles.markMine = imresize(handles.markMine, [75,75]);
guidata(hObject,handles);
handles.markMineCount = 0;
guidata(hObject,handles);

% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);
if var == 9
    set(handles.(variable),'CDATA',handles.mine);

    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton52.
function pushbutton52_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9 
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton54.
function pushbutton54_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton54.
function pushbutton55_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0 
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            if handles.minesMatrix(i,j) == 0
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var)); 
                set(handles.(variable),'CDATA',[]);
            end
        end
    end
elseif var ~= 9
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end
% --- Executes on button press in pushbutton51.
function pushbutton51_Callback(hObject, eventdata, handles)
var = handles.minesMatrix(hObject.Max,hObject.Min);
variable=GetField(hObject.Max,hObject.Min);

if var == 9
    set(handles.(variable),'CDATA',handles.mine);
    for i=1:5
        for j=1:5
            num=append(int2str(i),int2str(j));
            num2=str2double(num);
            variable=sprintf('pushbutton%1i', num2);
            set(handles.(variable),'Enable','off')
        end
    end
    text3_CreateFcn(handles.text3, eventdata, handles);
elseif var == 0
    set(handles.(variable),'CDATA',[]);
    for i=1:5
        for j=1:5
            try
                if handles.minesMatrix(i,j) == 0
                    var = handles.minesMatrix(i,j);
                    num=append(int2str(i),int2str(j));
                    num2=str2double(num);
                    variable2=sprintf('pushbutton%1i', num2);
                    set(handles.(variable2),'String',int2str(var));
                    set(handles.(variable),'CDATA',[]);
                    continue
                end
            catch 
            end
            try
            if handles.minesMatrix(i-1,j) == 0
                var = handles.minesMatrix(i,j);
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var));
                set(handles.(variable),'CDATA',[]);
                continue
            end
            catch 
            end
            try
            if handles.minesMatrix(i+1,j) == 0
                var = handles.minesMatrix(i,j);
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var));
                set(handles.(variable),'CDATA',[]);
                continue
            end
            catch 
            end
            try
            if handles.minesMatrix(i,j+1) == 0
                var = handles.minesMatrix(i,j);
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var));
                set(handles.(variable),'CDATA',[]);
                continue
            end
            catch 
            end
            try
            if handles.minesMatrix(i,j-1) == 0
                var = handles.minesMatrix(i,j);
                num=append(int2str(i),int2str(j));
                num2=str2double(num);
                variable2=sprintf('pushbutton%1i', num2);
                set(handles.(variable2),'String',int2str(var));
                set(handles.(variable),'CDATA',[]);
                continue
            end
            catch 
            end
        end
    end
elseif var ~= 9
    set(handles.(variable),'CDATA',[]);
    set(handles.(variable),'String',int2str(var));
end

% --------------------------------------------------------------------
function Exit_Callback(hObject, eventdata, handles)
closereq();

% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
handles.minesMatrix = matrix_creation(handles.size, handles.minecount);
guidata(hObject, handles);
for i=1:5
    for j=1:5
        num=append(int2str(i),int2str(j));
        num2=str2double(num);
        variable=sprintf('pushbutton%1i', num2);
        set(handles.(variable),'CDATA',[]);
        set(handles.(variable),'String',"")
        set(handles.(variable),'Enable','on')
    end
end


% --- Executes on button press in pushbutton72.
function pushbutton72_Callback(hObject, eventdata, handles)
handles.minesMatrix = matrix_creation(handles.size, handles.minecount);
guidata(hObject, handles);
set(handles.text3, 'Visible', 'off');
set(handles.text9, 'Visible', 'off');
set(handles.pushbutton72, 'Visible', 'off');
set(handles.pushbutton73, 'Visible', 'off');
for i=1:5
    for j=1:5
        num=append(int2str(i),int2str(j));
        num2=str2double(num);
        variable=sprintf('pushbutton%1i', num2);
        set(handles.(variable),'CDATA',[]);
        set(handles.(variable),'String',"")
        set(handles.(variable),'Enable','on')
    end
end

% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
set(handles.text3, 'Visible', 'on');
set(handles.pushbutton72, 'Visible', 'on');
set(handles.pushbutton73, 'Visible', 'on');


% --- Executes on button press in pushbutton73.
function pushbutton73_Callback(hObject, eventdata, handles)
closereq();

% --- Executes on button press in pushbutton74.
function pushbutton74_Callback(hObject, eventdata, handles)
set(handles.pushbutton74, 'String', int2str(handles.mineCount));

function pushbutton51_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton32_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);

switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton33_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton34_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton31_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton22_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton24_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');

switch seltype
    case 'alt'
       set(handles.pushbutton24,'String', "");
       set(handles.pushbutton24,'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount


                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton21_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton12_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton13_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton14_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton11_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton15_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton42_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton43_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton44_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton41_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton52_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton53_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton54_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton55_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton35_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

function pushbutton25_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton45_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end
function pushbutton23_ButtonDownFcn(hObject, eventdata, handles)
seltype = get(gcf,'SelectionType');
variable=GetField(hObject.Max,hObject.Min);
switch seltype
    case 'alt'
       set(handles.(variable),'String', "");
       set(handles.(variable),'CDATA',handles.markMine);
       if handles.minesMatrix(hObject.Max,hObject.Min) == 9
            handles.markMineCount = handles.markMineCount + 1;
            guidata(hObject, handles);
            if handles.markMineCount == handles.mineCount
                for i=1:5
                    for j=1:5
                        num=append(int2str(i),int2str(j));
                        num2=str2double(num);
                        variable=sprintf('pushbutton%1i', num2);
                        set(handles.(variable),'Enable','off')
                    end
                end
                text9_CreateFcn(handles.text9, eventdata, handles);
            end
       end
       pushbutton74_Callback(handles.pushbutton74, eventdata, handles);
end

% --- Executes during object creation, after setting all properties.
function text9_CreateFcn(hObject, eventdata, handles)
set(handles.text9, 'Visible', 'on');
set(handles.pushbutton72, 'Visible', 'on');
set(handles.pushbutton73, 'Visible', 'on');
