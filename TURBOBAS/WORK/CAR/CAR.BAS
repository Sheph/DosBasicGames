   SCREEN 12
   CAR.U$ = "G8 E8 F8" 'CAR UP
   CAR.D$ = "H8 F8 E8" 'CAR DOWN
   CAR.R$ = "H8 F8 G8" 'CAR RIGHT
   CAR.L$ = "E8 G8 F8" 'CAR LEFT
   DF$ = CAR.U$        'CAR AT STARTUP
   AX = 0 'ACCELERATION
   X = 320'X POS
   Y = 240'Y POS
   K = 0  'Y MOVE
   J = 0  'X MOVE
   TM = 500 'GAME SPEED, 500-SLOWEST
   METER = 0'PASSED DISTANCE(METERS)
START:
   LINE (0, 0)-(180, 12), 15, B
   LINE (0, 6)-(180, 6), 15
   LINE (2, 7)-(AX * 30, 11), 10, BF
   LINE (1, 1)-(AX * 30, 5), 0, BF
   PSET (X, Y), 0
   DRAW "C0"
   DRAW DF$
   IF X < 10 THEN X = 30: AX = 0: J = 0: K = 0
   IF X > 630 THEN X = 600: AX = 0: J = 0: K = 0
   IF Y > 470 THEN Y = 450: AX = 0: J = 0: K = 0
   IF Y < 10 THEN Y = 40: AX = 0: J = 0: K = 0
   LET A$ = INKEY$
   IF A$ = CHR$(27) THEN GOTO RESULTS
   IF A$ = CHR$(0) + "H" THEN AX = AX + 2: Y = Y - AX: Y = Y - .2: DF$ = CAR.U$: K = K - .5: METER = METER + AX: GOTO PO
   IF A$ = CHR$(0) + "P" THEN AX = AX + 2: Y = Y + AX: Y = Y + .2: DF$ = CAR.D$: K = K + .5: METER = METER + AX: GOTO PO
   IF A$ = CHR$(0) + "M" THEN AX = AX + 2: X = X + AX: X = X + .2: DF$ = CAR.R$: J = J + .5: METER = METER + AX: GOTO PO
   IF A$ = CHR$(0) + "K" THEN AX = AX + 2: X = X - AX: X = X - .2: DF$ = CAR.L$: J = J - .5: METER = METER + AX: GOTO PO
   IF AX < 0 THEN AX = 0
   AX = AX - .2
PO:
   Y = Y + K
   X = X + J
   PSET (X, Y), 15
   DRAW "C15"
   DRAW DF$
   LINE (1, 1)-(AX * 30, 5), 12, BF
   FOR N = 1 TO TM
   NEXT N
   GOTO START
   END
RESULTS:
   FOR CH = 1 TO 198
   IF POINT(CH, 9) = 0 THEN GOTO PRINTEM
   NEXT
PRINTEM:
   CLS
   COLOR 14
   PRINT "METERS PASSED(ENGINE):"; CINT(METER)
   PRINT "MAX SPEED:"; CINT(CH); "KM/H"
   ON ERROR GOTO SORRY
   LET ZA = CH / METER
   ON ERROR GOTO SORRY
   END
SORRY:
   CLS
   COLOR 14
   PRINT "YOU DIDN'T EVEN MOVE!"
   END

