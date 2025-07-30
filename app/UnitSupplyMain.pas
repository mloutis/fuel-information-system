unit UnitSupplyMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  Tsupply_form = class(TForm)
    MenuRead: TMenuItem;
    MenuCreate: TMenuItem;
    MenuSupplyOrder: TMenuItem;
    MenuInsert: TMenuItem;
    MenuProduct: TMenuItem;
    MenuProductionRecord: TMenuItem;
    MenuDepot: TMenuItem;
    MenuRefinery: TMenuItem;
    MenuTransferType: TMenuItem;
    MenuDailySituation: TMenuItem;
    MenuSupplyJournal: TMenuItem;
    MainMenu1: TMainMenu;
    BtnLogout: TBitBtn;
    BtnClose: TBitBtn;
    BtnExit: TBitBtn;
    Image1: TImage;
    Timer1: TTimer;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;

    procedure MenuSupplyOrderClick(Sender: TObject);
    procedure MenuTransferTypeClick(Sender: TObject);
    procedure MenuProductionRecordClick(Sender: TObject);
    procedure MenuProductClick(Sender: TObject);
    procedure MenuDepotClick(Sender: TObject);
    procedure MenuRefineryClick(Sender: TObject);
    procedure MenuSupplyJournalClick(Sender: TObject);
    procedure BtnLogoutClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
  public
  end;

var
  supply_form: Tsupply_form;

implementation

uses Unit7, Unit23, Unit25, Unit27, Unit24, Unit26, Unit28, Unit3;

{$R *.dfm}

procedure Tsupply_form.BtnLogoutClick(Sender: TObject);
begin
  Supply_Order.close;
  Supply_Order.close;
  Depot.close;
  Production_Record.close;
  Product.close;
  Refinery.close;
  Transfer_Type.close;
  supply_form.Close;
  authen.show;
end;

procedure Tsupply_form.BtnCloseClick(Sender: TObject);
begin
  supply_form.Close;
end;

procedure Tsupply_form.BtnExitClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure Tsupply_form.MenuSupplyOrderClick(Sender: TObject);
begin
  Supply_Order.show;
end;

procedure Tsupply_form.MenuSupplyJournalClick(Sender: TObject);
begin
  Supply_Order.show;
end;

procedure Tsupply_form.MenuDepotClick(Sender: TObject);
begin
  Depot.show;
end;

procedure Tsupply_form.MenuProductionRecordClick(Sender: TObject);
begin
  Production_Record.show;
end;

procedure Tsupply_form.MenuProductClick(Sender: TObject);
begin
  Product.Show;
end;

procedure Tsupply_form.MenuRefineryClick(Sender: TObject);
begin
  Refinery.show;
end;

procedure Tsupply_form.Timer1Timer(Sender: TObject);
begin
  Label1.Caption := DateToStr(Date);
  Label2.Caption := TimeToStr(Time);
end;

procedure Tsupply_form.MenuTransferTypeClick(Sender: TObject);
begin
  Transfer_Type.show;
end;

end.
