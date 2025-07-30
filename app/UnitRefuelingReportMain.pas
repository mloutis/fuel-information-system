unit UnitRefuelingReportMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls,
  QRCtrls, QuickRpt, pngimage;

type
  Trefueling_report_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1depot_code_emitter: TWideStringField;
    ADOTable1depot_code_receiver: TWideStringField;
    ADOTable1product_code: TWideStringField;
    ADOTable1transporter_code: TWideStringField;
    ADOTable1quantity_delivered: TIntegerField;
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
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    Shape1: TShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    PrintButton: TButton;
    QRImage1: TQRImage;
    procedure PrintButtonClick(Sender: TObject);
  private
  public
  end;

var
  refueling_report_form: Trefueling_report_form;

implementation

{$R *.dfm}

procedure Trefueling_report_form.PrintButtonClick(Sender: TObject);
begin
  QuickRep1.Preview;
end;

end.
