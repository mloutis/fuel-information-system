unit UnitRefineryMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, ADODB;

type
  Trefinery_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1refinery_code: TWideStringField;
    ADOTable1refinery_name: TStringField;
    ADOTable1refinery_address: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  refinery_form: Trefinery_form;

implementation

{$R *.dfm}

end.
