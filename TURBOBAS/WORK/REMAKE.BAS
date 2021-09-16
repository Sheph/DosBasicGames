  CLS
  INPUT"Enter file source: ",A$
  INPUT"Enter file output: ",B$
  INPUT"Enter format(C for CAPS, N for NON-CAPS): ",C$
  CLS
  OPEN A$ FOR INPUT AS #1
  OPEN B$ FOR OUTPUT AS #2
  DO
  LINE INPUT #1,D$
  IF UCASE$(C$)="C" THEN PRINT #2,UCASE$(D$) ELSE PRINT #2,LCASE$(D$)
  LOOP UNTIL(EOF(1))
  CLOSE #1
  CLOSE #2
  PRINT"Completed successful!"
  END
