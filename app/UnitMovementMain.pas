unit UnitMovementMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  Tmovement_form = class(TForm)
    MainMenu1: TMainMenu;
    MenuInsert: TMenuItem;
    MenuReplenishmentOrder: TMenuItem;
    MenuCreate: TMenuItem;
    MenuReplenishmentOrderShortcut: TMenuItem;
    MenuProductionRecord: TMenuItem;
    MenuSeparator: TMenuItem;
    MenuRefinery: TMenuItem;
    MenuProduct: TMenuItem;
    MenuNewDepot: TMenuItem;
    MenuDepotType: TMenuItem;
    MenuDistrict: TMenuItem;
    MenuCity: TMenuItem;
    MenuRegion: TMenuItem;
    MenuProductShortcut: TMenuItem;
    MenuStatus: TMenuItem;
    MenuStores: TMenuItem;
    MenuDepotStatus: TMenuItem;
    MenuSituation: TMenuItem;
    MenuProductionRecordShortcut: TMenuItem;
    MenuReplenishmentOrderAlt: TMenuItem;
    MenuNewTransporter: TMenuItem;
    MenuSeparator2: TMenuItem;
    MenuNewTransporterShortcut: TMenuItem;
    MenuNewMovementType: TMenuItem;
    BtnDisconnect: TBitBtn;
    BtnClose: TBitBtn;
    BtnExit: TBitBtn;
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MenuStockEntry: TMenuItem;

    procedure MenuReplenishmentOrderShortcutClick(Sender: TObject);
    procedure MenuProductionRecordClick(Sender: TObject);
    procedure MenuNewDepotClick(Sender: TObject);
    procedure MenuDepotTypeClick(Sender: TObject);
    procedure MenuDistrictClick(Sender: TObject);
    procedure MenuRegionClick(Sender: TObject);
    procedure MenuCityClick(Sender: TObject);
    procedure MenuNewTransporterShortcutClick(Sender: TObject);
    procedure MenuNewMovementTypeClick(Sender: TObject);
    procedure MenuProductShortcutClick(Sender: TObject);
    procedure MenuRefineryClick(Sender: TObject);
    procedure MenuStoresClick(Sender: TObject);
    procedure MenuDepotStatusClick(Sender: TObject);
    procedure MenuProductionRecordShortcutClick(Sender: TObject);
    procedure MenuReplenishmentOrderAltClick(Sender: TObject);
    procedure BtnDisconnectClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MenuStockEntryClick(Sender: TObject);
  private
  public
  end;

var
  movement_form: Tmovement_form;

implementation

uses Unit6, Unit8, Unit12, Unit10, Unit16, Unit15, Unit17, Unit18, Unit13,
  Unit14, Unit11, Unit20, Unit19, Unit22, Unit21, Unit3, Unit43;

{$R *.dfm}

procedure Tmovement_form.BtnDisconnectClick(Sender: TObject);
begin
  Replenishment_Order.close;
  Production_Record.close;
  Supply_Order.close;
  District.close;
  Depot_Type.close;
  Depot.close;
  Movement_Type.close;
  Transporter.close;
  Production_Record.close;
  Product.close;
  Refinery.close;
  Region.close;
  City.close;
  Stores.close;
  Depot_Type.close;
  movement_form.close;
  authen.show;
end;

procedure Tmovement_form.BtnCloseClick(Sender: TObject);
begin
  movement_form.Close;
end;

procedure Tmovement_form.BtnExitClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure Tmovement_form.MenuReplenishmentOrderShortcutClick(Sender: TObject);
begin
  Replenishment_Order.show;
end;

procedure Tmovement_form.MenuProductionRecordShortcutClick(Sender: TObject);
begin
  Production_Record.show;
end;

procedure Tmovement_form.MenuReplenishmentOrderAltClick(Sender: TObject);
begin
  Supply_Order.show;
end;

procedure Tmovement_form.MenuDistrictClick(Sender: TObject);
begin
  District.show;
end;

procedure Tmovement_form.MenuDepotStatusClick(Sender: TObject);
begin
  Depot_Type.Show;
end;

procedure Tmovement_form.MenuStockEntryClick(Sender: TObject);
begin
  Stores.show;
end;

procedure Tmovement_form.MenuNewDepotClick(Sender: TObject);
begin
  Depot.show;
end;

procedure Tmovement_form.MenuNewMovementTypeClick(Sender: TObject);
begin
  Movement_Type.show;
end;

procedure Tmovement_form.MenuNewTransporterShortcutClick(Sender: TObject);
begin
  Transporter.show;
end;

procedure Tmovement_form.MenuProductionRecordClick(Sender: TObject);
begin
  Production_Record.show;
end;

procedure Tmovement_form.MenuProductShortcutClick(Sender: TObject);
begin
  Product.show;
end;

procedure Tmovement_form.MenuRefineryClick(Sender: TObject);
begin
  Refinery.show;
end;

procedure Tmovement_form.MenuRegionClick(Sender: TObject);
begin
  Region.show;
end;

procedure Tmovement_form.MenuStoresClick(Sender: TObject);
begin
  Stores.show;
end;

procedure Tmovement_form.Timer1Timer(Sender: TObject);
begin
  label1.Caption := datetostr(date);
  label2.Caption := timetostr(time);
end;

procedure Tmovement_form.MenuCityClick(Sender: TObject);
begin
  City.show;
end;

procedure Tmovement_form.MenuDepotTypeClick(Sender: TObject);
begin
  Depot_Type.show;
end;

end.
