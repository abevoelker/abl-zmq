DEFINE INPUT  PARAMETER ipiNumThreads AS INTEGER NO-UNDO.
DEFINE OUTPUT PARAMETER opmContextPtr AS MEMPTR  NO-UNDO.

RUN zmq_init(INPUT  ipiNumThreads,
             OUTPUT opmContextPtr).

/* This binding is causing a SegFault for num_threads values >= 0 */
/* Not sure why, as I would assume void* return values should map */
/* to MEMPTR? Perhaps it's due to some threading call blowing up  */
/* the non-threaded AVM?                                          */
PROCEDURE zmq_init EXTERNAL "vendor/2.2.0/windows_32/libzmq.dll" CDECL:
  DEFINE INPUT  PARAMETER num_threads AS LONG.
  DEFINE RETURN PARAMETER context_ptr AS MEMPTR.
END PROCEDURE.
