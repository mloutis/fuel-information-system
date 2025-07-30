unit UnitSupplyOrderQueryMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  Tsupply_order_query_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    EditSupplyOrder: TEdit;
    ButtonSearch: TButton;
    procedure ButtonSearchClick(Sender: TObject);
  private
  public
  end;

var
  supply_order_query_form: Tsupply_order_query_form;

implementation

{$R *.dfm}

procedure Tsupply_order_query_form.ButtonSearchClick(Sender: TObject);
begin
  ADOTable1.Locate('supply_order_number', EditSupplyOrder.Text, []);
end;

end.
