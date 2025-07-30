unit UnitPlanningMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, Buttons, StdCtrls;

type
  Tplanning_form = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    BitBtn1: TBitBtn;
    Image1: TImage;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
  public
  end;

var
  planning_form: Tplanning_form;

implementation

uses Unit31, Unit29, Unit30, Unit3;

{$R *.dfm}

procedure Tplanning_form.BitBtn1Click(Sender: TObject);
begin
  prevgen.Close;
  prevrav.Close;
  prevapp.Close;
  planning_form.Close;
  authen.Show;
end;

procedure Tplanning_form.BitBtn2Click(Sender: TObject);
begin
  planning_form.Close;
end;

procedure Tplanning_form.BitBtn3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tplanning_form.Button1Click(Sender: TObject);
begin
  prevgen.Show;
end;

procedure Tplanning_form.Button2Click(Sender: TObject);
begin
  prevapp.Show;
end;

procedure Tplanning_form.Button4Click(Sender: TObject);
begin
  prevrav.Show;
end;

procedure Tplanning_form.Timer1Timer(Sender: TObject);
begin
  Label1.Caption := DateToStr(Date);
  Label2.Caption := TimeToStr(Time);
end;

end.
