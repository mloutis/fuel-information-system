unit UnitAnnualSummaryMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ADODB, ExtCtrls, QRCtrls, QuickRpt,
  Grids, DBGrids, pngimage;

type
  Tannual_summary_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1annual_production_quantity: TIntegerField;
    ADOTable1annual_sent_quantity: TIntegerField;
    ADOTable1product_code: TWideStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
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
  annual_summary_form: Tannual_summary_form;

implementation

{$R *.dfm}

procedure Tannual_summary_form.Button1Click(Sender: TObject);
begin
  QuickRep1.Preview;
end;

end.
