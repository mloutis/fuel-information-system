unit UnitReplenishmentOrderMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ComCtrls,
  Grids, DBGrids;

type
  TReplenishment_Order_Form = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1replenishment_order_code: TStringField;
    ADOTable1depot_code_emitter: TWideStringField;
    ADOTable1depot_code_receiver: TWideStringField;
    ADOTable1product_code: TWideStringField;
    ADOTable1transporter_code: TWideStringField;
    ADOTable1quantity_delivered: TIntegerField;
    ADOTable1delivered_elements_count: TIntegerField;
    ADOTable1cost_per_element: TIntegerField;
    ADOTable1total_cost: TIntegerField;
    ADOTable1loading_date: TWideStringField;
    ADOTable1unloading_date: TWideStringField;
    ADOTable1notes_replenishment_order: TStringField;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    p: TADOStoredProc;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  Replenishment_Order_Form: TReplenishment_Order_Form;

implementation

uses Unit7, Unit8;

{$R *.dfm}

procedure TReplenishment_Order_Form.BitBtn1Click(Sender: TObject);
begin
  p.Parameters[1].Value := ADOQuery1.Fields[0].AsString; // depot_code_emitter
  p.Parameters[2].Value := ADOQuery2.Fields[0].AsString; // depot_code_receiver
  p.Parameters[3].Value := ADOTable2.Fields[0].AsString; // product_code
  p.Parameters[4].Value := ADOTable3.Fields[0].AsString; // transporter_code
  p.Parameters[5].Value := StrToInt(Edit2.Text);         // quantity_delivered
  p.Parameters[6].Value := StrToInt(Edit3.Text);         // delivered_elements_count
  p.Parameters[7].Value := StrToInt(Edit4.Text);         // cost_per_element
  p.Parameters[8].Value := DateTimePicker1.Date;         // loading_date
  p.Parameters[9].Value := DateTimePicker2.Date;         // unloading_date
  p.Parameters[10].Value := Memo1.Text;                  // notes_replenishment_order
  p.ExecProc;
  ADOTable1.Active := True;
  ADOTable1.Active := False;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Memo1.Clear;
  ADOQuery1.Active := False;
  ADOQuery1.Active := True;
  ADOQuery2.Active := False;
  ADOQuery2.Active := True;
  ADOTable2.Active := False;
  ADOTable2.Active := True;
  ADOTable3.Active := False;
  ADOTable3.Active := True;
  ShowMessage('Replenishment Order inserted');
end;

procedure TReplenishment_Order_Form.Button1Click(Sender: TObject);
begin
  ba.Show;
end;

procedure TReplenishment_Order_Form.Button2Click(Sender: TObject);
begin
  production_record.Show;
end;

procedure TReplenishment_Order_Form.FormCreate(Sender: TObject);
begin
  DateTimePicker1.MinDate := Date;
  DateTimePicker2.MinDate := Date;
end;

end.
