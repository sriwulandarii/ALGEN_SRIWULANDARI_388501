unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    SG: TStringGrid;
    Label1: TLabel;
    SG1: TStringGrid;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Label12: TLabel;
    SG2: TStringGrid;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Edit5: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    GroupBox3: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Edit6: TEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure randomdata;
    procedure Edit3Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm3.Button2Click(Sender: TObject);
Var i,j,x1,x2,k,l,hh : Integer;
temp,temp1: real;
begin
with SG1 do
begin
 for l := 1 to StrToInt(Label10.Caption) do
          begin
          SG1.Cells[4,l+0]:= (FloatToStr((StrToFloat(SG1.Cells[1,l+0]))/((StrToFloat(Edit2.Text)))));
          SG1.Cells[5,l+0]:= Cells[1,l+0];
          end;
end;

with SG1 do
begin
//for hh := 1 to 50 do

     for I := 1 to StrToInt(Label10.Caption) do
       begin
         temp := StrToFloat(Cells[4,i]);
         if i = StrToInt(Edit1.Text) then break else
         for j := i+1 to StrToInt(Label10.Caption) do
           begin
             if temp > StrToFloat(Cells[4,j]) then
               begin
                 temp1 := temp;
                 temp := StrToFloat(Cells[4,j]);
                 Cells[4,j] := FloatToStr(temp1);
               end;
           end;
         Cells[4,i] := FloatToStr(temp);
       end;

for I := 1 to StrToInt(Label10.Caption) do
       begin
         temp := StrToFloat(Cells[5,i]);
         if i = StrToInt(Label10.Caption) then break else
         for j := i+1 to StrToInt(Label10.Caption) do
           begin
             if temp > StrToFloat(Cells[5,j]) then
               begin
                 temp1 := temp;
                 temp := StrToFloat(Cells[5,j]);
                 Cells[5,j] := FloatToStr(temp1);
               end;
           end;
         Cells[5,i] := FloatToStr(temp);
       end;
end;

end;



procedure TForm3.Button3Click(Sender: TObject);
Var i,j,x1,x2,k,l,hh,s,p : Integer;
begin
with SG2 do
  begin
      ColCount:=6;
      RowCount:=StrToInt(Label18.Caption)+1;
      FixedCols:=0;
      DefaultROwHeight:=18;
      DefaultColWidth:=100;
      Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];
      Cells[0,0]:='Populasi';
      Cells[1,0]:='X1';
      Cells[2,0]:='X2';
      Cells[3,0]:='FP';
  end;
  p:=StrToInt(Edit1.Text)+1;
      for k := 1 to StrToInt(Edit1.Text) do
          begin
          SG2.Cells[0,k+0]:='P'+IntToStr(k+0)+'.';
          SG2.Cells[1,k+0]:=SG.Cells[1,k+0];
          SG2.Cells[2,k+0]:=SG.Cells[2,k+0];
          SG2.Cells[3,k+0]:=SG.Cells[5,k+0];
          end;
          l:=1;
      for k := StrToInt(Edit1.Text)+1 to StrToInt(Edit1.Text)+ StrToInt(Label10.Caption) do
          begin
          SG2.Cells[0,k+0]:='P'+IntToStr(k+0)+'.';
          SG2.Cells[3,k+0]:=SG1.Cells[5,l+0];
          l:=l+1;
      for p := StrToInt(Edit1.Text)+1 to StrToInt(Edit1.Text)+ StrToInt(Label10.Caption) do
       begin
          for s := 1 to StrToInt(Edit1.Text) do
            if SG2.Cells[3,s+0] = SG2.Cells[3,p+0] then
              begin
                SG2.Cells[1,p+0]:= SG2.Cells[1,s+0] ;
              end
              else
                begin

                end;

       end;
      for p := StrToInt(Edit1.Text)+1 to StrToInt(Edit1.Text)+ StrToInt(Label10.Caption) do
       begin
          for s := 1 to StrToInt(Edit1.Text) do
            if SG2.Cells[3,s+0] = SG2.Cells[3,p+0] then
              begin
                SG2.Cells[2,p+0]:= SG2.Cells[2,s+0] ;
              end
              else
                begin

                end;

       end;
end;
Label24.Caption:=SG1.Cells[4,1];
Label25.Caption:=SG1.Cells[5,1];

end;

procedure TForm3.Button4Click(Sender: TObject);
 Var i,j,x1,x2,k,l,hh,ss,p,a,b,c,s,int: Integer;


temp,temp1: real;
begin
  with SG2 do
    begin
      for hh := 1 to StrToInt(Edit6.Text) do
      Edit2.Text:='0';
        begin
          //Mutasi Data
          begin
            l := 1 + Random(StrToInt(Edit1.Text)+ StrToInt(Label10.Caption));
            SG2.Cells[1,l+0]:=(IntToStr(l));
              //Hitung fitnes yang dimutasi
              a:= (StrToInt(Form1.Label12.Caption)*StrToInt(SG2.Cells[1,l+0]))+ (StrToInt(Form1.Label14.Caption)*StrToInt(SG2.Cells[2,l+0])) ;
              b:=((2* (((StrToInt(Form1.Label18.Caption)* StrToInt(SG2.Cells[1,l+0]))+ (StrToInt(Form1.Label20.Caption)* StrToInt(SG2.Cells[2,l+0])) )+((StrToInt(Form1.Label24.Caption)* StrToInt (SG2.Cells[1,l+0]))+ (StrToInt(Form1.Label26.Caption)*StrToInt( SG2.Cells[2,l+0]) ))+((StrToInt(Form1.Label30.Caption)*StrToInt( SG2.Cells[2,l+0]))+ (StrToInt(Form1.Label32.Caption)*StrToInt( SG2.Cells[2,l+0]) )))) );
              SG2.Cells[3,l+0]:=IntToStr(a-b);
          end;
        // Duplikat data
            with SG2 do
              begin
                for l := 1 to StrToInt(Edit1.Text)+ StrToInt(Label10.Caption) do
                  begin
                    SG2.Cells[4,l+0]:=  SG2.Cells[3,l+0]
                  end;
              end;

          //Sorting Data
          for I := 1 to StrToInt(Edit1.Text)+ StrToInt(Label10.Caption) do
            begin
              temp := StrToFloat(Cells[4,i]);
                if i = 18 then break else
                  for j := i+1 to StrToInt(Edit1.Text)+ StrToInt(Label10.Caption) do
                    begin
                      if temp > StrToFloat(Cells[4,j]) then
                        begin
                          temp1 := temp;
                          temp := StrToFloat(Cells[4,j]);
                          Cells[4,j] := FloatToStr(temp1);
                        end;
                    end;
              Cells[4,i] := FloatToStr(temp);
            end;
            // sorting 10 terbaik
          with SG2 do
            begin
              for l := 1 to StrToInt(Edit1.Text)+1 do
                begin
                  SG.Cells[5,l+0]:=  SG2.Cells[4,l+0];
                    for s := 1 to StrToInt(Edit1.Text)+ StrToInt(Label10.Caption) do
                      if SG2.Cells[3,s+0] = SG2.Cells[4,l+0] then
                        begin
                          SG.Cells[1,l+0]:= SG2.Cells[1,s+0] ;
                          SG.Cells[2,l+0]:= SG2.Cells[2,s+0] ;
                        end;
                end;
           //hitung fitnes
            for k := 1 to StrToInt(Edit1.Text) do
              begin
                SG.Cells[3,k+0]:=(IntToStr((StrToInt(Form1.Label12.Caption)* StrToInt(SG.Cells[1,k+0]))+ (StrToInt(Form1.Label14.Caption)*StrToInt(SG.Cells[2,k+0])) ));
                SG.Cells[4,k+0]:=(IntToStr((2* ( ((StrToInt(Form1.Label18.Caption)*StrToInt(SG.Cells[1,k+0]))+ (StrToInt(Form1.Label20.Caption)*StrToInt(SG.Cells[2,k+0])) )+((StrToInt(Form1.Label24.Caption)*StrToInt(SG.Cells[1,k+0]))+ (StrToInt(Form1.Label26.Caption)*StrToInt(SG.Cells[2,k+0])) )+((StrToInt(Form1.Label30.Caption)*StrToInt(SG.Cells[1,k+0]))+ (StrToInt(Form1.Label32.Caption)*StrToInt(SG.Cells[2,k+0])) )))    )  );
                SG.Cells[5,k+0]:=(IntToStr(StrToInt(SG.Cells[3,k+0])-(StrToInt(SG.Cells[4,k+0]))));
                Edit2.Text:= (IntToStr((StrToInt(SG.Cells[5,k+0]))+(StrToInt(Edit2.Text))));
               // PROSES CEK HASIL
                for l := 1 to StrToInt(Edit1.Text) do
                  begin
                    SG1.Cells[0,l+0]:='P'+IntToStr(l+0)+'.';
                    SG1.Cells[1,l+0]:=SG.Cells[5,l+0];
                    SG1.Cells[2,l+0]:= (SG1.Cells[1,l+0] +'/'+ Edit2.Text);
                    SG1.Cells[3,l+0]:= (FloatToStr((StrToFloat(SG1.Cells[1,l+0]))/((StrToFloat(Edit2.Text)))));
                  end;
            end ;
        end;
        Button2Click(ActiveControl);
        Label24.Caption:=SG1.Cells[4,1];
        Label25.Caption:=SG2.Cells[4,StrToInt(Edit1.Text)+ StrToInt(Label10.Caption)];
      end;
    end;
end;



procedure TForm3.Edit3Exit(Sender: TObject);
begin
Label4.Caption:= Edit3.Text;
Label8.Caption:= Edit1.Text;
Label10.Caption:= (FloatToStr(StrToFloat(Label4.Caption)*(StrToFloat(Label8.Caption))/100)) ;
end;

procedure TForm3.Edit5Exit(Sender: TObject);
begin
Label21.Caption:= Edit5.Text;
Label18.Caption:= IntToStr(((StrToInt(Edit1.Text)+ StrToInt(Label10.Caption)))*2  );
Label20.Caption:= (FloatToStr(StrToFloat(Label21.Caption)*(StrToFloat(Label18.Caption))/100)) ;

end;

procedure TForm3.randomdata;
var
  int   : Integer;
  i     : Integer;

begin
  // Jika run 2 x, hanya yang pertama 5 nilai
  // mereposisi menjadi bagian yang berbeda dari pseudo sequence

  // dapatkan integer random number dari rentang 1..100
  ShowMessage('Fixed first 5 random numbers');
  for i := 1 to 10 do
  begin
    int := 1 + Random(89);    // Nilai 100 memberikan kisaran 0..99
    ShowMessage('int = '+IntToStr(int));
  end;
end;


procedure TForm3.Button1Click(Sender: TObject);
Var i,j,x1,x2,k,l : Integer;

begin
Edit2.Text:='0';
    with SG do
  begin
      ColCount:=6;
      RowCount:=StrToInt(Edit1.Text)+1;
      FixedCols:=0;
      DefaultROwHeight:=18;
      DefaultColWidth:=100;
      Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];
      Cells[0,0]:='Populasi';
      Cells[1,0]:='X1';
      Cells[2,0]:='X2';
      Cells[3,0]:= Form1.Label12.Caption+' X1 + '+Form1.Label14.Caption+' X2';
      Cells[4,0]:='K.(C1+C2+C3)';
      Cells[5,0]:='FP';
  end;
      for k := 1 to StrToInt(Edit1.Text) do
          begin
          x1 := 1 + Random(10);    // Nilai 100 memberikan kisaran 0..99
          x2 := 1 + Random(11);    // Nilai 100 memberikan kisaran 0..99
          SG.Cells[0,k+0]:='P'+IntToStr(k+0)+'.';
          SG.Cells[1,k+0]:=(IntToStr(x1));
          SG.Cells[2,k+0]:=(IntToStr(x2));
          SG.Cells[3,k+0]:=(IntToStr((StrToInt(Form1.Label12.Caption)*x1)+ (StrToInt(Form1.Label14.Caption)*x2) ));
          SG.Cells[4,k+0]:=(IntToStr((2* ( ((StrToInt(Form1.Label18.Caption)*x1)+ (StrToInt(Form1.Label20.Caption)*x2) )+((StrToInt(Form1.Label24.Caption)*x1)+ (StrToInt(Form1.Label26.Caption)*x2) )+((StrToInt(Form1.Label30.Caption)*x1)+ (StrToInt(Form1.Label32.Caption)*x2) )))    )  );
          SG.Cells[5,k+0]:=(IntToStr(StrToInt(SG.Cells[3,k+0])-(StrToInt(SG.Cells[4,k+0]))));
          Edit2.Text:= (IntToStr((StrToInt(SG.Cells[5,k+0]))+(StrToInt(Edit2.Text))));
 //SG.Cells[0,1+k]:=IntToStr(k+1)+'.';
          end;

    with SG1 do
  begin
      ColCount:=6;
      RowCount:=StrToInt(Edit1.Text)+1;
      FixedCols:=0;
      DefaultROwHeight:=18;
      DefaultColWidth:=100;
      Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];
      Cells[0,0]:='Populasi';
      Cells[1,0]:='Fitnes';
      Cells[2,0]:='Nilai Random';
      Cells[3,0]:='Hasil';
      Cells[4,0]:='Hasil Sortir nilai Random';
      Cells[5,0]:='Hasil Sortir Fitnes'
     // Cells[3,0]:= Form1.Label12.Caption+' X1 + '+Form1.Label14.Caption+' X2';
     // Cells[4,0]:='K.(C1+C2+C3)';
     // Cells[5,0]:='FP';
  end;
      for l := 1 to StrToInt(Edit1.Text) do
          begin
          SG1.Cells[0,l+0]:='P'+IntToStr(l+0)+'.';
          SG1.Cells[1,l+0]:=SG.Cells[5,l+0];
          SG1.Cells[2,l+0]:= (SG1.Cells[1,l+0] +'/'+ Edit2.Text);
          SG1.Cells[3,l+0]:= (FloatToStr((StrToFloat(SG1.Cells[1,l+0]))/((StrToFloat(Edit2.Text)))));
          end;

 end;

end.
