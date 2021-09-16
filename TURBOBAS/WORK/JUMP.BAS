     SCREEN 12
     CLS
     A=320           'START POS X, DEFAULT 320
     B=240           'START POS Y, DEFAULT 240
     V=1             'JUMP STEP, DEFAULT 1
     Z=0             'JUMP COUNTER, DEFAULT 0
     S=1.05          'BALL DEFORM, DEFAULT 1.05
     GRAVITY=1.06    'GRAVITY, DEFAULT 1.06
     ST=1            'SOUND 1/0, DEFAULT 1
     SR=1000         'SOUND HEIGH, DEFAULT 1000
     SL=1            'SOUND LENGH, DEFAULT 1
     ON ERROR GOTO PROGA
     OPEN"STUFF.CFG"FOR INPUT AS #1
     ON ERROR GOTO PROGA
     INPUT #1,A,B,V,Z,S,GRAVITY,ST,SR,SL
     ON ERROR GOTO PROGA
     CLOSE #1
PROGA:
     LINE(0,465)-(640,480),6,BF
PROG:
     CIRCLE(A-20,B-20),3,0
     LET A$=INKEY$
     IF A$=CHR$(27) THEN END
     IF A$=CHR$(0)+"H" THEN B=B-10
     IF A$=CHR$(0)+"P" THEN B=B+10
     IF A$=CHR$(0)+"M" THEN A=A+10
     IF A$=CHR$(0)+"K" THEN A=A-10
     IF A$=CHR$(13) THEN CIRCLE(A-20,B-20),3,0:GOTO DOIT
     CIRCLE(A-20,B-20),3,9
     FOR N=1 TO 500
     NEXT N
     GOTO PROG
     END
DOIT:
     Z=0
     DO
     CIRCLE(A-20,B-20),15,0,,,S
     V=V*GRAVITY
     B=B+V
     S=S-0.003
     FOR N=1 TO 700
     NEXT N
     CIRCLE(A-20,B-20),15,15,,,S
     FOR N=1 TO 700
     NEXT N
     Z=Z+1
     LINE(0,465)-(640,480),6,BF
     IF INKEY$=CHR$(27) THEN END
     LOOP UNTIL B-21>450
     IF Z<10 THEN CIRCLE(A-20,B-20),15,15,,,S:DELAY 2:END
     IF ST=1 THEN SOUND SR,SL
     FOR NI=1 TO Z
     CIRCLE(A-20,B-20),15,0,,,S
     V=V*(GRAVITY-0.14)
     B=B-V
     S=S+0.003
     FOR N=1 TO 700
     NEXT N
     CIRCLE(A-20,B-20),15,15,,,S
     FOR N=1 TO 700
     NEXT N
     LINE(0,465)-(640,480),6,BF
     IF INKEY$=CHR$(27) THEN END
     NEXT NI
     V=0.95
     GOTO DOIT
     END




