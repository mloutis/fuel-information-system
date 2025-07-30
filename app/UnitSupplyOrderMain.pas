unit UnitSupplyOrderMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DBCtrls, StdCtrls, ExtCtrls, DB, Mask, ComCtrls, Buttons;

type
  Tsupply_order_form = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    ADOQuery1: TADOQuery;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    ADOQuery2: TADOQuery;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit1: TEdit;
    r: TRadioGroup;
    Memo1: TMemo;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    ADOTable1: TADOTable;
    ADOTable1supply_order_number: TStringField;
    ADOTable1product_code: TWideStringField;
    ADOTable1refinery_code: TWideStringField;
    ADOTable1depot_code: TWideStringField;
    ADOTable1transfer_code: TWideStringField;
    ADOTable1production_record_code: TStringField;
    ADOTable1supplied_quantity: TIntegerField;
    ADOTable1supplied_elements_count: TIntegerField;
    ADOTable1start_date: TWideStringField;
    ADOTable1end_date: TWideStringField;
    ADOTable1notes_supply_order: TStringField;
    p: TADOStoredProc;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ADOQuery3: TADOQuery;
    DBEdit1: TDBEdit;
    DataSource6: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
  private
  public
  end;

var
  supply_order_form: Tsupply_order_form;

implementation

{$R *.dfm}

procedure Tsupply_order_form.BitBtn1Click(Sender: TObject);
var
  a: string;
begin
  if (StrToInt(Edit2.Text) > StrToInt(DBEdit1.Text)) then
    ShowMessage('You must enter a quantity less than or equal to ' + IntToStr(StrToInt(DBEdit1.Text)))
  else
  begin
    p.Parameters[1].Value := ADOTable2.Fields[0].AsString;  // product_code
    p.Parameters[2].Value := ADOTable3.Fields[0].AsString;  // depot_code
    p.Parameters[3].Value := ADOQuery1.Fields[0].AsString;  // transfer_code
    if r.ItemIndex = 0 then a := 'cana' else a := 'cabo';
    p.Parameters[4].Value := a;
    p.Parameters[5].Value := ADOQuery2.Fields[0].AsString;  // refinery_code
    p.Parameters[6].Value := StrToInt(Edit2.Text);          // supplied_quantity
    p.Parameters[7].Value := StrToInt(Edit3.Text);          // supplied_elements_count
    p.Parameters[8].Value := DateTimePicker1.Date;          // start_date
    p.Parameters[9].Value := DateTimePicker2.Date;          // end_date
    p.Parameters[10].Value := Memo1.Text;                   // notes_supply_order
    ADOTable1.Active := True;
    ADOTable1.Active := False;
    p.ExecProc;
    ShowMessage('Supply Order inserted');
  end;
  Edit2.Clear;
  Edit3.Clear;
  Memo1.Clear;
  ADOQuery1.Active := False;
  ADOQuery1.Active := True;
  ADOQuery2.Active := False;
  ADOQuery2.Active := True;
  ADOTable2.Active := False;
  ADOTable2.Active := True;
  ADOTable3.Active := False;
  ADOTable3.Active := True;
end;

procedure Tsupply_order_form.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  Edit4.Text := ADOTable2.Fields[0].AsString;
end;

procedure Tsupply_order_form.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  Edit5.Text := ADOTable3.Fields[0].AsString;
end;

procedure Tsupply_order_form.DBLookupComboBox3CloseUp(Sender: TObject);
begin
  ADOQuery2.Active := False;
  ADOQuery2.Parameters.ParamByName('X').Value := Edit4.Text;
  ADOQuery2.Parameters.ParamByName('Y').Value := Edit5.Text;
  ADOQuery2.Active := True;
end;

procedure Tsupply_order_form.DBLookupComboBox4CloseUp(Sender: TObject);
begin
  Edit6.Text := ADOQuery2.Fields[0].AsString;
end;

procedure Tsupply_order_form.Edit2Click(Sender: TObject);
begin
  ADOQuery3.Active := False;
  ADOQuery3.Parameters.ParamByName('Z').Value := Edit6.Text;
  ADOQuery3.Active := True;
end;

procedure Tsupply_order_form.FormCreate(Sender: TObject);
begin
  DateTimePicker1.MinDate := Date;
  DateTimePicker2.MinDate := Date;
end;

end.
