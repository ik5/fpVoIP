Roadmap
=======
This document explain what should be made on each version that will be released on the project.

At the moment we are pre version 0.1.

Each version is set only after the implementation is done, and all of the tests works well.


The API of the socket and codecs library may change to fit better the needs at any given time up to version 1.0

Version 1.0 means a stable API library. All sub versions for version 1.0 will not break the API unless there is no other way do code things.

=========
Constants
=========
* Create Tests
* Improve Documentation
* Add Documentation
* **Fix Bugs** - More important then new features !

============
Version 0.1
============
* Work on high level socket API
* Create lNET based driver for the socket API
* Implement SIP protocol:

  - **rfc3261** - Must have
  - rfc2543 - nice to have

============
Version 0.2
============
* Create basic support for SDP (rfc4566)
* Create basic support for RTP (rfc3550, rfc3551, rfc5391, rfc6222)
* Create basic support for G711 (ulaw, alaw)

============
Version 0.3
============
* Create support for DTMF:
  - Inband
  - rfc2833
* Create support for STUN (rfc5389)
* Add support for Instant Messaging (rfc3428)

============
Version 0.4
============
* Start to create examples for each feature that added so far
* Bug squashing 
* Set documentation up to date
* Make sure all tests cover all of the existed features

============
Version 0.5
============
* Make sure that SIP works both as client and as server
* Make stress tests and try to make the library work with at least 10,000 requests per second
* Make tests that make sure that the server can work with at least 100,000 active SIP connections overall

============
Version 0.6
============
* Create support for IAX2 (rfc5456)

