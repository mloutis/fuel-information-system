unit UnitProductionSupplyReportMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls,
  QRCtrls, QuickRpt, pngimage;

type
  Tproduction_supply_report_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1product_code: TWideStringField;
    ADOTable1refinery_code: TWideStringField;
    ADOTable1depot_code: TWideStringField;
    ADOTable1transfer_code: TWideStringField;
    ADOTable1production_record_code: TStringField;
    ADOTable1supplied_quantity: TIntegerField;
    DBGrid1: TDBGrid;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    DetailBand1: TQRBand;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    Shape1: TShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    Button1: TButton;
    QRImage1: TQRImage;
    procedure Button1Click(Sender: TObject);
  private
  public
  end;

var
  production_supply_report_form: Tproduction_supply_report_form;

implementation

{$R *.dfm}

procedure Tproduction_supply_report_form.Button1Click(Sender: TObject);
begin
  QuickRep1.Preview;
end;

end.
