unit UnitCityMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, DB, StdCtrls, Mask, ADODB;

type
  Tcity_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1city_code: TIntegerField;
    ADOTable1city_name: TStringField;
    ADOTable1region_code: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  city_form: Tcity_form;

implementation

{$R *.dfm}

end.
