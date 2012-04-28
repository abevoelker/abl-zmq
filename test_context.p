/* TODO: ZMQ.Context crashes (SegFault) for NUM_THREADS >= 0 */

&SCOPED-DEFINE NUM_THREADS 0
DEF VAR objContext AS ZMQ.Context NO-UNDO.

objContext = NEW ZMQ.Context({&NUM_THREADS}).

IF VALID-OBJECT(objContext) THEN DO:
  DEF VAR ptr_address AS INT NO-UNDO.
  ptr_address = GET-POINTER-VALUE(objContext:contextPtr).

  /* Null pointer means context was not properly created */
  IF ptr_address = 0 THEN
    MESSAGE "ZMQ context was not properly created.".
  ELSE
    MESSAGE SUBSTITUTE("ZMQ context successfully created " +
                       "at memory address &1",
                       ptr_address) VIEW-AS ALERT-BOX.
END.
ELSE
  MESSAGE "Context object creation failed!".
