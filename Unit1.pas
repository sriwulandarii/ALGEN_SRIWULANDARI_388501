unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Button1: TButton;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
form3.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
try
  with DataModule2.ADOConnection1 do
    begin
      LoginPrompt:=False;
      ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=algen;Data Source=USER-PC';
      Connected:=True;
    end;
    ShowMessage('Koneksi Sukses');
    DataModule2.ADOQuery1.Connection:=DataModule2.ADOConnection1;
    DataModule2.ADOQuery2.Connection:=DataModule2.ADOConnection1;
    DataModule2.DataSource1.DataSet:=DataModule2.ADOQuery1;
    DataModule2.DataSource2.DataSet:=DataModule2.ADOQuery2;
    except
    ShowMessage('Koneksi Gagal');
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
try
DataModule2.ADOConnection1.BeginTrans;
with DataModule2.ADOQuery1 do
begin
  Active:=False;
  close;
  sql.Clear;
  SQL.Add('insert into permasalahan values ('+QuotedStr(Edit1.Text)+','+QuotedStr(Edit2.Text)+','+QuotedStr(Edit3.Text)+','+QuotedStr(Edit4.Text)+','+QuotedStr(Edit5.Text)+','+QuotedStr(Edit6.Text)+','+QuotedStr(Edit7.Text)+','+QuotedStr(Edit8.Text)+','+QuotedStr(Edit9.Text)+','+QuotedStr(Edit10.Text)+','+QuotedStr(Edit11.Text)+')');
  ExecSQL;
end;
DataModule2.ADOConnection1.CommitTrans;
ShowMessage('Data Berhasil Disimpan');
except
DataModule2.ADOConnection1.RollbackTrans;
ShowMessage('Data Gagal Disimpan');
end;
Label12.Caption:=Edit1.Text;
Label14.Caption:=Edit2.Text;
Label22.Caption:=Edit3.Text;
Label28.Caption:=Edit4.Text;
Label34.Caption:=Edit5.Text;
Label18.Caption:=Edit6.Text;
Label20.Caption:=Edit7.Text;
Label24.Caption:=Edit8.Text;
Label26.Caption:=Edit9.Text;
Label30.Caption:=Edit10.Text;
Label32.Caption:=Edit11.Text;
end;

end.
