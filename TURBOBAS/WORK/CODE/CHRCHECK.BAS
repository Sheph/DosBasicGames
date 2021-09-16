  CLS
START:
  LET A$=INKEY$
  IF A$=CHR$(27) THEN END
  IF A$="" THEN GOTO START
  LOCATE 1,1
  PRINT "Code for ";A$;" is";ASC(A$)
  GOTO START