unit UnitDistrictMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, ADODB;

type
  Tdistrict_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1district_code: TWideStringField;
    ADOTable1district_name: TStringField;
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
  district_form: Tdistrict_form;

implementation

{$R *.dfm}

end.
