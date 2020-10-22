unit form2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.XPMan,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    XPManifest1: TXPManifest;
    Button5: TButton;
    Edit5: TEdit;
    Button6: TButton;
    Edit6: TEdit;
    MainMenu1: TMainMenu;
    LAPORAN1: TMenuItem;
    KELUAR1: TMenuItem;
    PENGISIANBIODATA1: TMenuItem;
    PENCARIANBIODATA1: TMenuItem;
    KELUARDARIPENCARIANDATA1: TMenuItem;
    KELUARDARIFIKTIXIX1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure PENGISIANBIODATA1Click(Sender: TObject);
    procedure PENCARIANBIODATA1Click(Sender: TObject);
    procedure KELUARDARIPENCARIANDATA1Click(Sender: TObject);
    procedure KELUARDARIFIKTIXIX1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses DTBS;

procedure TForm2.Button1Click(Sender: TObject);
begin
  adoquery1.SQL.Text:='select * from table1';
  adoquery1.Active:=True;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
with adoquery1 do
  begin
    active:=False;
    SQL.Text:='select * from table1 where NPM ='+quotedStr(edit5.Text);
    active:=True;
  end;
  if adoquery1.RecordCount=0
  then
  begin
    messagedlg('data tidak ditemukan.',mtinformation,[mbok],0);
    adoquery1.Active:=False;
    adoquery1.SQL.Clear;
    adoquery1.SQL.Text:='select * from table1';
    adoquery1.Active:=True;
  end
  else
  begin
   dbgrid1.setfocus;
  end;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
with adoquery1 do
  begin
    active:=False;
    SQL.Text:='select * from table1 where NAMA ='+quotedStr(edit6.Text);
    active:=True;
  end;
  if adoquery1.RecordCount=0
  then
  begin
    messagedlg('data tidak ditemukan.',mtinformation,[mbok],0);
    adoquery1.Active:=False;
    adoquery1.SQL.Clear;
    adoquery1.SQL.Text:='select * from table1';
    adoquery1.Active:=True;
  end
  else
  begin
   dbgrid1.setfocus;
  end;
end;

procedure TForm2.KELUARDARIFIKTIXIX1Click(Sender: TObject);
begin
form1.close;
form2.Close;
end;

procedure TForm2.KELUARDARIPENCARIANDATA1Click(Sender: TObject);
begin
form2.Close;
end;

procedure TForm2.PENCARIANBIODATA1Click(Sender: TObject);
begin
form2.Visible:=true
end;

procedure TForm2.PENGISIANBIODATA1Click(Sender: TObject);
begin
form2.Close;
end;

end.
