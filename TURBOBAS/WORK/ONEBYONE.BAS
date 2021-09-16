  SCREEN 9
  Z=1
  INPUT NAM$
  CLS
  OPEN NAM$ FOR INPUT AS #1
  DO
  LINE INPUT #1,D$
  FOR U=1 TO LEN(D$)
  LOCATE Z,1
  COLOR 7
  PRINT LEFT$(D$,U)
  DELAY 0.03
  LET A$=INKEY$
  IF A$=CHR$(27) THEN END
  NEXT
  IF Z=22 THEN GOSUB NXT
  Z=Z+1
  LOOP UNTIL EOF(1)
  END
NXT:
  COLOR 8
  LOCATE 23,1
  PRINT"Press any key for the next page"
  DO
  LOOP WHILE INKEY$=""
  CLS
  Z=0
  RETURN
  END