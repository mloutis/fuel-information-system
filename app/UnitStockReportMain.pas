unit UnitStockReportMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ExtCtrls, QuickRpt, StdCtrls, QRCtrls,
  qrpctrls, qrpBaseCtrls, pngimage;

type
  Tstock_report_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1depot_code: TWideStringField;
    ADOTable1product_code: TWideStringField;
    ADOTable1stock_quantity: TIntegerField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    Shape1: TShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRImage1: TQRImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stock_report_form: Tstock_report_form;

implementation

{$R *.dfm}

procedure Tstock_report_form.Button1Click(Sender: TObject);
begin
  QuickRep1.Preview;
end;

end.
