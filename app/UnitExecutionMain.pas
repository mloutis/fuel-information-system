unit UnitExecutionMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Buttons, jpeg, ExtCtrls;

type
  Texecution_form = class(TForm)
    MainMenu1: TMainMenu;
    ables1: TMenuItem;
    Bons1: TMenuItem;
    Etat1: TMenuItem;
    Situation1: TMenuItem;
    Prvisions1: TMenuItem;
    Bilan1: TMenuItem;
    Production_Record1: TMenuItem;
    Supply_Order1: TMenuItem;
    Replenishment_Order1: TMenuItem;
    SituationJournaliredesFabrications1: TMenuItem;
    SituationJournaliredesApprovisionnements1: TMenuItem;
    SituationJournaliredesRavitatillements1: TMenuItem;
    PrvisionGnrale1: TMenuItem;
    PrvisionAnnuelledApprovisionnement1: TMenuItem;
    PrvisionAnnuelledeRavitaillement1: TMenuItem;
    EtatDesStocks1: TMenuItem;
    EtatDesDpots1: TMenuItem;
    Depot1: TMenuItem;
    District1: TMenuItem;
    Product1: TMenuItem;
    Refinery1: TMenuItem;
    Region1: TMenuItem;
    Stores1: TMenuItem;
    Transporter1: TMenuItem;
    Depot_Type1: TMenuItem;
    Movement_Type1: TMenuItem;
    Transfer_Type1: TMenuItem;
    City1: TMenuItem;
    BilanNationalCarburant1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EtatDesStocks1Click(Sender: TObject);
    procedure EtatDesDpots1Click(Sender: TObject);
    procedure SituationJournaliredesFabrications1Click(Sender: TObject);
    procedure SituationJournaliredesApprovisionnements1Click(Sender: TObject);
    procedure SituationJournaliredesRavitatillements1Click(Sender: TObject);
    procedure PrvisionGnrale1Click(Sender: TObject);
    procedure PrvisionAnnuelledApprovisionnement1Click(Sender: TObject);
    procedure PrvisionAnnuelledeRavitaillement1Click(Sender: TObject);
    procedure BilanNationalCarburant1Click(Sender: TObject);
    procedure Depot1Click(Sender: TObject);
    procedure Depot_Type1Click(Sender: TObject);
    procedure City1Click(Sender: TObject);
    procedure Region1Click(Sender: TObject);
    procedure District1Click(Sender: TObject);
    procedure Product1Click(Sender: TObject);
    procedure Refinery1Click(Sender: TObject);
    procedure Transfer_Type1Click(Sender: TObject);
    procedure Transporter1Click(Sender: TObject);
    procedure Movement_Type1Click(Sender: TObject);
    procedure Stores1Click(Sender: TObject);
    procedure Production_Record1Click(Sender: TObject);
    procedure Supply_Order1Click(Sender: TObject);
    procedure Replenishment_Order1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
  public
  end;

var
  execution_form: Texecution_form;

implementation

uses Unit7, Unit6, Unit20, Unit19, Unit31, Unit30, Unit28, Unit22, Unit21,
  Unit29, Unit32, Unit37, Unit33, Unit38, Unit39, Unit41, Unit36, Unit43,
  Unit34, Unit42, Unit40, Unit35, Unit44, Unit45, Unit46, Unit3;

{$R *.dfm}

procedure Texecution_form.BilanNationalCarburant1Click(Sender: TObject);
begin
  bilan.Show;
end;

procedure Texecution_form.BitBtn1Click(Sender: TObject);
begin
  bilan.Close;
  ba.Close;
  br.Close;
  bact.Close;
  districtct.Close;
  production_recordct.Close;
  depotct.Close;
  etat_depot.Close;
  etat_stock.Close;
  productct.Close;
  prevapp.Close;
  prevrav.Close;
  prevgen.Close;
  refineryct.Close;
  transporterct.Close;
  regionct.Close;
  sja.Close;
  sjf.Close;
  sjr.Close;
  storesct.Close;
  depot_typect.Close;
  movement_typect.Close;
  transfer_typect.Close;
  cityct.Close;
  execution_form.Close;
  authen.Show;
end;

procedure Texecution_form.BitBtn2Click(Sender: TObject);
begin
  execution_form.Close;
end;

procedure Texecution_form.BitBtn3Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure Texecution_form.Button1Click(Sender: TObject);
begin
  ba.Show;
end;

procedure Texecution_form.Button2Click(Sender: TObject);
begin
  br.Show;
end;

procedure Texecution_form.Supply_Order1Click(Sender: TObject);
begin
  bact.Show;
end;

procedure Texecution_form.Replenishment_Order1Click(Sender: TObject);
begin
  brct.Show;
end;

procedure Texecution_form.District1Click(Sender: TObject);
begin
  districtct.Show;
end;

procedure Texecution_form.Production_Record1Click(Sender: TObject);
begin
  production_recordct.Show;
end;

procedure Texecution_form.Depot1Click(Sender: TObject);
begin
  depotct.Show;
end;

procedure Texecution_form.EtatDesDpots1Click(Sender: TObject);
begin
  etat_depot.Show;
end;

procedure Texecution_form.EtatDesStocks1Click(Sender: TObject);
begin
  etat_stock.Show;
end;

procedure Texecution_form.Product1Click(Sender: TObject);
begin
  productct.Show;
end;

procedure Texecution_form.PrvisionAnnuelledApprovisionnement1Click(Sender: TObject);
begin
  prevapp.Show;
end;

procedure Texecution_form.PrvisionAnnuelledeRavitaillement1Click(Sender: TObject);
begin
  prevrav.Show;
end;

procedure Texecution_form.PrvisionGnrale1Click(Sender: TObject);
begin
  prevgen.Show;
end;

procedure Texecution_form.Refinery1Click(Sender: TObject);
begin
  refineryct.Show;
end;

procedure Texecution_form.Transporter1Click(Sender: TObject);
begin
  transporterct.Show;
end;

procedure Texecution_form.Region1Click(Sender: TObject);
begin
  regionct.Show;
end;

procedure Texecution_form.SituationJournaliredesApprovisionnements1Click(Sender: TObject);
begin
  sja.Show;
end;

procedure Texecution_form.SituationJournaliredesFabrications1Click(Sender: TObject);
begin
  sjf.Show;
end;

procedure Texecution_form.SituationJournaliredesRavitatillements1Click(Sender: TObject);
begin
  sjr.Show;
end;

procedure Texecution_form.Stores1Click(Sender: TObject);
begin
  storesct.Show;
end;

procedure Texecution_form.Timer1Timer(Sender: TObject);
begin
  label1.Caption := datetostr(Date);
  label2.Caption := timetostr(Time);
end;

procedure Texecution_form.Depot_Type1Click(Sender: TObject);
begin
  depot_typect.Show;
end;

procedure Texecution_form.Movement_Type1Click(Sender: TObject);
begin
  movement_typect.Show;
end;

procedure Texecution_form.Transfer_Type1Click(Sender: TObject);
begin
  transfer_typect.Show;
end;

procedure Texecution_form.City1Click(Sender: TObject);
begin
  cityct.Show;
end;

end.
