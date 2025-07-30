unit UnitTransporterMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, DB, Mask, ADODB;

type
  Ttransporter_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1transporter_code: TWideStringField;
    ADOTable1transporter_name: TStringField;
    ADOTable1movement_code: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    DBRadioGroup1: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  transporter_form: Ttransporter_form;

implementation

{$R *.dfm}

end.
