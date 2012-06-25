unit Unit2; 

{$mode objfpc}{$H+}

interface

uses
  windows, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, ExtDlgs, UTF8Process, SynEdit, SynMacroRecorder,
  SynCompletion, SynExportHTML, SynHighlighterPas, SynHighlighterCpp,
  SynHighlighterJava, SynHighlighterPerl, SynHighlighterHTML, SynHighlighterXML,
  SynHighlighterLFM, SynHighlighterDiff, synhighlighterunixshellscript,
  SynHighlighterCss, SynHighlighterPHP, SynHighlighterTeX, SynHighlighterSQL,
  SynHighlighterPython, SynHighlighterVB, SynHighlighterAny,
  SynHighlighterMulti, SynHighlighterBat, SynHighlighterIni, SynMemo,
  PrintersDlgs;

type

  { TForm2 }

  TForm2 = class(TForm)
    CalculatorDialog1: TCalculatorDialog;
    CalendarDialog1: TCalendarDialog;
    ColorDialog1: TColorDialog;
    FindDialog1: TFindDialog;
    FontDialog1: TFontDialog;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    PageSetupDialog1: TPageSetupDialog;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    ReplaceDialog1: TReplaceDialog;
    SaveDialog1: TSaveDialog;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    StatusBar1: TStatusBar;
    SynAnySyn1: TSynAnySyn;
    SynAutoComplete1: TSynAutoComplete;
    SynBatSyn1: TSynBatSyn;
    SynCppSyn1: TSynCppSyn;
    SynCssSyn1: TSynCssSyn;
    SynDiffSyn1: TSynDiffSyn;
    SynExporterHTML1: TSynExporterHTML;
    SynFreePascalSyn1: TSynFreePascalSyn;
    SynHTMLSyn1: TSynHTMLSyn;
    SynIniSyn1: TSynIniSyn;
    SynJavaSyn1: TSynJavaSyn;
    SynLFMSyn1: TSynLFMSyn;
    SynMacroRecorder1: TSynMacroRecorder;
    SynEdit1: TSynMemo;
    SynMultiSyn1: TSynMultiSyn;
    SynPasSyn1: TSynPasSyn;
    SynPerlSyn1: TSynPerlSyn;
    SynPHPSyn1: TSynPHPSyn;
    SynPythonSyn1: TSynPythonSyn;
    SynSQLSyn1: TSynSQLSyn;
    SynTeXSyn1: TSynTeXSyn;
    SynUNIXShellScriptSyn1: TSynUNIXShellScriptSyn;
    SynVBSyn1: TSynVBSyn;
    SynXMLSyn1: TSynXMLSyn;
    procedure FormActivate(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormWindowStateChange(Sender: TObject);
    procedure SynEdit1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form2: TForm2; 


implementation
uses
  unit1;
{$R *.lfm}

{ TForm2 }

procedure TForm2.FormClick(Sender: TObject);
begin

end;

procedure TForm2.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  form1.Timer2.Enabled := true;
  //form1.Caption := self.Name;
end;

procedure TForm2.FormResize(Sender: TObject);
begin

end;

procedure TForm2.FormWindowStateChange(Sender: TObject);
begin
  if self.WindowState = wsMaximized then begin
    self.Top:= form1.Top + form1.Height + 20;
    self.Left:= 0;
    self.Height:= self.Height - 120;
    self.SynEdit1.Align:= alTop;
    self.StatusBar1.Align:= alTop;
    self.SynEdit1.Height:= self.Height - self.StatusBar1.Height;
  end else begin
    self.SynEdit1.Align:= alClient;
    self.StatusBar1.Align:= albottom;
  end;
end;

procedure TForm2.SynEdit1Change(Sender: TObject);
begin

end;

procedure TForm2.Timer1Timer(Sender: TObject);
 begin

end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin

end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  form1.Tag:= tag;
  form1.Timer1.Enabled:= true;
end;

end.

