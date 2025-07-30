unit UnitDepotViewMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, ADODB;

type
  Tdepot_view_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
  private
  public
  end;

var
  depot_view_form: Tdepot_view_form;

implementation

{$R *.dfm}

end.
