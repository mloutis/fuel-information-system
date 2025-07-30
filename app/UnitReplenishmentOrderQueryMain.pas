unit UnitReplenishmentOrderQueryMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  Treplenishment_order_query_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    EditOrderNumber: TEdit;
    ButtonSearch: TButton;
    procedure ButtonSearchClick(Sender: TObject);
  private
  public
  end;

var
  replenishment_order_query_form: Treplenishment_order_query_form;

implementation

{$R *.dfm}

procedure Treplenishment_order_query_form.ButtonSearchClick(Sender: TObject);
begin
  ADOTable1.Locate('replenishment_order_code', EditOrderNumber.Text, []);
end;

end.
