  DIM REKLAMA%(20000)
  DIM TEXT%(10000)
  SCREEN 12
  LOCATE 1,1
  PAINT(1,1),5,15
  PRINT" Call now!"
  FOR A=0 TO 200 STEP+0.9
  FOR B=0 TO 50 STEP+0.9
  IF POINT(A,B)=15 THEN FOR I=1 TO 2:CIRCLE(A*3+5,B*5+50),I,1:NEXT:line(A*3+2,B*5+45)-(A*3+4,B*5+50),9,BF
  NEXT
  NEXT
  FOR A=0 TO 500 STEP+2
  FOR B=51 TO 200 STEP+2
  IF POINT(A,B)=9 THEN PSET(A,B),1
  NEXT
  NEXT
  GET(15,45)-(248,115),TEXT%
  CLS
  COLOR 8,8
  PRINT"ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
  PRINT"º  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿  º"
  PRINT"º  ³                                                                       ³  º"
  PRINT"º  ³                                                                       ³  º"
  PRINT"º  ³                                                                       ³  º"
  PRINT"º  ³                                                                       ³  º"
  PRINT"º  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  º"
  PRINT"ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"
  PAINT(100,10),1,8
  PAINT(4,10),3,8
  PAINT(1,479),5,8
  COLOR 14,8
  LOCATE 3,31
  PRINT"Buy our products!"
  COLOR 15,8
  LOCATE 4,5
  PRINT"We (Ds PLUS! guys) have lot's of different software, it's really cool"
  LOCATE 5,7
  PRINT"For example SPACE ATTACKER and WORMS. You'll like those cool games"
  LOCATE 6,7
  PRINT"SPACE ATTACKER supports sound card and WORMS has super vga graphics"
  GET(0,0)-(635,120),REKLAMA%
  CLS
  PAINT(1,1),5,15
  Y=0
  PUT(3,0),REKLAMA%,PSET
  DELAY 1
  DO
  PUT(3,Y),REKLAMA%,PSET
  Y=Y+3
  LOOP UNTIL Y>359
  Y=0
  K=1
  DO
  PUT(185,Y),TEXT%,PSET
  Y=Y+K
  K=K+0.01
  LOOP UNTIL Y>289
  DO
  PUT(185,Y),TEXT%,PSET
  Y=Y-K
  K=K-0.02
  LOOP UNTIL Y>289
  DELAY 3
  CLS
  END



