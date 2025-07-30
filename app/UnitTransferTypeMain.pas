unit UnitTransferTypeMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ADODB, ExtCtrls;

type
  Ttransfer_type_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1transfer_code: TWideStringField;
    ADOTable1transfer_description: TStringField;
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
  transfer_type_form: Ttransfer_type_form;

implementation

{$R *.dfm}

end.
