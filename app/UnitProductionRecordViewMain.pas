unit UnitProductionRecordViewMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, ADODB;

type
  Tproduction_record_view_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
  private
  public
  end;

var
  production_record_view_form: Tproduction_record_view_form;

implementation

{$R *.dfm}

end.
