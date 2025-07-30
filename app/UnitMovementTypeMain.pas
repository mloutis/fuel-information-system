unit UnitMovementTypeMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, ADODB;

type
  Tmovement_type_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1movement_code: TWideStringField;
    ADOTable1movement_description: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  movement_type_form: Tmovement_type_form;

implementation

{$R *.dfm}

end.
