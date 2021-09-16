   SCREEN 9
   COLOR 15, 3
   PRINT "THIS IS MY CUBIC FONT"
   N = 8
   X = 300
   Y = 50
   FOR A = 0 TO X
   FOR B = 0 TO Y
   IF POINT(A, B) = 15 THEN GOSUB COOL
   NEXT
   NEXT
   FOR A = 0 TO X
   FOR B = 0 TO Y
   IF POINT(A, B) = 15 THEN Z = 0: LINE (A * 2.5 + Z, B * 2.5 - Z + 100)-(A * 2.5 + 2 + Z, B * 2.5 + 102 - Z), 9, BF
   NEXT
   NEXT
   END
COOL:
   FOR Z = 0 TO 8
   LINE (A * 2.5 + Z, B * 2.5 - Z + 100)-(A * 2.5 + 2 + Z, B * 2.5 + 102 - Z), 1, BF
   NEXT
   RETURN
   END

