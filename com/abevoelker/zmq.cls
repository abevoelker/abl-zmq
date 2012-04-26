USING Progress.Lang.*.

CLASS ZMQ:
  CONSTRUCTOR PUBLIC ZMQ():
  END CONSTRUCTOR.

  METHOD PUBLIC STATIC CHAR version():
    DEF VAR cVersion AS CHAR NO-UNDO.
    RUN "lib/zmq/version.p"(OUTPUT cVersion).
    RETURN cVersion.
  END METHOD.
END CLASS.
