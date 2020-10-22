unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm4 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    LOGIN1: TMenuItem;
    KELUAR1: TMenuItem;
    DBGrid1: TDBGrid;
    Shape1: TShape;
    Button5: TButton;
    Edit5: TEdit;
    Button6: TButton;
    Edit6: TEdit;
    Button1: TButton;
    StaticText1: TStaticText;
    Image2: TImage;
    Image3: TImage;
    procedure LOGIN1Click(Sender: TObject);
    procedure KELUAR1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm4.Button5Click(Sender: TObject);
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

procedure TForm4.Button6Click(Sender: TObject);
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

procedure TForm4.KELUAR1Click(Sender: TObject);
begin
form4.Close;
end;

procedure TForm4.LOGIN1Click(Sender: TObject);
begin
form4.Close;
form3.show;
end;

end.
