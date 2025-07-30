unit UnitProductionRecordMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DBCtrls, DB, StdCtrls, Mask, ComCtrls, Buttons;

type
  Tproduction_record_form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1production_record_code: TStringField;
    ADOTable1product_code: TWideStringField;
    ADOTable1refinery_code: TWideStringField;
    ADOTable1production_date: TWideStringField;
    ADOTable1quantity_produced: TIntegerField;
    ADOTable1remaining_quantity: TIntegerField;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    p: TADOStoredProc;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
  public
  end;

var
  production_record_form: Tproduction_record_form;

implementation

{$R *.dfm}

procedure Tproduction_record_form.BitBtn1Click(Sender: TObject);
begin
  p.Parameters[1].Value := ADOTable2.Fields[0].AsString; // product_code
  p.Parameters[2].Value := ADOTable3.Fields[0].AsString; // refinery_code
  p.Parameters[3].Value := DateTimePicker1.Date;         // production_date
  p.Parameters[4].Value := StrToInt(Edit2.Text);         // quantity_produced
  P.ExecProc;
  ADOTable1.Active := True;
  ADOTable1.Active := False;
  Edit2.Clear;
  Edit3.Clear;
  ADOTable2.Active := False;
  ADOTable2.Active := True;
  ADOTable3.Active := False;
  ADOTable3.Active := True;
end;

procedure Tproduction_record_form.FormCreate(Sender: TObject);
begin
  DateTimePicker1.MinDate := Date;
end;

end.
