unit UnitRegionMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, ADODB;

type
  Tregion_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1region_code: TWideStringField;
    ADOTable1region_name: TStringField;
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
  region_form: Tregion_form;

implementation

{$R *.dfm}

end.
