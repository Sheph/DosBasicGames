   CLS
   SCREEN 12
   COLOR 14
   PRINT"My name is stas"
   PRINT"Clan [MeaT]"
   FOR X=0 TO 200
   FOR Y=0 TO 50
   IF POINT(X,Y)=14 THEN LINE(X*2+3,Y*2+48)-(X*2+5,Y*2+50),SQR(Y+5+X),B
   NEXT
   NEXT