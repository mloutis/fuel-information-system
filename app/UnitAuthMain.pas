unit UnitAuthMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Mask, DBCtrls, pngimage, ExtCtrls;

type
  Tauth_form = class(TForm)
    Conn: TADOConnection;
    LabelUsername: TLabel;
    LabelPassword: TLabel;
    InputUsername: TEdit;
    InputPassword: TEdit;
    DBUsername: TDBEdit;
    DBPassword: TDBEdit;
    LoginQuery: TADOQuery;
    LoginSource: TDataSource;
    BtnLogin: TButton;
    LabelError: TLabel;
    BtnChangePassword: TButton;
    BtnExit: TButton;
    Logo: TImage;
    procedure BtnExitClick(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
    procedure BtnChangePasswordClick(Sender: TObject);
    procedure ShowMovementModule(Sender: TObject);
    procedure ShowSupplyModule(Sender: TObject);
    procedure ShowPlanningModule(Sender: TObject);
    procedure ShowProductionModule(Sender: TObject);
  private
  public
  end;

var
  auth_form: Tauth_form;

implementation

uses Unit7, Unit8, Unit6, Unit4, Unit5, Unit2, Unit1, Unit9, Unit11, Unit46;

{$R *.dfm}

procedure Tauth_form.BtnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tauth_form.ShowProductionModule(Sender: TObject);
begin
  Production_Record.Show;
end;

procedure Tauth_form.BtnLoginClick(Sender: TObject);
var
  userRole: string;
begin
  LoginQuery.Active := false;
  LoginQuery.Parameters.ParamByName('X').Value := InputUsername.Text;
  LoginQuery.Parameters.ParamByName('Y').Value := InputPassword.Text;
  LoginQuery.Active := true;

  if (InputUsername.Text = DBUsername.Text) and
     (InputPassword.Text = DBPassword.Text) and
     (InputUsername.Text <> '') then
  begin
    userRole := InputUsername.Text;

    if userRole = 'direct_exp' then direct.Show
    else if userRole = 'serv_plan' then plan.Show
    else if userRole = 'serv_appro' then supply_form.Show
    else if userRole = 'serv_mvtreg' then movement_form.Show
    else LabelError.Visible := true;
  end
  else
    LabelError.Visible := true;
end;

procedure Tauth_form.BtnChangePasswordClick(Sender: TObject);
begin
  password.Show;
end;

procedure Tauth_form.ShowMovementModule(Sender: TObject);
begin
  movement_form.Show;
end;

procedure Tauth_form.ShowPlanningModule(Sender: TObject);
begin
  plan.Show;
end;

procedure Tauth_form.ShowSupplyModule(Sender: TObject);
begin
  supply_form.Show;
end;

end.
