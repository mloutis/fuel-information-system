unit UnitProductMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, ADODB;

type
  Tproduct_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1product_code: TWideStringField;
    ADOTable1product_name: TStringField;
    ADOTable1product_abbreviation: TStringField;
    ADOTable1unit_volume: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  product_form: Tproduct_form;

implementation

{$R *.dfm}

end.
