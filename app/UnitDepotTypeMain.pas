unit UnitDepotTypeMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, ADODB;

type
  Tdepot_type_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1depot_type_code: TWideStringField;
    ADOTable1depot_type_description: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
  private
  public
  end;

var
  depot_type_form: Tdepot_type_form;

implementation

{$R *.dfm}

end.
