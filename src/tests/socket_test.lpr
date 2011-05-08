program socket_test;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, fpvoip, lnetbase
  { you can add units after this }, fpsocket_api;

{$R *.res}

begin
end.

