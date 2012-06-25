unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  windows, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ComCtrls, ExtCtrls, SynHighlighterIni;

type

  { TForm1 }

  TForm1 = class(TForm)
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabControl1: TTabControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Timer1: TTimer;
    Timer2: TTimer;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton2: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure TabControl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
  private
    { private declarations }

    function NextIndex: String;
  public
    FIndex: Integer;

    { public declarations }
  end; 

var
  Form1: TForm1;
implementation

uses  unit2;
var
  editfrm: array [0..255] of TForm2;
  editname: array [0..255] of string;
  editfulname: array [0..255] of string;
{$R *.lfm}

{ TForm1 }

procedure TForm1.FormResize(Sender: TObject);
begin
  form1.Height:= 80;
  form1.Top:= 0;
  form1.Left:=0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  form1.ToolButton26.Color := clblack;
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin
  setActiveWindow(editfrm[form1.TabControl1.TabIndex].Handle);
  //editfrm[0].SynEdit1.Lines.Add(editfrm[form1.TabControl1.TabIndex].Name + form1.TabControl1.Tabs[form1.TabControl1.TabIndex] + ' ' +inttostr(tag -1));

end;

procedure TForm1.TabControl1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

  TabControl1.TabIndex:= tag -1;
  timer1.Enabled:=true;
  //editfrm[0].SynEdit1.Lines.Add(editfrm[form1.TabControl1.TabIndex].Name + form1.TabControl1.Tabs[form1.TabControl1.TabIndex] + ' ' +inttostr(tag -1));
end;

procedure TForm1.Timer2Timer(Sender: TObject);
 var
  i:integer;
  backuptab:integer;
  delfrm: TComponent;
begin
  timer2.Enabled := false;
  i := form1.TabControl1.TabIndex;
  editfrm[form1.TabControl1.TabIndex].Release;
  backuptab := i;


  if form1.TabControl1.Tabs.Count -1 > 0 then begin
    while i < form1.TabControl1.Tabs.Count -1 do
    begin
      //editfrm[i + 1].Name := 'DockForm' + inttostr(i);
      editfrm[i + 1].tag := i +1;
      //editfrm[i] := editfrm[i+1];
      //editfrm[0].SynEdit1.Lines.Add(editfrm[i].Name + editfrm[i].Caption + form1.TabControl1.Tabs[i]);
      i := i +1;
      editfrm[i] := editfrm[i+1];

    end;
  end;
  form1.Tag:= form1.TabControl1.Tabs.Count -1;
  FIndex := form1.TabControl1.Tabs.Count -1;
  form1.TabControl1.Tabs.Delete(form1.TabControl1.TabIndex);
  i := backuptab;
  //form1.FIndex:= form1.FIndex -1;

  //form1.TabControl1.Tabs.Delete(i);


end;

procedure TForm1.ToolButton1Click(Sender: TObject);
var
  i:string;
  setmode:integer;
begin
  try

    //editfrm[FIndex].Release;
    editfrm[FIndex] := TForm2.Create(Application);
  except
    editfrm[FIndex].Free;
    editfrm[FIndex] := TForm2.Create(Application);
  end;
  with editfrm[FIndex] do
  begin
    DragKind := dkDock;
    DragMode := dmAutomatic;
    i := NextIndex;
    Caption := 'New Form ' + i;
    Name := 'DockForm' + i;
    form1.TabControl1.Tabs.Add('New Form ' + i);
    tag := FIndex;
    {with TPanel.Create(editfrm[FIndex]) do
    begin
      Parent := editfrm[FIndex];
      Align := alClient;
      Caption := editfrm[FIndex].Caption;
    end;}
    Show;
    setmode := ToolButton1.Tag;
    case setmode of
      0:;//editfrm[Findex -1].SynEdit1.Highlighter := SynMultiSyn1;
      1:editfrm[Findex -1].SynEdit1.Highlighter := SynUNIXShellScriptSyn1;
      2:editfrm[Findex -1].SynEdit1.Highlighter := SynAnySyn1;
      3:editfrm[Findex -1].SynEdit1.Highlighter := SynTeXSyn1;
      4:editfrm[Findex -1].SynEdit1.Highlighter := SynIniSyn1;
      5:editfrm[Findex -1].SynEdit1.Highlighter := SynBatSyn1;
      6:editfrm[Findex -1].SynEdit1.Highlighter := SynXMLSyn1;
      7:editfrm[Findex -1].SynEdit1.Highlighter := SynHTMLSyn1;
      8:editfrm[Findex -1].SynEdit1.Highlighter := SynCssSyn1;
      9:editfrm[Findex -1].SynEdit1.Highlighter := SynVBSyn1;
      10:editfrm[Findex -1].SynEdit1.Highlighter := SynSQLSyn1;
      11:editfrm[Findex -1].SynEdit1.Highlighter := SynPHPSyn1;
      12:editfrm[Findex -1].SynEdit1.Highlighter := SynPerlSyn1;
      13:editfrm[Findex -1].SynEdit1.Highlighter := SynPythonSyn1;
      14:editfrm[Findex -1].SynEdit1.Highlighter := SynCppSyn1;
      15:editfrm[Findex -1].SynEdit1.Highlighter := SynDiffSyn1;
      16:editfrm[Findex -1].SynEdit1.Highlighter := SynJavaSyn1;
      17:editfrm[Findex -1].SynEdit1.Highlighter := SynPasSyn1;
      18:editfrm[Findex -1].SynEdit1.Highlighter := SynFreePascalSyn1;
      19:editfrm[Findex -1].SynEdit1.Highlighter := SynLFMSyn1;
      20:begin
        //if editfrm[Findex -1].OpenDialog1.Filter = '' then
          setmode := 0;
        case setmode of
          0:;//editfrm[Findex -1].SynEdit1.Highlighter := SynMultiSyn1;
          1:editfrm[Findex -1].SynEdit1.Highlighter := SynUNIXShellScriptSyn1;
          2:editfrm[Findex -1].SynEdit1.Highlighter := SynAnySyn1;
          3:editfrm[Findex -1].SynEdit1.Highlighter := SynTeXSyn1;
          4:editfrm[Findex -1].SynEdit1.Highlighter := SynIniSyn1;
          5:editfrm[Findex -1].SynEdit1.Highlighter := SynBatSyn1;
          6:editfrm[Findex -1].SynEdit1.Highlighter := SynXMLSyn1;
          7:editfrm[Findex -1].SynEdit1.Highlighter := SynHTMLSyn1;
          8:editfrm[Findex -1].SynEdit1.Highlighter := SynCssSyn1;
          9:editfrm[Findex -1].SynEdit1.Highlighter := SynVBSyn1;
          10:editfrm[Findex -1].SynEdit1.Highlighter := SynSQLSyn1;
          11:editfrm[Findex -1].SynEdit1.Highlighter := SynPHPSyn1;
          12:editfrm[Findex -1].SynEdit1.Highlighter := SynPerlSyn1;
          13:editfrm[Findex -1].SynEdit1.Highlighter := SynPythonSyn1;
          14:editfrm[Findex -1].SynEdit1.Highlighter := SynCppSyn1;
          15:editfrm[Findex -1].SynEdit1.Highlighter := SynDiffSyn1;
          16:editfrm[Findex -1].SynEdit1.Highlighter := SynJavaSyn1;
          17:editfrm[Findex -1].SynEdit1.Highlighter := SynPasSyn1;
          18:editfrm[Findex -1].SynEdit1.Highlighter := SynFreePascalSyn1;
          19:editfrm[Findex -1].SynEdit1.Highlighter := SynLFMSyn1;
        end;
      end;
    end;
  end;
end;

procedure TForm1.ToolButton21Click(Sender: TObject);
var
  fs:TFilestream;
begin
  if Form1.TabControl1.TabIndex = -1 then
    exit;
  if not editfrm[form1.TabControl1.TabIndex].SaveDialog1.Execute then
    exit;
  begin
    editfrm[form1.TabControl1.TabIndex].SynEdit1.Lines.SaveToFile(editfrm[form1.TabControl1.TabIndex].SaveDialog1.FileName);
    editname[form1.TabControl1.TabIndex] := ExtractFileName( editfrm[form1.TabControl1.TabIndex].SaveDialog1.FileName );
    editfulname[form1.TabControl1.TabIndex] := editfrm[form1.TabControl1.TabIndex].SaveDialog1.FileName;
    form1.Caption:= 'ふつーのメモ帳 [' + editfulname[form1.TabControl1.TabIndex] + ']';
    form1.TabControl1.Tabs[form1.TabControl1.TabIndex] := editfulname[form1.TabControl1.TabIndex];
    editfrm[form1.TabControl1.TabIndex].Caption:= editname[form1.TabControl1.TabIndex];
  end;
end;

procedure TForm1.ToolButton22Click(Sender: TObject);
begin
  ToolButton1Click(Sender);
  if not editfrm[form1.TabControl1.TabIndex].OpenDialog1.Execute then
    exit;
  begin
    editfrm[form1.TabControl1.TabIndex].SynEdit1.Lines.LoadFromFile(editfrm[form1.TabControl1.TabIndex].OpenDialog1.FileName);
    editname[form1.TabControl1.TabIndex] := ExtractFileName( editfrm[form1.TabControl1.TabIndex].OpenDialog1.FileName );
    editfulname[form1.TabControl1.TabIndex] := editfrm[form1.TabControl1.TabIndex].OpenDialog1.FileName;
    form1.Caption:= 'ふつーのメモ帳 [' + editfulname[form1.TabControl1.TabIndex] + ']';
    form1.TabControl1.Tabs[form1.TabControl1.TabIndex] := editname[form1.TabControl1.TabIndex];
    editfrm[form1.TabControl1.TabIndex].Caption:= editname[form1.TabControl1.TabIndex];
  end;
end;

procedure TForm1.ToolButton23Click(Sender: TObject);
begin

end;

procedure TForm1.ToolButton24Click(Sender: TObject);
begin
  if Form1.TabControl1.TabIndex = -1 then
    exit;
  editfrm[form1.TabControl1.TabIndex].SynEdit1.CutToClipboard;
end;

procedure TForm1.ToolButton25Click(Sender: TObject);
begin
  if Form1.TabControl1.TabIndex = -1 then
    exit;
  editfrm[form1.TabControl1.TabIndex].SynEdit1.PasteFromClipboard;
end;

procedure TForm1.ToolButton26Click(Sender: TObject);
begin
  editfrm[form1.TabControl1.TabIndex].SynEdit1.Color:= form1.ToolButton26.Color;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin

end;

procedure TForm1.ToolButton9Click(Sender: TObject);
begin
  if Form1.TabControl1.TabIndex = -1 then
    exit;
  editfrm[form1.TabControl1.TabIndex].SynEdit1.CopyToClipboard;
end;

function TForm1.NextIndex: String;
begin
  Result := IntToStr(FIndex);
  inc(FIndex);
end;

end.

