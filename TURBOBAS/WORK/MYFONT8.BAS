   SCREEN 12
   PRINT"Stas = Genius"
   N=8
   X=300
   Y=50
   FOR A=0 TO X
   FOR B=0 TO Y
   IF POINT(A,B)=15 THEN LINE(A*2.5+N,B*2.5+100-N/2)-(A*2.5+N+2,B*2.5+102-N/2),1,BF
   NEXT
   NEXT
   FOR A=1 TO X
   FOR B=1 TO Y
   IF POINT(A,B)=15 THEN LINE(A*2.5,B*2.5+100)-(A*2.5+N,B*2.5+100-N/2),9
   NEXT
   NEXT
   FOR A=0 TO X
   FOR B=0 TO Y
   IF POINT(A,B)=15 THEN LINE(A*2.5,B*2.5+100)-(A*2.5+2,B*2.5+102),1,BF
   NEXT
   NEXT
   END

