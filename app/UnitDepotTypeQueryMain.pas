unit UnitDepotTypeQueryMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  Tdepot_type_query_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
  private
  public
  end;

var
  depot_type_query_form: Tdepot_type_query_form;

implementation

{$R *.dfm}

end.
