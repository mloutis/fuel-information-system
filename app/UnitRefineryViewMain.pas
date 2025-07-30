unit UnitRefineryViewMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, ADODB;

type
  Trefinery_view_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
  private
  public
  end;

var
  refinery_view_form: Trefinery_view_form;

implementation

{$R *.dfm}

end.
