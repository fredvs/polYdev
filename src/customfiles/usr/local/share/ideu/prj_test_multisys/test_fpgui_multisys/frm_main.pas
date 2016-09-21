unit frm_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, fpg_base, fpg_main, fpg_form,
  {%units 'Auto-generated GUI code'}
  fpg_label, fpg_colorwheel
  {%endunits}
  ;

type

  TMainForm = class(TfpgForm)
  private
    {@VFD_HEAD_BEGIN: MainForm}
    Label1: TfpgLabel;
    ColorWheel1: TfpgColorWheel;
    {@VFD_HEAD_END: MainForm}
  public
    procedure AfterCreate; override;
  end;

{@VFD_NEWFORM_DECL}

const
{$ifdef linux}
 {$ifdef CPU64}
  platformtext = 'x86_64-linux';
 {$else}
  {$ifdef CPUARM}
   platformtext = 'arm-linux';
  {$else}
   platformtext = 'i386-linux';
  {$endif}
 {$endif}
{$else}
 {$ifdef openbsd}
  {$ifdef CPU64}
  platformtext = 'x86_64-openbsd';
  {$else}
  platformtext = 'i386-openbsd';
  {$endif}
 {$else}
  {$ifdef bsd}
   {$ifdef CPU64}
  platformtext = 'x86_64-bsd';
   {$else}
  platformtext = 'i386-bsd';
   {$endif}
  {$else}
   {$ifdef cpu64}
   platformtext = 'x86_64-win64';
   {$else}
   platformtext = 'i386-win32';
   {$endif}
  {$endif}
 {$endif}
{$endif}


implementation

{@VFD_NEWFORM_IMPL}

procedure TMainForm.AfterCreate;
begin
  {%region 'Auto-generated GUI code' -fold}
  {@VFD_BODY_BEGIN: MainForm}
  Name := 'MainForm';
  SetPosition(374, 228, 356, 265);
  WindowTitle := 'Form1';
  IconName := '';
  BackGroundColor := $80000001;
  WindowPosition := wpOneThirdDown;
  WindowTitle := 'I am a fpGUI ' +platformtext+' application.';
  // if fpGUI-develop
  //windowopacity := 0.5;

  Label1 := TfpgLabel.Create(self);
  with Label1 do
  begin
    Name := 'Label1';
    SetPosition(12, 4, 330, 39);
    Alignment := taCenter;
    FontDesc := '#Label2';
    Layout := tlCenter;
    ParentShowHint := False;
    Text := 'Label';
    Text := 'Hello world, I am a ' +platformtext+' application.';
  end;

  ColorWheel1 := TfpgColorWheel.Create(self);
  with ColorWheel1 do
  begin
    Name := 'ColorWheel1';
    SetPosition(4, 42, 348, 218);
    CursorSize := 0;
  end;

  {@VFD_BODY_END: MainForm}
  {%endregion}
  
end;


end.
