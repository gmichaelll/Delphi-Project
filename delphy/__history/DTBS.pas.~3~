unit DTBS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls, Vcl.XPMan,
  Vcl.Imaging.pngimage, Vcl.Menus, Vcl.CategoryButtons;

type
  TForm1 = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label6: TLabel;
    XPManifest1: TXPManifest;
    Label7: TLabel;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Label12: TLabel;
    PopupMenu1: TPopupMenu;
    KATOLIK1: TMenuItem;
    ISLAM1: TMenuItem;
    KONGHUCU1: TMenuItem;
    BUDHA1: TMenuItem;
    HINDU1: TMenuItem;
    Button8: TButton;
    LAINNYA1: TMenuItem;
    Label11: TLabel;
    MainMenuisi: TMainMenu;
    LAPORAN1: TMenuItem;
    PENGISIANBIODATA1: TMenuItem;
    PENCARIANBIODATA1: TMenuItem;
    KELUAR1: TMenuItem;
    Button5: TButton;
    Image1: TImage;
    Image2: TImage;
    DBGrid1: TDBGrid;
    Label13: TLabel;
    StaticText1: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure KELUAR2Click(Sender: TObject);
    procedure KATOLIK1Click(Sender: TObject);
    procedure ISLAM1Click(Sender: TObject);
    procedure KONGHUCU1Click(Sender: TObject);
    procedure BUDHA1Click(Sender: TObject);
    procedure HINDU1Click(Sender: TObject);
    procedure PENCARIANBIODATA1Click(Sender: TObject);
    procedure KELUAR1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure PENGISIANBIODATA1Click(Sender: TObject);
    procedure LAINNYA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses FIKTI_XIX, Unit3, Unit4;


procedure TForm1.BUDHA1Click(Sender: TObject);
begin
label11.Caption:='BUDHA'
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
radiobutton1.Checked:=False;
radiobutton2.Checked:=False;
Edit3.clear;
Edit4.Clear;
edit8.Clear;
edit9.clear;
edit10.Clear;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
edit1.SetFocus;
button1.Enabled:=false;
button2.Enabled:=true;
button3.Enabled:=false;
button4.Enabled:=false;

end;

procedure TForm1.Button2Click(Sender: TObject);
   begin
    adoquery1.Append;
    adoquery1.FieldByName('NPM').AsString:=Edit1.Text;
    adoquery1.FieldByName('NAMA').AsString:=Edit2.Text;
    adoquery1.FieldByName('JENIS KELAMIN').AsString:=Label6.Caption;
    adoquery1.FieldByName('NOMOR').AsString:=Edit3.Text;
    adoquery1.FieldByName('EMAIL').AsString:=edit4.Text;
    adoquery1.FieldByName('AGAMA').Asstring:=label11.Caption;
    adoquery1.FieldByName('ANAK KE').AsString:=edit8.Text;
    adoquery1.FieldByName('ALAMAT').AsString:=edit9.Text;
    adoquery1.FieldByName('NOMOR ORANG TUA').AsString:=edit10.Text;
    adoquery1.FieldByName('JURUSAN').AsString:=Label12.Caption;
    adoquery1.Post;
    ShowMessage('Data Berhasil Disimpan !');

    button1.Enabled:=true;
    button2.Enabled:=false;
    button3.Enabled:=false;
    button4.Enabled:=false;


   end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  edit1.Enabled:=false;

  if button3.Caption='EDIT'
  then
  begin
    button3.Caption:='UPDATE';
    edit2.SetFocus;
  end
  else
  if button3.Caption='UPDATE'
  then
  begin
    button3.Caption:='EDIT';
    adoquery1.Edit;
    adoquery1.FieldByName('NPM').AsString:=edit1.Text;
    adoquery1.FieldByName('NAMA').AsString:=edit2.Text;
    adoquery1.FieldByName('JENIS KELAMIN').AsString:=label6.Caption;
    adoquery1.FieldByName('NOMOR').AsString:=edit3.Text;
    adoquery1.FieldByName('EMAIL').AsString:=edit4.Text;
    adoquery1.FieldByName('AGAMA').Asstring:=label11.Caption;
    adoquery1.FieldByName('ANAK KE').AsString:=edit8.Text;
    adoquery1.FieldByName('ALAMAT').AsString:=edit9.Text;
    adoquery1.FieldByName('NOMOR ORANG TUA').AsString:=edit10.Text;
    adoquery1.FieldByName('JURUSAN').AsString:=label12.Caption;
    showmessage('Data Berhasil Diperbaharui');
    adoquery1.Refresh;
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
adoquery1.Delete;
ShowMessage('Data Berhasil Dihapus ! ');
Edit1.Clear;
Edit2.Clear;
radiobutton1.Checked:=False;
radiobutton2.Checked:=False;
Edit3.Clear;
Edit4.Clear;
edit8.Clear;
edit9.Clear;
edit10.Clear;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
adoquery1.Refresh;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
adoquery1.SQL.Text:='select * from table1';
  adoquery1.Active:=True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
radiobutton1.Checked:=False;
radiobutton2.Checked:=False;
Edit3.Clear;
Edit4.Clear;
edit8.Clear;
edit9.clear;
edit10.Clear;
edit1.MaxLength:=8;
edit2.MaxLength:=30;
edit3.MaxLength:=13;
edit4.MaxLength:=35;
edit8.MaxLength:=2;
edit9.MaxLength:=40;
edit10.MaxLength:=13;
radiobutton3.Checked:=false;
radiobutton4.checked:=false;

button1.Enabled:=true;
button2.Enabled:=false;
button3.Enabled:=false;
button4.Enabled:=false;
end;

procedure TForm1.HINDU1Click(Sender: TObject);
begin
label11.Caption:='HINDU'
end;

procedure TForm1.ISLAM1Click(Sender: TObject);
begin
label11.Caption:='ISLAM'
end;

procedure TForm1.KATOLIK1Click(Sender: TObject);
begin
label11.Caption:='KATOLIK'
end;

procedure TForm1.KELUAR1Click(Sender: TObject);
begin
form1.Close;
form2.Close;
form4.close;
form3.show;
end;

procedure TForm1.KELUAR2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.KONGHUCU1Click(Sender: TObject);
begin
label11.Caption:='KONGHUCU'
end;

procedure TForm1.LAINNYA1Click(Sender: TObject);
begin
label11.Caption:='LAINNYA'
end;

procedure TForm1.PENCARIANBIODATA1Click(Sender: TObject);
begin
form2.Show;
form1.Hide;
end;

procedure TForm1.PENGISIANBIODATA1Click(Sender: TObject);
begin
form1.show
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
label6.Caption:='LAKI-LAKI';
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
label6.Caption:='PEREMPUAN';
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
label12.Caption:='(SISTEM KOMPUTER)';
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
label12.Caption:='(SISTEM INFORMASI)';
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:=adoquery1.FieldByName('NPM').AsString;
edit2.Text:=adoquery1.FieldByName('NAMA').AsString;
edit3.Text:=adoquery1.FieldByName('NOMOR').AsString;
label6.Caption:=adoquery1.FieldByName('JENIS KELAMIN').AsString;
edit4.Text:=adoquery1.FieldByName('EMAIL').AsString;
label11.Caption:=adoquery1.FieldByName('AGAMA').AsString;
edit8.Text:=adoquery1.FieldByName('ANAK KE').AsString;
edit9.Text:=adoquery1.FieldByName('ALAMAT').AsString;
edit10.Text:=adoquery1.FieldByName('NOMOR ORANG TUA').AsString;
label12.Caption:=adoquery1.FieldByName('JURUSAN').AsString;
adoquery1.Refresh;

if label6.Caption='(laki-laki)'
then
begin
  radiobutton1.Checked:=true;
  radiobutton2.Checked:=false;
end

else
if label6.Caption='(perempuan)'
then
begin
  radiobutton1.Checked:=false;
  radiobutton2.Checked:=true;
  end;
  button1.enabled:=true;
  button2.Enabled:=false;
  button3.Enabled:=true;
  button4.Enabled:=true;


end;



procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key In['0'..'9',char(VK_back),char(VK_delete)]) then
begin
showmessage('You can only Type Number here ! ');
//discard the key
key := #0
end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['0'..'9']) then
 begin
  ShowMessage('You can only Type alphabet here ! ');
  //Discard the key
  key := #0 ;
 end;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (key In['0'..'9',char(VK_back),char(VK_delete)]) then
begin
showmessage('You can only Type Number here ! ');
//discard the key
key := #0
end;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if not (key In['0'..'9',char(VK_back),char(VK_delete)]) then
begin
showmessage('You can only Type Number here ! ');
//discard the key
key := #0
end;
end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['0'..'9']) then
 begin
  ShowMessage('You can only Type alphabet here. ');
  //Discard the key
  key := #0 ;
 end;
end;

procedure TForm1.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if not (key In['0'..'9',char(VK_back),char(VK_delete)]) then
begin
showmessage('You can only Type Number here ! ');
//discard the key
key := #0
end;
end;

end.
