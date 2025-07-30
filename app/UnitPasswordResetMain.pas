unit UnitPasswordResetMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, ADODB, ExtCtrls;

type
  Tpassword_reset_form = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
  public
  end;

var
  password_reset_form: Tpassword_reset_form;

implementation

{$R *.dfm}

procedure Tpassword_reset_form.BitBtn1Click(Sender: TObject);
begin
  ADOQuery1.Active := False;
  ADOQuery1.Parameters.ParamByName('X').Value := Edit1.Text;
  ADOQuery1.Parameters.ParamByName('Y').Value := Edit2.Text;
  ADOQuery1.Active := True;

  if (Edit1.Text = DBEdit1.Text) and (Edit2.Text = DBEdit2.Text) and
     (Edit1.Text <> '') and (Edit3.Text <> '') and (Edit3.Text = Edit4.Text) then
  begin
    ADOQuery1.Edit;
    ADOQuery1.Fields[2].AsString := Edit3.Text;
    ADOQuery1.Post;
    ShowMessage('Password has been changed');
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
  end
  else
  begin
    ShowMessage('Invalid username or password');
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
  end;
end;

procedure Tpassword_reset_form.Button1Click(Sender: TObject);
begin
  password_reset_form.Close;
end;

end.
