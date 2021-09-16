      CLS
      SCREEN 12
      DIM COOL%(10000)
      DIM COOL2%(10000)
      DIM COOL3%(10000)
     LINE(100,100)-(120,130),15
     LINE(120,130)-(120,150),15
     LINE(120,150)-(100,130),15
     LINE(100,130)-(80,150),15
     LINE(80,150)-(80,130),15
     LINE(80,130)-(100,100),15
     PAINT(100,110),1,15
     CIRCLE(100,120),8,15
     PAINT(100,120),4,15
     GET(60,95)-(130,155),COOL%
     CLS
     LINE(100,100)-(120,120),15
     LINE(120,120)-(120,160),15
     LINE(120,160)-(80,160),15
     LINE(80,160)-(80,120),15
     LINE(80,120)-(100,100),15
     FOR ZAN=1 TO 15
     CIRCLE(100,130),ZAN,4
     NEXT ZAN
     CIRCLE(100,130),15,15
     PAINT(100,155),3,15
     CIRCLE(125,140),20,15,,,5
     PAINT(125,140),2,15
     CIRCLE(75,140),20,15,,,5
     PAINT(75,140),2,15
     GET(60,95)-(140,170),COOL2%
     CLS
     LINE(100,100)-(120,130),15
     LINE(120,130)-(120,138),15
     LINE(120,138)-(80,138),15
     LINE(80,138)-(80,130),15
     LINE(80,130)-(100,100),15
     PAINT(100,110),8,15
     CIRCLE(100,120),8,15
     PAINT(100,120),9,15
     LINE(110,114)-(100,80),15
     LINE(100,80)-(90,114),15
     PAINT(100,85),9,15
     GET(70,73)-(130,160),COOL3%
     CLS
START:
      COLOR 14
      PRINT"            °±±±±±±   °±±±±±     °±±±±       °±±±±±±±    °±±±±±±±"
      PRINT"            °±        °±    ±    °±   ±      °±     ±    °±     ±"
      COLOR 3
      PRINT"            °±        °±    ±±   °±    ±     °±          °±      "
      PRINT"            °±        °±    ±±   °±    °±    °±          °±      "
      COLOR 4
      PRINT"            °±±±±±±   °±±±±±     °±    °±    °±          °±±±±±± "
      PRINT"                 °±   °±         °±°°°°°±    °±          °±      "
      COLOR 9
      PRINT"                 °±   °±         °±    °±    °±          °±      "
      PRINT"                 °±   °±         °±    °±    °±     ±    °±     ±"
      PRINT"            °±±±±±±   °±         °±    °±    °±±±±±±±    °±±±±±±±"
      COLOR 2
      PRINT"             A       T      T      A       C      K      E      R"
      COLOR 12
      LOCATE 1,70
      PRINT"Version 1.0"
      PUT(30,350),COOL%,PSET
      PUT(500,350),COOL2%,PSET
      PUT(270,180),COOL3%,PSET
      RANDOMIZE TIMER
      FOR M=1 TO 130
      X%=INT(RND * 640)
      Y%=INT(RND * 480)
      Z%=INT(RND * 15)
      PSET(X%,Y%),Z%
      NEXT M

'MENU
A:
      LOCATE 20,33
      COLOR 15
      PRINT"  NEW GAME"
      LOCATE 21,33
      COLOR 8
      PRINT" SCORES/HELP"
      LOCATE 22,33
      PRINT"    QUIT"
      LET A$=INKEY$
      IF A$=CHR$(0)+"H" THEN GOTO C
      IF A$=CHR$(0)+"P" THEN GOTO B
      IF A$=CHR$(13) THEN RUN"MAIN.AIR"
      GOTO A
B:
      LOCATE 20,33
      COLOR 8
      PRINT"  NEW GAME"
      LOCATE 21,33
      COLOR 15
      PRINT" SCORES/HELP"
      LOCATE 22,33
      COLOR 8
      PRINT"    QUIT"
      LET A$=INKEY$
      IF A$=CHR$(0)+"H" THEN GOTO A
      IF A$=CHR$(0)+"P" THEN GOTO C
      IF A$=CHR$(13) THEN GOTO SCORES
      GOTO B
C:
      LOCATE 20,33
      COLOR 8
      PRINT"  NEW GAME"
      LOCATE 21,33
      PRINT" SCORES/HELP"
      LOCATE 22,33
      COLOR 15
      PRINT"    QUIT"
      LET A$=INKEY$
      IF A$=CHR$(0)+"H" THEN GOTO B
      IF A$=CHR$(0)+"P" THEN GOTO A
      IF A$=CHR$(13) THEN END
      GOTO C
      END
SCORES:
     CLS
     COLOR 14
     LINE(0,20)-(640,20)
     LOCATE 1,1
     PRINT"NAME"
     LOCATE 1,35
     PRINT"LEVEL"
     LOCATE 1,70
     PRINT"SCORE"
     LOCATE 3,1
     OPEN "SCORE.DAT" FOR INPUT AS #1
     DO
     INPUT #1,GO,AO
     LOCATE ,35
     COLOR 4
     PRINT GO,"                           ";AO
     LOOP UNTIL (EOF(1))
     CLOSE
     LOCATE 3,1
     OPEN "NAMES.DAT" FOR INPUT AS #2
     DO
     INPUT #2,NAM$
     LOCATE ,1
     PRINT NAM$
     LOOP UNTIL (EOF(2))
     CLOSE
     DO
     LOOP WHILE INKEY$=""
     CLS
'HELP
     COLOR 4
     LOCATE 1,30
     PRINT"SPACE ATTACKER'S HELP"
     COLOR 14
     PRINT"IN THIS GAME YOU MUST SURVIVE IN OUTER SPACE.WHILE YOU'RE PLAYING"
     PRINT"THERE WILL BE 5 LEVELS. IN EACH LEVEL YOU WILL HAVE +2 LIVES AND SPEED"
     PRINT"WILL BE FASTER.YOU MUST ATTACK ROCKS FOR SCORE OR YOU CAN MISS THEM,"
     PRINT"BUT THAT WAY YOU'LL NEVER COMPLETE THE GAME."
     COLOR 3
     PRINT"THERE ARE THREE KINDS OF ROCKS:"
     PRINT"4 CORNERED(SLOW SPEED) - 1 POINT"
     PRINT"CIRCLED(MEDIUM SPEED)  - 2 POINTS"
     PRINT"3 CORNERED(FAST SPEED) - 3 POINTS"
     COLOR 4
     PRINT"WARNING! IF YOU'LL STAND ON ONE PLACE FOR TOO LONG, THEN IT'LL BE"
     PRINT"VERY BAD FOR YOU!"
     COLOR 12
     PRINT
     PRINT"CONTROLS:"
     COLOR 2
     PRINT"        UP ARROW                 PAUSE/BREAK        T"
     PRINT"LEFT ARROW    RIGHT ARROW        ESC                t"
     PRINT
     PRINT"LEFT,RIGHT ARROW - MOVE SPACE SHIP LEFT AND RIGHT"
     PRINT"UP ARROW - ATTACK"
     PRINT"PAUSE/BREAK - PAUSE,UNPAUSE THE GAME"
     PRINT"ESC - QUIT GAME"
     PRINT"T - MESSAGE MODE/PASSWORD MODE"
     DO
     LOOP WHILE INKEY$=""
     CLS
     GOTO START
     END



      
