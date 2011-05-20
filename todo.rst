Todo list
=========

Map
---
- "-" Item
- "*" sub item
- "|" comments such as: "done", "partly done", "implemented at ..." etc...

Sockets:
--------
- Create higher level API for socket handling

  * Change API according to the SIP, RTP and SDP requirements

- Create lNET Driver for sockets

  * Create package for lNET driver (using the lNetBase as dependendy)
  * Create version for the lNET driver

- Create Thread safe multi sockets support
- Test both IPv4 and IPv6 support

SIP Implementation:
-------------------
- Work on rfc3261
- Test
- Document

SIP URI:
--------
- Create the Parser
- Create a way to sort Headers and Params
- Create operators to find if TSIPURI equals to another TSIPURI

Documentation:
--------------
- Add more documentation
- Learn fpDocs better

General:
--------
- Create fpPkg support        | Should be made prior to v0.1 release
- Create Makefile.fpc support | Should be made prior to v0.1 release

Tests:
------
Add more tests
