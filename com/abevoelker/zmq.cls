USING Progress.Lang.*.

CLASS ZMQ:
  CONSTRUCTOR PUBLIC ZMQ():
  END CONSTRUCTOR.

  METHOD PUBLIC STATIC INT EXTENT 3 version():
    DEF VAR iVer AS INT EXTENT 3 NO-UNDO.
    RUN "lib/zmq/zmq_version.p"(OUTPUT iVer).
    RETURN iVer.
  END METHOD.

  METHOD PUBLIC STATIC CHAR versionString():
    DEF VAR iVer AS INT EXTENT 3 NO-UNDO.
    iVer = version().
    RETURN SUBSTITUTE("&1.&2.&3", iVer[1], iVer[2], iVer[3]).
  END METHOD.
END CLASS.
