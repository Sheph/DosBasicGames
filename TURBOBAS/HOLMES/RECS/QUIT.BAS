   CLS
   SCREEN 12
   DIM TXT(1000)
   PAINT(1,1),2,15
   LOCATE 5,35
   COLOR 7,2
   PRINT"�����"
   FOR X=200 TO 400
   FOR Y=50 TO 100
   IF POINT(X,Y)=7 THEN PSET(X,Y+100),8:DRAW"C8 U2"
   NEXT
   NEXT
   FOR X=200 TO 400
   FOR Y=150 TO 200
   IF POINT(X,Y)=8 THEN PSET(X-1,Y-1),7
   NEXT
   NEXT
   LOCATE 5,35
   PRINT"               "
'GET IT
   GET(268,160)-(314,178),TXT
   DEF SEG=VARSEG(TXT(0))
   BSAVE"QUIT.HMS",VARPTR(TXT(0)),2000
   DEF SEG