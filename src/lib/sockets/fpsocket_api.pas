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
  Classes, SysUtils, eventlog, Sockets;

const
  SOCKET_VERSION = '0.1';

type

  //Foreword decleration ...
  TfpSocketStructure    = class;
  TfpSocketSSLStructure = class;

  TConnectionState = (csConnecting, csConnected, csDisconnecting,
                      csDisconnected, csStateless, csTimeout, csError,
                      csUnknown);

  TBasicSocketEvent           = procedure(Sender       : TfpSocketStructure)    of object;
  TBasicSocketConnectionEvent = procedure(Sender       : TfpSocketStructure;
                                          State        : TConnectionState)      of object;
  TBasicSocketErrorEvent      = procedure(Sender       : TfpSocketStructure;
                                          ErrorCode    : Integer;
                                          ErrorMessage : String)                of object;


  { TfpSocketStructure }

  TfpSocketStructure = class abstract(TObject)
  protected
    procedure SetProtocol;                                                      virtual abstract;
  public
    constructor Create;                                                         virtual abstract;
    constructor Create(aLogger : TEventLog);                                    virtual abstract;
    destructor  Destroy;                                                        override abstract;

    function Connect : Boolean;                                                 virtual abstract;
    function Connect(const Address : string; const APort : Word) : Boolean;     virtual abstract;
    function Listen(const APort : Word;
                    const AIntf : string = '0.0.0.0')            : Boolean;     virtual abstract;
    function Accept(const SerSock : TSocket)                     : Boolean;     virtual abstract;
    procedure Disconnect;                                                       virtual abstract;

    function SendBuffer(const aBuffer; aSize : Integer) : Boolean;              virtual abstract;
    function SendString(const aBuffer)                  : Boolean;              virtual abstract;
    function GetBuffer(out aData; const aSize: Integer) : Integer;              virtual abstract;
    function GetString(out aData : String)              : Integer;              virtual abstract;

    property Protocol : Integer;
  published
    property Active        : Boolean;
    property Body          : TStrings;
    property Headers       : TStrings;
    property Host          : String;
    property LocalAddress  : string;
    property LocalPort     : Word;
    property PeerAddress   : string;
    property PeerPort      : Word;
    property Port          : Word;
    property SSL           : TfpSocketSSLStructure;
    property ToLog         : Boolean;
    property UseSSL        : Boolean;

    property OnError       : TBasicSocketErrorEvent;
    property OnRead        : TBasicSocketEvent;
    property OnStateChange : TBasicSocketConnectionEvent;
    property OnWrite       : TBasicSocketEvent;

  end;

  { TfpSocketSSLStructure }

  TfpSocketSSLStructure = class abstract(TObject)

  end;

  { TfpUDPClientStructure }

  TfpUDPClientStructure = class abstract(TfpSocketStructure)
  public
    constructor Create;                                                         virtual abstract;
    destructor Destroy;                                                         override abstract;

  published

  end;

  { TfpTCPClientStructure }

  TfpTCPClientStructure = class abstract(TfpSocketStructure)
  public
    constructor Create;                                                         virtual abstract;
    destructor Destroy;                                                         override abstract;

  published

  end;

implementation

end.

