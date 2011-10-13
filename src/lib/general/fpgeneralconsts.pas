{
  General Types and constants that can be used all over the library

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
unit fpGeneralConsts;

{$mode objfpc}{$H+}

interface

{
  RFC 2234 core
  ALSO from other RFC's that require this settings.
  We only decleare the valid set of chars here, not rules
}
const
  UALPHA      = ['A'..'Z'];
  LALPHA      = ['a'..'z'];
  ALPHA       = UALPHA + LALPHA;
  DIGIT       = ['0'..'9'];
  ALPHANUM    = ALPHA + DIGIT;
  LF          = #10;
  CR          = #13;
  CRLF        = [CR, LF];
  BIT         = ['0'..'1'];
  _CHAR       = [#1..#127];
  CTL         = [#0..#31, #127];
  DQUOTE      = #34;
  QUOTE       = #39;
  HEXDIG      = ['0'..'9', 'A'..'F', 'a'..'f'];
  HTAB        = #9;
  SP          = #32;
  WSP         = [SP, HTAB];
// LWSP =  *(WSP / CRLF WSP) <- ABNF defeniton
  LWSP        = WSP + CRLF;
  OCTET       = [#0..#255];
  VCHAR       = [#33..#126];

// Generic URI (rfc 3986/2396) Chars and charsets

  GEN_DELIMS  = [':', '/', '?', '#',   '[', ']', '@' ];
  SUB_DELIMS  = ['!', '$', '&', QUOTE, '(', ')', '*',
                 '+', ',', ';', '='];
  RESERVED    = GEN_DELIMS + SUB_DELIMS;
  UNRESERVED  = ALPHA + DIGIT + ['-', '.', '_', '~'];
  PCT_ENCODED = ['%'] + HEXDIG;
  ESCAPED     = PCT_ENCODED;
  URIC        = RESERVED + UNRESERVED + ESCAPED;
  MARK        = ['-', '_', '.', '!', '~', '*', QUOTE, '(', ')'];


implementation

end.

