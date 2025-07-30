unit UnitStockQueryMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  Tstock_query_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    EditDepot: TEdit;
    EditProduct: TEdit;
    LabelDepot: TLabel;
    LabelProduct: TLabel;
    ButtonSearch: TButton;
    procedure ButtonSearchClick(Sender: TObject);
  private
  public
  end;

var
  stock_query_form: Tstock_query_form;

implementation

{$R *.dfm}

procedure Tstock_query_form.ButtonSearchClick(Sender: TObject);
begin
  ADOTable1.Locate('depot_code;product_code', VarArrayOf([EditDepot.Text, EditProduct.Text]), []);
end;

end.
