USING Progress.Lang.*.

CLASS ZMQ.Context:
  DEF PUBLIC PROPERTY contextPtr AS MEMPTR NO-UNDO
    GET.
    PRIVATE SET.

  CONSTRUCTOR PUBLIC Context(INPUT iNumThreads AS INT):
    RUN "lib/zmq/zmq_init.p"(INPUT  iNumThreads,
                             OUTPUT contextPtr).
  END CONSTRUCTOR.

  DESTRUCTOR PUBLIC Context():
    DEF VAR iReturnStatus AS INT NO-UNDO.
    RUN "lib/zmq/zmq_term.p"(INPUT-OUTPUT contextPtr,
                             OUTPUT iReturnStatus).
  END DESTRUCTOR.

END CLASS.
