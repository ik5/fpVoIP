{
  Socket API unit. The following implement the required API for socket that is
  used by fpVoIP library.

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
unit fpsocket_api;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  //Foreword decleration ...
  TfpSocketStructure    = class;
  TfpSocketSSLStructure = class;

  TConnectionState = (csConnecting, csConnected, csDisconnecting,
                      csDisconnected, csStateless, csTimeout, csError,
                      csUnknown);

  TBasicSocketEvent           = procedure(Sender       : TfpSocketStructure)    of object;
  TBasicSocketConnectionEvent = procedure(Sender       : TfpSocketStructure;
                                          State        : TConnectionState
  TBasicSocketErrorEvent      = procedure(Sender       : TfpSocketStructure;
                                          ErrorCode    : Integer;
                                          ErrorMessage : String)                of object;


  { TfpSocketStructure }

  TfpSocketStructure = class abstract(TObject)
  protected

  public
    Data : Pointer;

    constructor Create;                                                         virtual abstract;
    destructor  Destroy;                                                        override abstract;
  published
    property OnConnecting :
    property OnRead       : TBasicSocketEvent;
    property OnWrite      : TBasicSocketEvent;

  end;

  { TfpSocketSSLStructure }

  TfpSocketSSLStructure = class abstract(TObject)

  end;

  { TfpUDPStructure }

  TfpUDPStructure = class abstract(TfpSocketStructure)
  public
    constructor Create;                                                         virtual abstract;
    destructor Destroy;                                                         override abstract;

  published

  end;

  TfpTCPtructure = class abstract(TfpSocketStructure)
  public
    constructor Create;                                                         virtual abstract;
    destructor Destroy;                                                         override abstract;

  published

  end;

implementation

end.

