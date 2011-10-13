{
  SIP and SIPS URI Parser

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
  your version of this file under either the MPL or the GPL.

  The Initial Developer of the Original Code is Ido Kanner
  <idok at@at linesip dot.dot com>

  Copyright (C) 2011 by LINESIP, All rights reserved

}
unit fpSIPURI;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpSIPTypes, fpGeneralConsts;

resourcestring
  errEmptyURI = 'The given URI is empty.';

{
  Require to Parse the following structure:
    sip:user:password@host:port;uri-parameters?headers
    sips:user:password@host:port;uri-parameters?headers

 Examples from RFC 3261
   sip:alice@atlanta.com
   sip:alice:secretword@atlanta.com;transport=tcp
   sips:alice@atlanta.com?subject=project%20x&priority=urgent
   sip:+1-212-555-1212:1234@gateway.com;user=phone
   sips:1212@gateway.com
   sip:alice@192.0.2.4
   sip:atlanta.com;method=REGISTER?to=alice%40atlanta.com
   sip:alice;day=tuesday@atlanta.com


 Example to compare URI:
   sip:%61lice@atlanta.com;transport=TCP
   sip:alice@AtLanTa.CoM;Transport=tcp

   sip:carol@chicago.com
   sip:carol@chicago.com;newparam=5
   sip:carol@chicago.com;security=on

   sip:biloxi.com;transport=tcp;method=REGISTER?to=sip:bob%40biloxi.com
   sip:biloxi.com;method=REGISTER;transport=tcp?to=sip:bob%40biloxi.com

   sip:alice@atlanta.com?subject=project%20x&priority=urgent
   sip:alice@atlanta.com?priority=urgent&subject=project%20x

   The URIs within each of the following sets are not equivalent:

   SIP:ALICE@AtLanTa.CoM;Transport=udp             (different usernames)
   sip:alice@AtLanTa.CoM;Transport=UDP

   sip:bob@biloxi.com                   (can resolve to different ports)
   sip:bob@biloxi.com:5060

   sip:bob@biloxi.com              (can resolve to different transports)
   sip:bob@biloxi.com;transport=udp

   sip:bob@biloxi.com     (can resolve to different port and transports)
   sip:bob@biloxi.com:6000;transport=tcp

   sip:carol@chicago.com                    (different header component)
   sip:carol@chicago.com?Subject=next%20meeting

   sip:bob@phone21.boxesbybob.com   (even though that's what
   sip:bob@192.0.2.4                 phone21.boxesbybob.com resolves to)
}

function ParseSIPURI(const aURI : String) : TSIPURI;

function SameSIPURI(const URI_A, URI_B : TSIPURI) : Boolean;



implementation

function ParseSIPURI ( const aURI : String ) : TSIPURI;
begin

end;

function SameSIPURI ( const URI_A, URI_B : TSIPURI ) : Boolean;
begin
 //Result := URI_A = URI_B;
end;


end.

