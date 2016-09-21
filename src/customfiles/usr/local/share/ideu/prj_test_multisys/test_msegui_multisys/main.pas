unit main;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface

uses
 msetypes,mseglob,mseguiglob,mseguiintf,mseapplication,msestat,msemenus,msegui,
 msegraphics,msegraphutils,mseevent,mseclasses,msewidgets,mseforms,
 msesimplewidgets,msegrids,msestrings,msepolygon;

type
 tmainfo = class(tmainform)
   label1: tlabel;
   tpolygon1: tpolygon;
  end;
 
procedure systemtext; 
 
var
 mainfo: tmainfo;
implementation
uses
 main_mfm;
 
procedure systemtext; 
 begin
 mainfo.label1.caption := 'Hello, I am a ' +platformtext+' application.';
 end;
 
end.
