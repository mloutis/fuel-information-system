unit UnitProductionRecordQueryMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  Tproduction_record_query_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    EditRecordNumber: TEdit;
    ButtonSearch: TButton;
    procedure ButtonSearchClick(Sender: TObject);
  private
  public
  end;

var
  production_record_query_form: Tproduction_record_query_form;

implementation

{$R *.dfm}

procedure Tproduction_record_query_form.ButtonSearchClick(Sender: TObject);
begin
  ADOTable1.Locate('production_record_code', EditRecordNumber.Text, []);
end;

end.
