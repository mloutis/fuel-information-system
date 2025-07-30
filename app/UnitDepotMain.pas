unit UnitDepotMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, DB, Mask, ADODB;

type
  Tdepot_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1depot_code: TWideStringField;
    ADOTable1depot_name: TStringField;
    ADOTable1depot_address: TStringField;
    ADOTable1storage_capacity: TIntegerField;
    ADOTable1occupied_volume: TIntegerField;
    ADOTable1depot_type_code: TWideStringField;
    ADOTable1city_code: TIntegerField;
    ADOTable1district_code: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
  private
  public
  end;

var
  depot_form: Tdepot_form;

implementation

{$R *.dfm}

end.
