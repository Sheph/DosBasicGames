     CLS
     SCREEN 12
START:
     CLS
     RANDOMIZE TIMER
     X%=INT(RND * 14)
     IF X%=0 OR X%=14 THEN GOTO START
     FOR A=1 TO 480 STEP+2
     FOR L=1 TO 640
     LET S=COS(A)*SIN(A+A+L)*640
     LET T=COS(L)*SIN(L+L+A)*480
     PSET(S,T),X%+2
     IF INKEY$=CHR$(27) THEN END
     NEXT
     NEXT
     IF INKEY$=CHR$(27) THEN END
     CLS
     FOR A=1 TO 480 STEP+2
     FOR L=1 TO 640
     LET S=COS(A)*SIN(A+L+L)*640
     LET T=COS(L)*SIN(L+A+A)*480
     PSET(S,T),X%+3
     IF INKEY$=CHR$(27) THEN END
     NEXT
     NEXT
     IF INKEY$=CHR$(27) THEN END
     CLS
     FOR A=1 TO 480 STEP+2
     FOR L=1 TO 640
     LET S=COS(A)*SIN(A+L+L+A)*640
     LET T=COS(L)*SIN(L+A+A+L)*480
     PSET(S,T),X%+4*5+1
     IF INKEY$=CHR$(27) THEN END
     NEXT
     NEXT
     IF INKEY$=CHR$(27) THEN END
     CLS
     FOR A=1 TO 480 STEP+2
     FOR L=1 TO 640
     LET S=COS(A)*SIN(A+L+L+A+A+L)*640
     LET T=COS(L)*SIN(L+A+A+L+L+L+A)*480
     PSET(S,T),X%+5
     IF INKEY$=CHR$(27) THEN END
     NEXT
     NEXT
     IF INKEY$=CHR$(27) THEN END
     CLS
     FOR A=1 TO 480
     FOR L=1 TO 640
     LET S=COS(A)*SIN(A+L+L+A+A+L+A)*640
     LET T=COS(L)*SIN(L+A+A+L+L)*480
     PSET(S,T),X%+6
     IF INKEY$=CHR$(27) THEN END
     NEXT
     NEXT
     CLS
     IF INKEY$=CHR$(27) THEN END
     GOTO START
     END

