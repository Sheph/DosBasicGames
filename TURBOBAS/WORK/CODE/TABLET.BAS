  CLS
  N=1
  FOR Z=1 TO 5
  FOR X=1 TO 75
  LOCATE Z,X
  PRINT CHR$(N)
  LOCATE 10,1
  PRINT"Current symbol has a code";N
  N=N+1
  IF N=7 THEN N=8
  IF N=12 THEN N=13
  IF N=255 THEN END
A:
  LET A$=INKEY$
  IF A$=CHR$(27) THEN END
  IF A$<>"" THEN GOTO B
  GOTO A
B:
  NEXT
  NEXT
