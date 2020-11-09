% Main function of interface
% Written by KeMeng
% Supervised by ZhangWen

function varargout = ProteinEncoding(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProteinEncoding_OpeningFcn, ...
                   'gui_OutputFcn',  @ProteinEncoding_OutputFcn, ...
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


% --- Executes just before ProteinEncoding is made visible.
function ProteinEncoding_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for ProteinEncoding
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);




% --- Outputs from this function are returned to the command line.
function varargout = ProteinEncoding_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
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
sub_save();

    
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);

% --------------------------------------------------------------------
function m_file_Callback(hObject, eventdata, handles)
% hObject    handle to m_file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_properties_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_properties (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_files_acc_Callback(hObject, eventdata, handles)
% hObject    handle to m_files_acc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_dc_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_dc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_aap_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_aap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_10_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_apaac_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_apaac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_paac_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_paac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_binary_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_binary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctdc_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctdc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctdd_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctdd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctdt_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctdt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctraid_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctraid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_geary_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_geary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_moran_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_moran (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_moreaubroto_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_moreaubroto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_qso_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_qso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_phyche_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_phyche (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_socn_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_socn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_all_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_sequence_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_sequence (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_loadfiles_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_loadfiles (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_save_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_exit_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_allseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_allseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_allfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_allfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_socnseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_socnseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_socnfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_socnfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_phycheseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_phycheseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_phychefile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_phychefile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_qsoseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_qsoseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_qsofile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_qsofile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_moreauseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_moreauseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_moreaufile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_moreaufile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_moranseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_moranseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_moranfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_moranfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_gearyseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_gearyseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_gearyfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_gearyfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctraidseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctraidseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctraidfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctraidfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctdtseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctdtseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctdtfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctdtfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctddseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctddseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctddfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctddfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctdcseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctdcseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_ctdcfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_ctdcfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_biseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_biseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_bifile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_bifile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_paacseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_paacseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_paacfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_paacfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_apaacseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_apaacseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_apaacfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_apaacfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_17_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_18_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_aapseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_aapseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_aapfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_aapfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_dcseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_dcseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_dcfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_dcfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_accseq_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_accseq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_accfile_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_accfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

results=cell(15,1);
notes=zeros(15,1);
names={'AAC','DC','AAP','PAAC','APAAC','Binary','CTDC','CTDD','CTDT','CTriad','Geary','Moran','MoreauBroto','QSO','SOCN'};
seq=get(handles.edit1,'string');
[num_all,len_seq]=size(seq);
num_seq=0;
for i=1:num_all
    if seq(i,1)=='>'
        num_seq=num_seq+1;
    end
end
if num_seq==0
    str='Error,please fasta format data';
    set(handles.edit2,'String',str); 
else
data=cell(num_seq,1);
header=cell(num_seq,1);
t=1;
for i=1:num_seq
str=[];
if  t<=num_all && seq(t,1)=='>'
    header{i}=seq(t,:);
    t=t+1;
end
while t<=num_all && seq(t,1)~='>'
          str=strcat(str,seq(t,:));
          t=t+1;
end
data{i}=str;
    
end

[row,column]=ProteinCheck(data);
if row>0
    str='Error,sequence contains uncommon amino acid.';
    set(handles.edit2,'String',str); 
else

h = waitbar(0,'Processing...');
if get(handles.checkbox4,'Value')==1
    
       results{1}=AAC_file(data);
       notes(1)=1;
end
if get(handles.checkbox6,'Value')==1
        
       results{2}=DC_file(data);
       notes(2)=1;
end
       
if get(handles.checkbox8,'Value')==1
    
       results{3}=AAP_file(data);
       notes(3)=1;
end
waitbar(0.5,h); 
if get(handles.checkbox12,'Value')==1
    
       load('pa_paac.mat');
    
       results{4}=PAAC_file(data,para);
       notes(4)=1;
       para=5;
       save pa_paac para;
end 
if get(handles.checkbox14,'Value')==1
    
       load('pa_apaac.mat');
       results{5}=APAAC_file(data,para);
       notes(5)=1;
       para=5;
       save pa_apaac para;
end  
if get(handles.checkbox5,'Value')==1
    
       results{6}=Binary_file(data);
       notes(6)=1;
end 
if get(handles.checkbox7,'Value')==1
    
       results{7}=CTDC_file(data);
       notes(7)=1;
end 
if get(handles.checkbox9,'Value')==1
    
       results{8}=CTDD_file(data);
       notes(8)=1;
end 
if get(handles.checkbox11,'Value')==1
    
       results{9}=CTDT_file(data);
       notes(9)=1;
end 
if get(handles.checkbox13,'Value')==1
    
       results{10}=CTriad_file(data);
       notes(10)=1;
end   
if get(handles.checkbox15,'Value')==1
     
       load('pa_geary.mat');
       results{11}=Geary_file(data,para);
       notes(11)=1;
       para=5;
       save pa_geary para;
end 
if get(handles.checkbox16,'Value')==1
    
       load('pa_moran.mat');
       results{12}=Moran_file(data,para);
       notes(12)=1;
       para=5;
       save pa_moran para;
end 
if get(handles.checkbox17,'Value')==1
    
       load('pa_moreau.mat');
       results{13}=Moreau_file(data,para);
       notes(13)=1;
       para=5;
       save pa_moreau para;
end    
if get(handles.checkbox18,'Value')==1
    
       load('pa_qso.mat');
       results{14}=QSO_file(data, para);
       notes(14)=1;
       para=5;
       save pa_qso para;
end 
if get(handles.checkbox19,'Value')==1
    
       load('pa_socn.mat');
       results{15}=SOCN_file(data,para);
       notes(15)=1;
       para=5;
       save pa_socn para;
end
waitbar(0.8,h); 
t=logical(notes);
amount=sum(t);
data=cell(amount,1);
tt=1;
for i=1:15
    if t(i)==1
    data{tt}=results{i};
    tt=tt+1;
    end
end
 refers=names(t);
save results data refers header;

str=[];


for tt=1:amount
    str=[str,refers(tt)];
   temp3=data{tt};
   [len_t,mmm]=size(temp3);
   for i=1:len_t
           str=[str,header{i},num2str( temp3{i})];
   end
   if tt==amount
       str=[str,'END'];
   end
end

set(handles.edit2,'String',str);
close(h);
%%%
%%%
notes=zeros(15,1);%clear previous data

end
end
% --------------------------------------------------------------------
function Untitled_19_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function pushbutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5


% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6


% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7


% --- Executes on button press in checkbox8.
function checkbox8_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox8


% --- Executes on button press in checkbox9.
function checkbox9_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox9


% --- Executes on button press in checkbox10.
function checkbox10_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox10


% --- Executes on button press in checkbox11.
function checkbox11_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox11


% --- Executes on button press in checkbox12.
function checkbox12_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox12


% --- Executes on button press in checkbox13.
function checkbox13_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox13


% --- Executes on button press in checkbox14.
function checkbox14_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox14


% --- Executes on button press in checkbox15.
function checkbox15_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox15


% --- Executes on button press in checkbox16.
function checkbox16_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox16


% --- Executes on button press in checkbox17.
function checkbox17_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox17


% --- Executes on button press in checkbox18.
function checkbox18_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox18


% --- Executes on button press in checkbox19.
function checkbox19_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox19


% --- Executes on button press in checkbox20.
function checkbox20_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox20


% --- Executes on button press in checkbox21.
function checkbox21_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox21
if get(handles.checkbox21, 'value')==1
 set(handles.checkbox4,'Value',1);
 set(handles.checkbox5,'Value',1);
 set(handles.checkbox6,'Value',1);
 set(handles.checkbox7,'Value',1);
 set(handles.checkbox8,'Value',1);
 set(handles.checkbox9,'Value',1);
 set(handles.checkbox11,'Value',1);
 set(handles.checkbox12,'Value',1);
 set(handles.checkbox13,'Value',1);
 set(handles.checkbox14,'Value',1);
 set(handles.checkbox15,'Value',1);
 set(handles.checkbox16,'Value',1);
 set(handles.checkbox17,'Value',1);
 set(handles.checkbox18,'Value',1);
 set(handles.checkbox19,'Value',1);
end
if get(handles.checkbox21, 'value')==0
 set(handles.checkbox4,'Value',0);
 set(handles.checkbox5,'Value',0);
 set(handles.checkbox6,'Value',0);
 set(handles.checkbox7,'Value',0);
 set(handles.checkbox8,'Value',0);
 set(handles.checkbox9,'Value',0);
 set(handles.checkbox11,'Value',0);
 set(handles.checkbox12,'Value',0);
 set(handles.checkbox13,'Value',0);
 set(handles.checkbox14,'Value',0);
 set(handles.checkbox15,'Value',0);
 set(handles.checkbox16,'Value',0);
 set(handles.checkbox17,'Value',0);
 set(handles.checkbox18,'Value',0);
 set(handles.checkbox19,'Value',0);
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filename=get(handles.edit1,'String');
if filename(1)=='>'
    set(handles.edit2,'String','Please input correct file name'); 
else
[header,data]=importfile(filename);
results=cell(17,1);
notes=zeros(17,1);
names={'AAC','DC','AAP','PAAC','APAAC','Binary','CTDC','CTDD','CTDT','CTriad','Geary','Moran','MoreauBroto','QSO','SOCN'};
[row,column]=ProteinCheck(data);
if row>0
    str='Error,sequence contains uncommon amino acid.';
    set(handles.edit2,'String',str); 
else  
 h = waitbar(0,'Processing...');
if get(handles.checkbox4,'Value')==1
    
       results{1}=AAC_file(data);
       notes(1)=1;
end
if get(handles.checkbox6,'Value')==1
        
       results{2}=DC_file(data);
       notes(2)=1;
end
       
if get(handles.checkbox8,'Value')==1
    
       
       results{3}=AAP_file(data);
       notes(3)=1;
end
waitbar(0.5,h);  
if get(handles.checkbox12,'Value')==1
    
       load('pa_paac.mat');
    
       results{4}=PAAC_file(data,para);
       notes(4)=1;
       para=5;
       save pa_paac para;
end 
if get(handles.checkbox14,'Value')==1
    
       load('pa_apaac.mat');
       results{5}=APAAC_file(data,para);
       notes(5)=1;
       para=5;
       save pa_apaac para;
end  
if get(handles.checkbox5,'Value')==1
    
       results{6}=Binary_file(data);
       notes(6)=1;
end 
if get(handles.checkbox7,'Value')==1
    
       results{7}=CTDC_file(data);
       notes(7)=1;
end 
if get(handles.checkbox9,'Value')==1
    
       results{8}=CTDD_file(data);
       notes(8)=1;
end 
if get(handles.checkbox11,'Value')==1
    
       results{9}=CTDT_file(data);
       notes(9)=1;
end 
if get(handles.checkbox13,'Value')==1
    
       results{10}=CTriad_file(data);
       notes(10)=1;
end   
if get(handles.checkbox15,'Value')==1
     
       load('pa_geary.mat');
       results{11}=Geary_file(data,para);
       notes(11)=1;
       para=5;
       save pa_geary para;
end 
if get(handles.checkbox16,'Value')==1
    
       load('pa_moran.mat');
       results{12}=Moran_file(data,para);
       notes(12)=1;
       para=5;
       save pa_moran para;
end 
if get(handles.checkbox17,'Value')==1
    
       load('pa_moreau.mat');
       results{13}=Moreau_file(data,para);
       notes(13)=1;
       para=5;
       save pa_moreau para;
end    
if get(handles.checkbox18,'Value')==1
    
       load('pa_qso.mat');
       results{14}=QSO_file(data, para);
       notes(14)=1;
       para=5;
       save pa_qso para;
end 
if get(handles.checkbox19,'Value')==1
    
       load('pa_socn.mat');
       results{15}=SOCN_file(data,para);
       notes(15)=1;
       para=5;
       save pa_socn para;
end
waitbar(0.8,h);   
t=logical(notes);
amount=sum(t);
data=cell(amount,1);
tt=1;
for i=1:15
    if t(i)==1
    data{tt}=results{i};
    tt=tt+1;
    end
end
 refers=names(t);
save results data refers header;

str=[];


for tt=1:amount
    str=[str,refers(tt)];
   temp3=data{tt};
   [len_t,mmm]=size(temp3);
   for i=1:len_t
          
           str=[str,header{i},num2str( temp3{i})];
   end
   if tt==amount
       str=[str,'END'];
   end
end

set(handles.edit2,'String',str);
notes=zeros(15,1);
close(h);
end
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
parameter_moran();


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
parameter_moreau();
    
% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
parameter_aap();

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
parameter_qso();


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
parameter_aap_();

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
parameter_socn();


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
parameter_geary();


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function pushbutton18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
parameter_paac();


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
parameter_apaac();


% --- Executes during object creation, after setting all properties.
function pushbutton25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
