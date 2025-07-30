unit UnitMovementTypeQueryMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  Tmovement_type_query_form = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ADOTable1: TADOTable;
  private
  public
  end;

var
  movement_type_query_form: Tmovement_type_query_form;

implementation

{$R *.dfm}

end.
