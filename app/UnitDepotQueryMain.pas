unit UnitDepotQueryMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  Tdepot_query_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
  public
  end;

var
  depot_query_form: Tdepot_query_form;

implementation

{$R *.dfm}

procedure Tdepot_query_form.Button1Click(Sender: TObject);
begin
  ADOTable1.Locate('depot_code', Edit1.Text, []);
end;

end.
