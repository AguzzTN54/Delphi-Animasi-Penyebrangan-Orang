unit PenyebranganOrang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Label2: TLabel;
    Label1: TLabel;
    Shape2: TShape;
    Label4: TLabel;
    Image13: TImage;
    Shape3: TShape;
    Shape4: TShape;
    Image14: TImage;
    Shape5: TShape;
    Shape8: TShape;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Label5: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Shape1: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Memo1: TMemo;
    Label3: TLabel;
    Timer3: TTimer;
    Label6: TLabel;
    Timer4: TTimer;
    Label7: TLabel;
    Timer5: TTimer;
    Label8: TLabel;
    procedure Label5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Label5Click(Sender: TObject);
begin
if Shape6.Visible = True then
  begin
    Label5.Enabled := False;
    Label5.Color := clBlack;
    Shape2.Brush.Color := clRed;
    Shape6.Visible := True;
    Label6.Caption := '4';
    Label3.Visible := true;
    Label7.Caption := 'kuning';
  end
else
  begin
    Shape6.Visible := False;
  end
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

  if Shape5.Visible = true then

  //Awal Mobil
    begin
    If Image5.Top = 392 then
      begin
        If Image2.Top = 500 then
         begin
           Image2.Top := 500;
         end
      else
         begin
           Image2.Top := Image2.Top - 1;
         end
      end
    else
      begin
       If Image2.Top = 392 then
         begin
           Image2.Top := 392;
         end
      else
         begin
           Image2.Top := Image2.Top - 1;
         end
      end;

    //MOBIL 5
    If Image2.Top = 392 then
      begin
        If Image5.Top = 500 then
         begin
           Image5.Top := 500;
         end
        else
         begin
           Image5.Top := Image5.Top - 1;
         end
      end
    else
      begin
       If Image5.Top = 392 then
         begin
           Image5.Top := 392;
         end
      else
         begin
           Image5.Top := Image5.Top - 1;
         end
      end;

      //MOBIL 3 Turun
    If Image3.Top = 145 then
      begin
        If Image8.Top = 25 then
         begin
           Image8.Top := 25;
         end
        else
         begin
           Image8.Top := Image8.Top + 1;
         end
      end
    else
      begin
       If Image8.Top = 145 then
         begin
           Image8.Top := 145;
         end
      else
         begin
           Image8.Top := Image8.Top + 1;
         end
      end;

        //MOBIL 8 Turun
    If Image8.Top = 145 then
      begin
        If Image3.Top = 25 then
         begin
           Image3.Top := 25;
         end
        else
         begin
           Image3.Top := Image3.Top + 1;
         end
      end
    else
      begin
       If Image3.Top = 145 then
         begin
           Image3.Top := 145;
         end
      else
         begin
           Image3.Top := Image3.Top + 1;
         end
      end;

    //Akhir Mobil
    end
  else
    begin
      Image2.Top := Image2.Top - 1;
      Image5.Top := Image5.Top - 1;
      Image3.Top := Image3.Top + 1;
      Image8.Top := Image8.Top + 1;
    end;


  if Image2.Top <-80 then Image2.Top := 650;
  if Image3.Top >650 then Image3.Top := -80;
  if Image5.Top <-80 then Image5.Top := 650;
  if Image8.Top >650 then Image8.Top := -80;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
    if Shape5.Visible = true then
  //Awal Mobil 4
    begin
    If Image4.Top = 392 then
      begin
        Image4.Top := 392;
        if Image7.Top = 500 then
          begin
            Image7.Top := 500;
            If Image6.Top = 608 then
              begin
                Image6.Top := 608;
              end
            else
              begin
                Image6.Top := Image6.Top -1;
              end;
          end
        else
          begin
            Image6.Top := Image6.Top -1;
            Image7.Top := Image7.Top -1;
          end;
      end
    //Mobil 7
    else If Image7.Top = 392 then
      begin
        Image7.Top := 392;
        if Image6.Top = 500 then
          begin
            Image6.Top := 500;
            If Image4.Top = 608 then
              begin
                Image4.Top := 608;
              end
            else
              begin
                Image4.Top := Image4.Top -1;
              end;
          end
        else
          begin
            Image4.Top := Image4.Top -1;
            Image6.Top := Image6.Top -1;
          end;
      end
    //Mobil 6
    else If Image6.Top = 392 then
      begin
        Image6.Top := 392;
        if Image4.Top = 500 then
          begin
            Image4.Top := 500;
            If Image7.Top = 608 then
              begin
                Image7.Top := 608;
              end
            else
              begin
                Image7.Top := Image7.Top -1;
              end;
          end
        else
          begin
            Image4.Top := Image4.Top -1;
            Image7.Top := Image7.Top -1;
          end;
      end
    else
      begin
        Image4.Top := Image4.Top -1;
        Image6.Top := Image6.Top -1;
        Image7.Top := Image7.Top -1;
      end;

      //MOBIL 3 Turun
    If Image3.Top = 145 then
      begin
        If Image8.Top = 25 then
         begin
           Image8.Top := 25;
         end
        else
         begin
           Image8.Top := Image8.Top + 1;
         end
      end
    else
      begin
       If Image8.Top = 145 then
         begin
           Image8.Top := 145;
         end
      else
         begin
           Image8.Top := Image8.Top + 1;
         end
      end;

        //MOBIL 8 Turun
    If Image8.Top = 145 then
      begin
        If Image3.Top = 25 then
         begin
           Image3.Top := 25;
         end
        else
         begin
           Image3.Top := Image3.Top + 1;
         end
      end
    else
      begin
       If Image3.Top = 145 then
         begin
           Image3.Top := 145;
         end
      else
         begin
           Image3.Top := Image3.Top + 1;
         end
      end;

        //MOBIL 9 Turun
    If Image9.Top = 145 then
      begin
        If Image10.Top = 25 then
         begin
           Image10.Top := 25;
         end
        else
         begin
           Image10.Top := Image10.Top + 1;
         end
      end
    else
      begin
       If Image10.Top = 145 then
         begin
           Image10.Top := 145;
         end
      else
         begin
           Image10.Top := Image10.Top + 1;
         end
      end;

        //MOBIL 8 Turun
    If Image10.Top = 145 then
      begin
        If Image9.Top = 25 then
         begin
           Image9.Top := 25;
         end
        else
         begin
           Image9.Top := Image9.Top + 1;
         end
      end
    else
      begin
       If Image9.Top = 145 then
         begin
           Image9.Top := 145;
         end
      else
         begin
           Image9.Top := Image9.Top + 1;
         end
      end;

    //Akhir Mobil
    end
  else
    begin
      Image4.Top := Image4.Top - 1;
      Image6.Top := Image6.Top - 1;
      Image7.Top := Image7.Top - 1;
      Image9.Top := Image9.Top + 1;
      Image10.Top := Image10.Top + 1;

    end;

  if Image4.Top <-80 then Image4.Top := 650;
  if Image6.Top <-80 then Image6.Top := 650;
  if Image7.Top <-80 then Image7.Top := 650;
  if Image9.Top >650 then Image9.Top := -80;
  if Image10.Top >650 then Image10.Top := -80;

end;

procedure TForm1.Timer3Timer(Sender: TObject);
  var waktu1, waktu2, waktu3, waktu4: integer;
  begin
    waktu1 := StrToInt(Label3.Caption);
    waktu1 := waktu1-1;
    waktu2 := StrToInt(Label6.Caption);
    waktu2 := waktu2-1;
    waktu3 := strtoint(Label6.Caption);
    waktu4 := StrToInt(Label8.Caption);
    waktu4 := waktu4-1;

    if Image13.Visible = true then
      begin
      if label8.Caption = '0' then
        begin
          label8.Caption := '0';
        end
      else
        begin
          Label8.Caption := IntToStr(waktu4);
        end;
      end;

    //Durasi Penyebrangan
    if waktu1 <1 then
      begin
        Label3.Caption := '0';
        Label3.Visible := False;
        Shape2.Brush.Color := clred;
        Label5.Color := clGrayText;
        Image13.Visible := False;
        Image14.Visible := True;
        Shape5.Visible := False;
        Shape6.Visible := True;
        Label5.Enabled := True;
        Label8.Caption := '-1';

        Image15.Visible := true;
        Image15.Left := 80;
        Image16.Visible := true;
        Image16.Left := 80;
        Image17.Visible := true;
        Image17.Left := 48;
        Image18.Visible := true;
        Image18.Left := 416;
        Image19.Visible := true;
        Image19.Left := 435;

        Memo1.Text := 'Pengendara Berjalan, Pejalan Kaki Mohon tidak menyebrang';
      end
    else
      begin
        Label3.Caption := IntToStr(waktu1);
      end;

    //Jeda Mobil jalan
    if waktu2 <1 then
      begin
        Label6.Caption := '0';
      end
    else
      begin
        Label6.Caption := IntToStr(waktu2);
      end;

     //Lampu Kuning
     If Label7.Caption = 'kuning' then
      Label3.Visible := true;
    begin
      if waktu3 = 1 then
        begin
          Shape6.Visible := True;
          Image13.Visible := True;
          Image14.Visible := false;
          Shape1.Visible := False;
          Shape5.Visible := True;
          Shape6.Visible := False;
          Shape2.Brush.Color := clGreen;
          Label3.Caption := '27';
          Label3.Font.Color := clWhite;
          Label7.Caption := 'merah';
          Label8.Caption := '3';
          Memo1.Text := 'Pengendara Berhenti, Silahkan Menyebrang jalan';
        end
      else if waktu3 = 2 then
        begin
          Shape1.Visible := True;
          Shape2.Brush.Color := clYellow;
          Label3.Caption := '1';
          Label3.Font.Color := clBlack;
        end
      else if waktu3 = 3 then
        begin
          Shape1.Visible := False;
          Shape2.Brush.Color := clRed;
          Label3.Caption := '2';
          Label3.Font.Color := clWhite;
        end
      else if waktu3 = 4 then
      begin
          Shape1.Visible := True;
          Shape2.Brush.Color := clYellow;
          Label3.Caption := '3';
          Label3.Font.Color := clBlack;
        end
      else
        begin
          Shape1.Visible := False;
        end
    end
  end;

procedure TForm1.Timer4Timer(Sender: TObject);
  begin
    if label8.Caption = '0' then
      begin
        if Image15.Left > 430 then
          begin
            Image15.Visible := False;
          end;
         if Image19.Left < 50 then
          begin
            Image19.Visible := False;
          end;

        Image15.Left := Image15.Left + 1;
        Image19.Left := Image19.Left - 1;
      end;

  end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
  if label8.Caption = '0' then
      begin
        if Image16.Left > 450 then
          begin
            Image16.Visible := False;
          end;
         if Image17.Left > 420 then
         begin
            Image17.Visible := False;
         end;
         if Image18.Left < 8 then
          begin
            Image18.Visible := False;
          end;

        Image16.Left := Image16.Left + 1;
        Image17.Left := Image17.Left + 1;
        Image18.Left := Image18.Left - 1;
      end;
end;

end.
