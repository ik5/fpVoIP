{
  Basic SIP Implementation

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

  NOTES:
   * SIP can work on it's own, and will use other protocols only to expand
     itself.

}
unit fpSIP;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpsocket_api, fpSIPURI, fpSIPTypes;

{
  SIP supports five facets of establishing and terminating multimedia
   communications:

      User location: determination of the end system to be used for
           communication;

      User availability: determination of the willingness of the called
           party to engage in communications;

      User capabilities: determination of the media and media parameters
           to be used;

      Session setup: "ringing", establishment of session parameters at
           both called and calling party;

      Session management: including transfer and termination of
           sessions, modifying session parameters, and invoking
           services.
}



implementation

end.

