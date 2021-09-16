  CLS
  RANDOMIZE TIMER
  BONEA%=INT(RND*6)+49
  BONEB%=INT(RND*6)+49
A:
  LET A$=INKEY$
  IF A$=CHR$(27) THEN END
  LOCATE 1,1
  PRINT"What's gonna be #1:"
  FOR K=49 TO 54
  IF A$=CHR$(K) THEN LOCATE 1,21:PRINT A$:BONA=SCREEN(1,21):GOTO B
  NEXT K
  GOTO A
B:
  LET A$=INKEY$
  IF A$=CHR$(27) THEN END
  LOCATE 2,1
  PRINT"What's gonna be #2:"
  FOR K=49 TO 54
  IF A$=CHR$(K) THEN LOCATE 2,21:PRINT A$:BONB=SCREEN(2,21):GOTO EXTN
  NEXT K
  GOTO B
EXTN:
  LOCATE 4,1
  PRINT"Roll the dice!"
  DO
  LOOP WHILE INSTAT=0
  LOCATE 6,1
  PRINT"Number on dice #1 is ";CHR$(BONEA%)
  PRINT"Number on dice #2 is ";CHR$(BONEB%)
  IF BONA=BONEA% AND BONB=BONEB% THEN GOTO FULL
  IF BONA=BONEB% AND BONB=BONEA% THEN GOTO FULL
  IF BONA=BONEA% OR BONA=BONEB% OR BONB=BONEA% OR BONB=BONEB% THEN GOTO ONE
  LOCATE 9,1
  PRINT"I'm sorry but you've lost!"
  END
ONE:
  LOCATE 9,1
  PRINT"Only one number is right, good!"
  END
FULL:
  LOCATE 9,1
  PRINT"Both numbers are right, super!"
  END





