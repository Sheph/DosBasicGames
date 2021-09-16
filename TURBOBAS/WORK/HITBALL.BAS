     CLS
     SCREEN 12
     SCR=0
     AM=40
     TIM=60
     Z$="DEFAULT"
     LET A=30
     LET B=30
     LET X=320
     LET Y=200
     D=2.5
     E%=12
     DIM BALL%(1000)
     DIM TARGET%(10000)
     FOR I=15 TO 1 STEP-0.1
     FOR LJ=1 TO I STEP+2
     CIRCLE(100,100),LJ,INT(RND*15)
     NEXT LJ
     NEXT I
     GET(80,80)-(120,120),BALL%
     LINE(200,200)-(202,230),9,BF
     LINE(185,215)-(215,217),9,BF
     GET(170,185)-(235,250),TARGET%
     CLS
     LET C=7
     SCREEN 12
     COLOR 14
     LOCATE 15,38
     PRINT"3"
     DELAY 0.5
     LOCATE 15,38
     PRINT"2"
     DELAY 0.5
     LOCATE 15,38
     PRINT"1"
     DELAY 0.5
     LOCATE 15,38
     PRINT"GO!"
     DELAY 0.8
     CLS
COOL:
     IF TIM<0 THEN GOTO GM
     IF AM<1 THEN GOTO GM
     IF SCR>18 THEN GOTO WN
     RANDOMIZE TIMER
     TA%=INT(RND * 4)
     IF TA%=0 AND K>500 THEN C=7:K=0
     IF TA%=1 AND K>500 THEN C=6:K=0
     IF TA%=2 AND K>500 THEN C=5:K=0
     IF TA%=3 AND K>500 THEN C=8:K=0
     COLOR 5
     LOCATE 1,1
     PRINT "Score:";SCR
     LOCATE 1,35
     PRINT "Ammo:";AM
     LOCATE 1,65
     PRINT "Time:";CINT(TIM)
     LOCATE 2,35
     PRINT "Skill:";Z$;"          "
     IF D<3 THEN Z$="GIRLMAN"
     IF D<2 THEN Z$="WEENIE"
     IF D>4 THEN Z$="COOL GUY"
     IF D>5 THEN Z$="MASTER"
     LINE(29,35)-(629,469),15,B
     PUT(A,B),BALL%,PSET
     PUT(X,Y),TARGET%,PSET
     LET A$=INKEY$
     IF A$=CHR$(27) THEN END
     IF A$=CHR$(0)+"H" THEN Y=Y-15
     IF A$=CHR$(0)+"P" THEN Y=Y+15
     IF A$=CHR$(0)+"M" THEN X=X+15
     IF A$=CHR$(0)+"K" THEN X=X-15
     IF A$=CHR$(13) THEN GOTO CHK
     IF D<0.05 THEN GOTO AR
     IF A$="-" THEN D=D-0.05
AR:
     IF D>5 THEN GOTO POO
     IF A$="+" THEN D=D+0.05
POO:
     IF X>570 THEN X=X-11
     IF X<30 THEN X=X+11
     IF Y>410 THEN Y=Y-11
     IF Y<30 THEN Y=Y+11
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
     K=K+1
     TIM=TIM-0.007
     LOCATE 2,1
     PRINT"                   "
     GOTO COOL
     END
CHK:
     IF AM<1 THEN GOTO COOL
     FOR KL=A TO A+40
     FOR KT=B TO B+40
     IF POINT(KL,KT)=9 THEN SCR=SCR+1:GOTO ARTA
     NEXT
     NEXT
ARTA:
     AM=AM-1
     FOR IJ=1 TO 20 STEP+0.05
     CIRCLE(X+30,Y+30),IJ,4
     NEXT IJ
     GOTO COOL
     END
GM:
     CLS
     LOCATE 15,38
     COLOR 4
     PRINT"GAME OVER"
     DO
     LOOP UNTIL INKEY$=CHR$(27)
     END
WN:
     CLS
     LOCATE 15,35
     COLOR 4
     PRINT"WINNER IS ";Z$
     DO
     LOOP UNTIL INKEY$=CHR$(27)
     END



