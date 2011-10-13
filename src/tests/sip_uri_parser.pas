{
  The following program is the actual code that is created for making the

   The contents of this file are subject to the Mozilla Public License
   Version 1.1 (the "MPL"); you may not use this file except in
   compliance with the MPL.  You may obtain a copy of the MPL at
   http://www.mozilla.org/MPL/

   Software distributed under the MPL is distributed on an "AS IS" basis,
   WITHOUT WARRANTY OF ANY KIND, either express or implied. See the MPL
   for the specific language governing rights and limitations under the
   MPL.

   Alternatively, the contents of this file may be used under the
   terms of the GNU General Public License (the "GPL"), in which case
   the provisions of the GPL are applicable instead of those above.
   If you wish to allow use of your version of this file only under the
   terms of the GPL and not to allow others to use your version of this
   file under the MPL, indicate your decision by deleting the provisions
   above and replace them with the notice and other provisions required by
   the GPL.  If you do not delete the provisions above, a recipient may use
   your version of this file under either the MPL or the LGPL.

   The Initial Developer of the Original Code is Ido Kanner
   <idok at@at linesip dot.dot com>

   Copyright (C) 2011 by LINESIP, All rights reserved

 }
{$mode objfpc}{$H+} {$IFDEF WINDOWS} {$APPTYPE CONSOLE} {$ENDIF}
program sip_uri_parser;
uses SysUtils,fpSIPTypes, fpGeneralConsts, fpSIPURI;

type

  { TSIPURIParser }

  TSIPURIParser = class
  private
    FURI         : String;
    FHasHeader   : Boolean;
    FSIPURI      : TSIPURI;
    FProtocol    : String;
    FSIPProtocol : TSIPType;
  protected

  public
    constructor Create(aURI : String); virtual;
  published
    property HasProtocol : Boolean read FHasHeader write FHasHeader;
  end;

var
  SIPURIParser : TSIPURIParser;

constructor TSIPURIParser.Create(aURI : String);
begin
  FillChar(FSIPURI, SizeOf(TSIPURI), 0);
  writeln('Given URI : ', aURI);
  if Trim(aURI) = '' then
    raise ESIPURIParserError.Create(errEmptyURI);

  FURI         := aURI;
  FProtocol    := '';
  FSIPProtocol := spSIP;
  FHasHeader   := False;
end;

begin
  SIPURIParser := TSIPURIParser.Create('');

  FreeAndNil(SIPURIParser);
end.

