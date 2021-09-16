     CLS
     SCREEN 12
     LET A=320
     LET B=200
     D=0.1
     RANDOMIZE TIMER
     E%=INT(RND * 16)
     DIM BALL%(1000)
     CIRCLE(100,100),15,15
     PAINT(100,100),E%,15
     GET(80,80)-(120,120),BALL%
     CLS
     SCREEN 12
COOL:
     LINE(29,29)-(629,469),15,B
     COLOR 5
     LOCATE 1,1
     PRINT CINT(D*4);"Km/h  "
     PUT(A,B),BALL%,PSET
     LET A$=INKEY$
     IF A$=CHR$(27) THEN CLS:GOTO WRITEA
     IF A$=CHR$(0)+";" THEN GOTO HELP
     IF A$=CHR$(0)+"<" THEN GOTO CHNG
     IF A$=CHR$(0)+"H" THEN C=1
     IF A$=CHR$(0)+"P" THEN C=2
     IF A$=CHR$(0)+"M" THEN C=3
     IF A$=CHR$(0)+"K" THEN C=4
     IF A$=CHR$(0)+"G" THEN C=5
     IF A$=CHR$(0)+"I" THEN C=6
     IF A$=CHR$(0)+"O" THEN C=7
     IF A$=CHR$(0)+"Q" THEN C=8
     IF D<0.05 THEN GOTO AR
     IF A$="-" THEN D=D-0.05
AR:
     IF D>5 THEN GOTO POO
     IF A$="+" THEN D=D+0.05
POO:
     IF A>590 AND C=8 THEN C=7
     IF A>590 AND C=6 THEN C=5
     IF A>590 AND C=3 THEN C=4
     IF A<30 AND C=4 THEN C=3
     IF A<30 AND C=7 THEN C=8
     IF A<30 AND C=5 THEN C=6
     IF B>430 AND C=2 THEN C=1
     IF B>430 AND C=7 THEN C=5
     IF B>430 AND C=8 THEN C=6
     IF B<30 AND C=1 THEN C=2
     IF B<30 AND C=6 THEN C=8
     IF B<30 AND C=5 THEN C=7
     IF C=1 THEN B=B-D
     IF C=2 THEN B=B+D
     IF C=3 THEN A=A+D
     IF C=4 THEN A=A-D
     IF C=5 THEN A=A-D:B=B-D
     IF C=6 THEN A=A+D:B=B-D
     IF C=7 THEN A=A-D:B=B+D
     IF C=8 THEN A=A+D:B=B+D
     GOTO COOL
     END
HELP:
     CLS
     COLOR 14
     LOCATE 1,1
     PRINT"Exact speed:";D*4;"Km/h"
     PRINT"Ball color:";E%
     COLOR 12
     PRINT"Controls (Num lock must be off):"
     PRINT"HOME UP  PGUP"
     PRINT"LEFT    RIGHT"
     PRINT"END DOWN PGDN"
     COLOR 1
     PRINT
     PRINT"Use keypad to move the ball!"	
     PRINT"Use +,- to increase or decrease ball's speed!"
     COLOR 2
     PRINT
     PRINT"F1 - This help"
     PRINT"F2 - Change color of the ball"
     DO
     LOOP WHILE INKEY$=""
     CLS
     GOTO COOL
     END
CHNG:
     CLS
     LOCATE 1,1
     COLOR 3
     PRINT"Use UP and DOWN arrows to change the color of the ball"
     LOCATE 2,1
     PRINT"Press ENTER to accept or ESC to cancel"

CIRC:
     CIRCLE(100,100),15,15
     PAINT(100,100),F,15
     LET A$=INKEY$
     IF A$=CHR$(0)+"H" THEN F=F-1
     IF A$=CHR$(0)+"P" THEN F=F+1
     IF A$=CHR$(13) THEN GOTO CL
     IF A$=CHR$(27) THEN CLS:GOTO COOL
     GOTO CIRC
     END
CL:
     GET(80,80)-(120,120),BALL%
     CLS
     GOTO COOL
     END
WRITEA:
     OPEN"DUMB.PIC" FOR APPEND AS #1
     FOR ION=0 TO 1000
     WRITE #1,BALL%(ION)
     NEXT ION




