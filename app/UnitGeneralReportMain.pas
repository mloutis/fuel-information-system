unit UnitGeneralReportMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls,
  QRCtrls, QuickRpt, pngimage;

type
  Tgeneral_report_form = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1products_supplied_count: TIntegerField;
    ADOTable1refineries_supplied_count: TIntegerField;
    ADOTable1beneficiary_depots_count: TIntegerField;
    ADOTable1transfer_code: TWideStringField;
    ADOTable1total_supplied_quantity: TIntegerField;
    ADOTable1products_replenished_count: TIntegerField;
    ADOTable1emitting_depots_count: TIntegerField;
    ADOTable1receiving_depots_count: TIntegerField;
    ADOTable1transporter_code: TWideStringField;
    ADOTable1total_quantity_delivered: TIntegerField;
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
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    DetailBand1: TQRBand;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
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
  general_report_form: Tgeneral_report_form;

implementation

{$R *.dfm}

procedure Tgeneral_report_form.Button1Click(Sender: TObject);
begin
  QuickRep1.Preview;
end;

end.
