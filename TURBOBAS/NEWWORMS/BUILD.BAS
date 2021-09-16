   CLS
   SCREEN 12
   DIM PA%(25000)
   DIM PB%(25000)
   DIM PC%(25000)
   X = 320
   Y = 240
   CL = 15
   CLR$ = "WHITE"
   NUM = 15
   NUMQ = 0
   NUMB = 0
   TX$ = "NONE"
   CLQ = 0
   CLRQ$ = "BCKGROUND"
   PAINT (1, 1), 3, 15
   COLOR 15, 3
CURSOR:
   COLOR 14
   LOCATE 1, 2
   PRINT "Status: Cursor                         "
   LOCATE 2, 2
   PRINT "                                       "
   LOCATE 1, 42
   COLOR 10
   PRINT "Line color: "; CLR$; "             "
   LOCATE 2, 42
   PRINT "Coordinates(X,Y):"; X; ","; Y; "      "
   LINE (0, -1)-(639, 32), 15, B
   LINE (0, 35)-(639, 479), 15, B
   LINE (320, 0)-(320, 32), 15
'ACTIONS
   CIRCLE (X, Y), 1, POINT(X, Y)
   LET A$ = INKEY$
   IF A$ = CHR$(27) THEN GOTO ASKME
   IF A$ = "8" OR A$ = CHR$(0) + "H" THEN Y = Y - 4
   IF A$ = "2" OR A$ = CHR$(0) + "P" THEN Y = Y + 4
   IF A$ = "6" OR A$ = CHR$(0) + "M" THEN X = X + 4
   IF A$ = "4" OR A$ = CHR$(0) + "K" THEN X = X - 4
   IF A$ = "7" THEN X = X - 4: Y = Y - 4
   IF A$ = "9" THEN Y = Y - 4: X = X + 4
   IF A$ = "1" THEN X = X - 4: Y = Y + 4
   IF A$ = "3" THEN X = X + 4: Y = Y + 4
   IF A$ = "D" OR A$ = "d" THEN GOTO DRAWA
   IF A$ = "L" OR A$ = "l" THEN GOTO LNA
   IF A$ = "P" OR A$ = "p" THEN GOTO PNT
   IF A$ = "C" OR A$ = "c" THEN GOTO CIRC
   IF A$ = "T" OR A$ = "t" THEN GOTO TPN
   IF A$ = "E" OR A$ = "e" THEN GOTO ERAS
   IF A$ = "B" OR A$ = "b" THEN GOTO BRUSH
   IF A$ = "S" OR A$ = "s" THEN GOTO CS
   IF A$ = "H" OR A$ = "h" OR A$ = CHR$(0) + ";" THEN GOSUB QH
   IF A$ = "O" OR A$ = "o" THEN GOTO OPN
   IF A$ = "G" OR A$ = "g" THEN GOSUB SCSHOT
   IF A$ = "F" OR A$ = "f" THEN GOSUB PUTIT
   IF X > 639 THEN X = X - 4
   IF X < 1 THEN X = X + 4
   IF Y > 479 THEN Y = Y - 4
   IF Y < 35 THEN Y = Y + 4
   CIRCLE (X, Y), 1, 15
   GOTO CURSOR
   END
DRAWA:
   COLOR 14
   LOCATE 1, 2
   PRINT "Status: Usual draw                     "
   LOCATE 2, 2
   PRINT "                                       "
   LOCATE 1, 42
   COLOR 10
   PRINT "Line color: "; CLR$; "             "
   LOCATE 2, 42
   PRINT "Coordinates(X,Y):"; X; ","; Y; "      "
   LINE (0, -1)-(639, 32), 15, B
   LINE (0, 35)-(639, 479), 15, B
   LINE (320, 0)-(320, 32), 15
'ACTIONS
   PSET (X, Y), CL
   LET A$ = INKEY$
   IF A$ = CHR$(27) THEN GOTO ASKME
   IF A$ = CHR$(13) THEN GOTO CURSOR
   IF A$ = "8" OR A$ = CHR$(0) + "H" THEN Y = Y - 1
   IF A$ = "2" OR A$ = CHR$(0) + "P" THEN Y = Y + 1
   IF A$ = "6" OR A$ = CHR$(0) + "M" THEN X = X + 1
   IF A$ = "4" OR A$ = CHR$(0) + "K" THEN X = X - 1
   IF A$ = "7" THEN X = X - 1: Y = Y - 1
   IF A$ = "9" THEN Y = Y - 1: X = X + 1
   IF A$ = "1" THEN X = X - 1: Y = Y + 1
   IF A$ = "3" THEN X = X + 1: Y = Y + 1
   IF A$ = "5" THEN GOTO CHCL
   IF A$ = "N" OR A$ = "n" THEN PSET (X, Y), POINT(X + 1, Y + 1): GOTO CURSOR
   IF A$ = "L" OR A$ = "l" THEN GOTO LNA
   IF A$ = "P" OR A$ = "p" THEN GOTO PNT
   IF A$ = "C" OR A$ = "c" THEN GOTO CIRC
   IF A$ = "T" OR A$ = "t" THEN GOTO TPN
   IF A$ = "E" OR A$ = "e" THEN GOTO ERAS
   IF A$ = "B" OR A$ = "b" THEN GOTO BRUSH
   IF A$ = "S" OR A$ = "s" THEN GOTO CS
   IF A$ = "H" OR A$ = "h" OR A$ = CHR$(0) + ";" THEN GOSUB QH
   IF A$ = "O" OR A$ = "o" THEN GOTO OPN
   IF A$ = "G" OR A$ = "g" THEN GOSUB SCSHOT
   IF A$ = "F" OR A$ = "f" THEN GOSUB PUTIT
   IF X > 639 THEN X = X - 4
   IF X < 1 THEN X = X + 4
   IF Y > 479 THEN Y = Y - 4
   IF Y < 35 THEN Y = Y + 4
   PSET (X, Y), 15
   GOTO DRAWA
   END
CHCL:
   COLOR 9
   LOCATE 2, 2
   PRINT "Enter line color( or ):"; NUM
   LOCATE 1, 42
   COLOR 10
   PRINT "Line color: "; CLR$; "             "
   IF NUM > 15 THEN NUM = 15
   IF NUM < 0 THEN NUM = 0
   LET A$ = INKEY$
   IF A$ = CHR$(0) + "H" OR A$ = "8" THEN NUM = NUM + 1: IF NUM = 1 OR NUM = 4 OR NUM = 12 THEN NUM = NUM + 1
   IF A$ = CHR$(0) + "P" OR A$ = "2" THEN NUM = NUM - 1: IF NUM = 1 OR NUM = 4 OR NUM = 12 THEN NUM = NUM - 1
   IF NUM = 0 THEN CL = 0: CLR$ = "BCKGROUND"
   IF NUM = 2 THEN CL = 2: CLR$ = "GREEN 30%"
   IF NUM = 3 THEN CL = 3: CLR$ = "BLUE 30%"
   IF NUM = 5 THEN CL = 5: CLR$ = "RED"
   IF NUM = 6 THEN CL = 6: CLR$ = "ORANGE"
   IF NUM = 7 THEN CL = 7: CLR$ = "GREY 50%"
   IF NUM = 8 THEN CL = 8: CLR$ = "GREY 100%"
   IF NUM = 9 THEN CL = 9: CLR$ = "BLUE 60%"
   IF NUM = 10 THEN CL = 10: CLR$ = "GREEN 60%"
   IF NUM = 11 THEN CL = 11: CLR$ = "BLUE 20%"
   IF NUM = 13 THEN CL = 13: CLR$ = "PINK 50%"
   IF NUM = 14 THEN CL = 14: CLR$ = "YELLOW"
   IF NUM = 15 THEN CL = 15: CLR$ = "WHITE"
   IF A$ = CHR$(13) THEN GOTO DRAWA
   GOTO CHCL
   END
LNA:
   A = X
   B = Y
LNSA:
   COLOR 14
   LOCATE 1, 2
   PRINT "Status: Moveing line                  "
   LOCATE 2, 2
   PRINT "                                       "
   LOCATE 1, 42
   COLOR 10
   PRINT "Line color: "; CLR$; "             "
   LOCATE 2, 42
   PRINT "Coordinates(X,Y):"; X; ","; Y; "      "
   LINE (0, -1)-(639, 32), 15, B
   LINE (0, 35)-(639, 479), 15, B
   LINE (320, 0)-(320, 32), 15
'ACTIONS
   LINE (A, B)-(X, Y), 3
   LINE (A, B + 1)-(X, Y + 1), 3
   LINE (A, B - 1)-(X, Y - 1), 3
   LET A$ = INKEY$
   IF A$ = CHR$(27) THEN GOTO ASKME
   IF A$ = CHR$(13) THEN LINE (A, B)-(X, Y), CL: LINE (A, B + 1)-(X, Y + 1), CL: LINE (A, B - 1)-(X, Y - 1), CL: GOTO CURSOR
   IF A$ = "8" OR A$ = CHR$(0) + "H" THEN Y = Y - 4
   IF A$ = "2" OR A$ = CHR$(0) + "P" THEN Y = Y + 4
   IF A$ = "6" OR A$ = CHR$(0) + "M" THEN X = X + 4
   IF A$ = "4" OR A$ = CHR$(0) + "K" THEN X = X - 4
   IF A$ = "7" THEN X = X - 4: Y = Y - 4
   IF A$ = "9" THEN Y = Y - 4: X = X + 4
   IF A$ = "1" THEN X = X - 4: Y = Y + 4
   IF A$ = "3" THEN X = X + 4: Y = Y + 4
   IF A$ = "5" THEN GOTO CHCLQ
   IF A$ = "N" OR A$ = "n" THEN GOTO CURSOR
   IF A$ = "D" OR A$ = "d" THEN GOTO DRAWA
   IF A$ = "P" OR A$ = "p" THEN GOTO PNT
   IF A$ = "C" OR A$ = "c" THEN GOTO CIRC
   IF A$ = "T" OR A$ = "t" THEN GOTO TPN
   IF A$ = "E" OR A$ = "e" THEN GOTO ERAS
   IF A$ = "B" OR A$ = "b" THEN GOTO BRUSH
   IF A$ = "S" OR A$ = "s" THEN GOTO CS
   IF A$ = "H" OR A$ = "h" OR A$ = CHR$(0) + ";" THEN GOSUB QH
   IF A$ = "O" OR A$ = "o" THEN GOTO OPN
   IF A$ = "G" OR A$ = "g" THEN GOSUB SCSHOT
   IF A$ = "F" OR A$ = "f" THEN GOSUB PUTIT
   IF X > 639 THEN X = X - 4
   IF X < 1 THEN X = X + 4
   IF Y > 479 THEN Y = Y - 4
   IF Y < 35 THEN Y = Y + 4
   LINE (A, B)-(X, Y), CL
   LINE (A, B + 1)-(X, Y + 1), CL
   LINE (A, B - 1)-(X, Y - 1), CL
   GOTO LNSA
   END
CHCLQ:
   COLOR 9
   LOCATE 2, 2
   PRINT "Enter line color( or ):"; NUM
   LOCATE 1, 42
   COLOR 10
   PRINT "Line color: "; CLR$; "             "
   IF NUM > 15 THEN NUM = 15
   IF NUM < 0 THEN NUM = 0
   LET A$ = INKEY$
   IF A$ = CHR$(0) + "H" OR A$ = "8" THEN NUM = NUM + 1: IF NUM = 1 OR NUM = 4 OR NUM = 12 THEN NUM = NUM + 1
   IF A$ = CHR$(0) + "P" OR A$ = "2" THEN NUM = NUM - 1: IF NUM = 1 OR NUM = 4 OR NUM = 12 THEN NUM = NUM - 1
   IF NUM = 0 THEN CL = 0: CLR$ = "BCKGROUND"
   IF NUM = 2 THEN CL = 2: CLR$ = "GREEN 30%"
   IF NUM = 3 THEN CL = 3: CLR$ = "BLUE 30%"
   IF NUM = 5 THEN CL = 5: CLR$ = "RED"
   IF NUM = 6 THEN CL = 6: CLR$ = "ORANGE"
   IF NUM = 7 THEN CL = 7: CLR$ = "GREY 50%"
   IF NUM = 8 THEN CL = 8: CLR$ = "GREY 100%"
   IF NUM = 9 THEN CL = 9: CLR$ = "BLUE 60%"
   IF NUM = 10 THEN CL = 10: CLR$ = "GREEN 60%"
   IF NUM = 11 THEN CL = 11: CLR$ = "BLUE 20%"
   IF NUM = 13 THEN CL = 13: CLR$ = "PINK 50%"
   IF NUM = 14 THEN CL = 14: CLR$ = "YELLOW"
   IF NUM = 15 THEN CL = 15: CLR$ = "WHITE"
   IF A$ = CHR$(13) THEN GOTO LNSA
   GOTO CHCLQ
   END
PNT:
   COLOR 14
   LOCATE 1, 2
   PRINT "Status: Paint bucket                  "
   LOCATE 2, 2
   PRINT "                                       "
   LOCATE 1, 42
   COLOR 10
   PRINT "Paint color: "; CLRQ$; "             "
   LOCATE 2, 42
   PRINT "Coordinates(X,Y):"; X; ","; Y; "      "
   LINE (0, -1)-(639, 32), 15, B
   LINE (0, 35)-(639, 479), 15, B
   LINE (320, 0)-(320, 32), 15
'ACTIONS
   PSET (X, Y), POINT(X, Y + 1)
   LET A$ = INKEY$
   IF A$ = CHR$(27) THEN GOTO ASKME
   IF A$ = CHR$(13) THEN GOTO APPLY
   IF A$ = "8" OR A$ = CHR$(0) + "H" THEN Y = Y - 4
   IF A$ = "2" OR A$ = CHR$(0) + "P" THEN Y = Y + 4
   IF A$ = "6" OR A$ = CHR$(0) + "M" THEN X = X + 4
   IF A$ = "4" OR A$ = CHR$(0) + "K" THEN X = X - 4
   IF A$ = "7" THEN X = X - 4: Y = Y - 4
   IF A$ = "9" THEN Y = Y - 4: X = X + 4
   IF A$ = "5" THEN GOTO COP
   IF A$ = "1" THEN X = X - 4: Y = Y + 4
   IF A$ = "3" THEN X = X + 4: Y = Y + 4
   IF A$ = "D" OR A$ = "d" THEN GOTO DRAWA
   IF A$ = "L" OR A$ = "l" THEN GOTO LNA
   IF A$ = "C" OR A$ = "c" THEN GOTO CIRC
   IF A$ = "N" OR A$ = "n" THEN GOTO CURSOR
   IF A$ = "T" OR A$ = "t" THEN GOTO TPN
   IF A$ = "E" OR A$ = "e" THEN GOTO ERAS
   IF A$ = "B" OR A$ = "b" THEN GOTO BRUSH
   IF A$ = "S" OR A$ = "s" THEN GOTO CS
   IF A$ = "H" OR A$ = "h" OR A$ = CHR$(0) + ";" THEN GOSUB QH
   IF A$ = "O" OR A$ = "o" THEN GOTO OPN
   IF A$ = "G" OR A$ = "g" THEN GOSUB SCSHOT
   IF A$ = "F" OR A$ = "f" THEN GOSUB PUTIT
   IF X > 639 THEN X = X - 4
   IF X < 1 THEN X = X + 4
   IF Y > 479 THEN Y = Y - 4
   IF Y < 35 THEN Y = Y + 4
   PSET (X, Y), 15
   GOTO PNT
   END
COP:
   COLOR 9
   LOCATE 2, 2
   PRINT "Enter paint color( or ):"; NUMQ
   LOCATE 1, 42
   COLOR 10
   PRINT "Paint color: "; CLRQ$; "             "
   IF NUMQ > 15 THEN NUMQ = 15
   IF NUMQ < 0 THEN NUMQ = 0
   LET A$ = INKEY$
   IF A$ = CHR$(0) + "H" OR A$ = "8" THEN NUMQ = NUMQ + 1: IF NUMQ = 1 OR NUMQ = 4 OR NUMQ = 12 THEN NUMQ = NUMQ + 1
   IF A$ = CHR$(0) + "P" OR A$ = "2" THEN NUMQ = NUMQ - 1: IF NUMQ = 1 OR NUMQ = 4 OR NUMQ = 12 THEN NUMQ = NUMQ - 1
   IF NUMQ = 0 THEN CLQ = 0: CLRQ$ = "BCKGROUND"
   IF NUMQ = 2 THEN CLQ = 2: CLRQ$ = "GREEN 30%"
   IF NUMQ = 3 THEN CLQ = 3: CLRQ$ = "BLUE 30%"
   IF NUMQ = 5 THEN CLQ = 5: CLRQ$ = "RED"
   IF NUMQ = 6 THEN CLQ = 6: CLRQ$ = "ORANGE"
   IF NUMQ = 7 THEN CLQ = 7: CLRQ$ = "GREY 50%"
   IF NUMQ = 8 THEN CLQ = 8: CLRQ$ = "GREY 100%"
   IF NUMQ = 9 THEN CLQ = 9: CLRQ$ = "BLUE 60%"
   IF NUMQ = 10 THEN CLQ = 10: CLRQ$ = "GREEN 60%"
   IF NUMQ = 11 THEN CLQ = 11: CLRQ$ = "BLUE 20%"
   IF NUMQ = 13 THEN CLQ = 13: CLRQ$ = "PINK 50%"
   IF NUMQ = 14 THEN CLQ = 14: CLRQ$ = "YELLOW"
   IF NUMQ = 15 THEN CLQ = 15: CLRQ$ = "WHITE"
   IF A$ = CHR$(13) THEN GOTO PNT
   GOTO COP
   END
APPLY:
   PSET (X, Y), POINT(X, Y + 1)
   PAINT (X, Y), CLQ, CL
   GOTO CURSOR
   END
CIRC:
   LET J = .75
   LET CSA = 1
   LET CSB = 7.28
   PSET (X, Y), POINT(X + 1, Y)
CIRCL:
   COLOR 14
   LOCATE 1, 2
   PRINT "Status: Circle                         "
   LOCATE 2, 2
   PRINT "                                       "
   LOCATE 1, 42
   COLOR 10
   PRINT "Line color: "; CLR$; "             "
   LOCATE 2, 42
   PRINT "Coordinates(X,Y):"; X; ","; Y; "      "
   LINE (0, -1)-(639, 32), 15, B
   LINE (0, 35)-(639, 479), 15, B
   LINE (320, 0)-(320, 32), 15
'ACTIONS
   CIRCLE (X, Y), V, POINT(X + 1, Y + 1), CSA, CSB, J
   LET A$ = INKEY$
   IF A$ = "8" OR A$ = CHR$(0) + "H" THEN Y = Y - 4
   IF A$ = "2" OR A$ = CHR$(0) + "P" THEN Y = Y + 4
   IF A$ = "6" OR A$ = CHR$(0) + "M" THEN X = X + 4
   IF A$ = "4" OR A$ = CHR$(0) + "K" THEN X = X - 4
   IF A$ = "9" THEN V = V + 2
   IF A$ = "7" THEN J = J + .025
   IF A$ = "1" THEN V = V - 2
   IF A$ = "3" THEN J = J - .025
   IF A$ = "5" THEN GOTO CRCL
   IF A$ = "+" THEN CSA = CSA + .1
   IF A$ = "-" THEN CSA = CSA - .1
   IF A$ = "D" OR A$ = "d" THEN GOTO DRAWA
   IF A$ = "L" OR A$ = "l" THEN GOTO LNA
   IF A$ = "N" OR A$ = "n" THEN GOTO CURSOR
   IF A$ = "P" OR A$ = "p" THEN GOTO PNT
   IF A$ = "T" OR A$ = "t" THEN GOTO TPN
   IF A$ = "E" OR A$ = "e" THEN GOTO ERAS
   IF A$ = "B" OR A$ = "b" THEN GOTO BRUSH
   IF A$ = "S" OR A$ = "s" THEN GOTO CS
   IF A$ = "H" OR A$ = "h" OR A$ = CHR$(0) + ";" THEN GOSUB QH
   IF A$ = "O" OR A$ = "o" THEN GOTO OPN
   IF A$ = "G" OR A$ = "g" THEN GOSUB SCSHOT
   IF A$ = "F" OR A$ = "f" THEN GOSUB PUTIT
   IF A$ = CHR$(27) THEN GOTO ASKME
   IF X > 639 THEN X = X - 4
   IF X < 1 THEN X = X + 4
   IF Y > 479 THEN Y = Y - 4
   IF Y < 35 THEN Y = Y + 4
   IF A$ = CHR$(13) THEN LOCATE 2, 2: PRINT "                      ": CIRCLE (X, Y), V, CL, CSA, CSB, J: V = 0: GOTO CURSOR
   CIRCLE (X, Y), V, CL, CSA, CSB, J
   GOTO CIRCL
   END
CRCL:
   COLOR 9
   LOCATE 2, 2
   PRINT "Enter line color( or ):"; NUM
   LOCATE 1, 42
   COLOR 10
   PRINT "Line color: "; CLR$; "             "
   IF NUM > 15 THEN NUM = 15
   IF NUM < 0 THEN NUM = 0
   LET A$ = INKEY$
   IF A$ = CHR$(0) + "H" OR A$ = "8" THEN NUM = NUM + 1: IF NUM = 1 OR NUM = 4 OR NUM = 12 THEN NUM = NUM + 1
   IF A$ = CHR$(0) + "P" OR A$ = "2" THEN NUM = NUM - 1: IF NUM = 1 OR NUM = 4 OR NUM = 12 THEN NUM = NUM - 1
   IF NUM = 0 THEN CL = 0: CLR$ = "BCKGROUND"
   IF NUM = 2 THEN CL = 2: CLR$ = "GREEN 30%"
   IF NUM = 3 THEN CL = 3: CLR$ = "BLUE 30%"
   IF NUM = 5 THEN CL = 5: CLR$ = "RED"
   IF NUM = 6 THEN CL = 6: CLR$ = "ORANGE"
   IF NUM = 7 THEN CL = 7: CLR$ = "GREY 50%"
   IF NUM = 8 THEN CL = 8: CLR$ = "GREY 100%"
   IF NUM = 9 THEN CL = 9: CLR$ = "BLUE 60%"
   IF NUM = 10 THEN CL = 10: CLR$ = "GREEN 60%"
   IF NUM = 11 THEN CL = 11: CLR$ = "BLUE 20%"
   IF NUM = 13 THEN CL = 13: CLR$ = "PINK 50%"
   IF NUM = 14 THEN CL = 14: CLR$ = "YELLOW"
   IF NUM = 15 THEN CL = 15: CLR$ = "WHITE"
   IF A$ = CHR$(13) THEN GOTO CIRCL
   GOTO CRCL
   END
TPN:
   COLOR 14
   LOCATE 1, 2
   PRINT "Status: Texture paint                  "
   LOCATE 2, 2
   PRINT "                                       "
TPR:
   COLOR 9
   LOCATE 2, 2
   PRINT "On what color apply texture(,):"; NUM
   LOCATE 1, 42
   COLOR 10
   PRINT "Paint color: "; CLR$; "             "
   IF NUM > 15 THEN NUM = 15
   IF NUM < 0 THEN NUM = 0
   LET A$ = INKEY$
   IF A$ = CHR$(27) THEN GOTO ASKME
   IF A$ = CHR$(0) + "H" OR A$ = "8" THEN NUM = NUM + 1: IF NUM = 1 OR NUM = 4 OR NUM = 12 THEN NUM = NUM + 1
   IF A$ = CHR$(0) + "P" OR A$ = "2" THEN NUM = NUM - 1: IF NUM = 1 OR NUM = 4 OR NUM = 12 THEN NUM = NUM - 1
   IF NUM = 0 THEN CL = 0: CLR$ = "BCKGROUND"
   IF NUM = 2 THEN CL = 2: CLR$ = "GREEN 30%"
   IF NUM = 3 THEN CL = 3: CLR$ = "BLUE 30%"
   IF NUM = 5 THEN CL = 5: CLR$ = "RED"
   IF NUM = 6 THEN CL = 6: CLR$ = "ORANGE"
   IF NUM = 7 THEN CL = 7: CLR$ = "GREY 50%"
   IF NUM = 8 THEN CL = 8: CLR$ = "GREY 100%"
   IF NUM = 9 THEN CL = 9: CLR$ = "BLUE 60%"
   IF NUM = 10 THEN CL = 10: CLR$ = "GREEN 60%"
   IF NUM = 11 THEN CL = 11: CLR$ = "BLUE 20%"
   IF NUM = 13 THEN CL = 13: CLR$ = "PINK 50%"
   IF NUM = 14 THEN CL = 14: CLR$ = "YELLOW"
   IF NUM = 15 THEN CL = 15: CLR$ = "WHITE"
   IF A$ = CHR$(13) THEN GOTO PAIN
   GOTO TPR
   END
PAIN:
   LOCATE 2, 2
   PRINT "                                       "
PNA:
   COLOR 9
   LOCATE 2, 2
   PRINT "Enter texture( or ):"; NUMB
   LOCATE 1, 42
   COLOR 10
   PRINT "Texture type: "; TX$; "             "
   IF NUMB > 13 THEN NUMB = 13
   IF NUMB < 0 THEN NUMB = 0
   LET A$ = INKEY$
   IF A$ = CHR$(0) + "H" OR A$ = "8" THEN NUMB = NUMB + 1
   IF A$ = CHR$(0) + "P" OR A$ = "2" THEN NUMB = NUMB - 1
   IF A$ = CHR$(13) THEN GOTO DOO
   IF NUMB = 0 THEN TX$ = "NONE"
   IF NUMB = 1 THEN TX$ = "POINTS"
   IF NUMB = 2 THEN TX$ = "SQUARES"
   IF NUMB = 3 THEN TX$ = "MULTI-T"
   IF NUMB = 4 THEN TX$ = "ERASER"
   IF NUMB = 5 THEN TX$ = "GRASS"
   IF NUMB = 6 THEN TX$ = "MEGAPAINT"
   IF NUMB = 7 THEN TX$ = "GREENS"
   IF NUMB = 8 THEN TX$ = "CIRCULAR"
   IF NUMB = 9 THEN TX$ = "CRC_SMALL"
   IF NUMB = 10 THEN TX$ = "NIGHT"
   IF NUMB = 11 THEN TX$ = "LAWN"
   IF NUMB = 12 THEN TX$ = "B_SQUARES"
   IF NUMB = 13 THEN TX$ = "MILITARY"
   GOTO PNA
   END
DOO:
   IF NUMB = 0 THEN GOTO CURSOR
   FOR TRU = 1 TO 638 STEP 2
   FOR TRA = 36 TO 478 STEP 2
   IF POINT(TRU, TRA) = CL AND NUMB = 3 THEN PSET (TRU, TRA), CL: DRAW "C15 E1 C7 F1 C9 G1 C5 H1 BR2"
   IF POINT(TRU, TRA) = CL AND NUMB = 1 THEN PSET (TRU, TRA), CL + 3
   IF POINT(TRU, TRA) = CL AND NUMB = 2 THEN PSET (TRU, TRA), CL: DRAW "C14 E1 H1 G1 F1"
   IF NUMB = 4 THEN GOTO SUPR
   IF POINT(TRU, TRA) = CL AND NUMB = 5 THEN PSET (TRU, TRA), CL: DRAW "C2 E2"
   IF NUMB = 6 THEN GOTO MEGAT
   IF POINT(TRU, TRA) = CL AND NUMB = 7 THEN PSET (TRU, TRA), CL: DRAW "C2 E1"
   IF POINT(TRU, TRA) = CL AND NUMB = 8 THEN CIRCLE (TRU, TRA), 3, 10
   IF POINT(TRU, TRA) = CL AND NUMB = 9 THEN CIRCLE (TRU, TRA), 2, CL + 3
   IF NUMB = 10 THEN GOTO NIGHT
   IF POINT(TRU, TRA) = CL AND NUMB = 11 THEN PSET (TRU, TRA), CL: DRAW "C2 U3"
   IF NUMB = 12 THEN GOTO BSQ
   IF NUMB = 13 THEN GOTO MILI
   NEXT
   NEXT
   GOTO CURSOR
SUPR:
   FOR TRU = 1 TO 638
   FOR TRA = 36 TO 478
   IF POINT(TRU, TRA) = CL THEN PSET (TRU, TRA), 3
   NEXT
   NEXT
   GOTO CURSOR
   END
MEGAT:
   RANDOMIZE TIMER
   FOR TRU = 1 TO 640 STEP 2.5
   FOR TRA = 1 TO 480 STEP 1.5
   NOZ% = INT(RND * 16)
   NIZ% = INT(RND * 16)
   IF NIZ% = 1 OR NIZ% = 4 THEN NIZ% = 5
   IF POINT(TRU, TRA) = CL AND NOZ% = 2 THEN PSET (TRU, TRA), NIZ%
   NEXT
   NEXT
   GOTO CURSOR
   END
NIGHT:
    RANDOMIZE TIMER
    FOR NIT = 1 TO 100
    TRANS% = INT(RND * 2)
    IF TRANS% = 0 THEN TRANS% = CL
    IF TRANS% = 1 THEN TRANS% = CL + 3
    TRUPP% = INT(RND * 640)
    TRUP% = INT(RND * 260)
    PSET (TRUPP%, TRUP% + 50), TRANS%
    NEXT NIT
    GOTO CURSOR
    END
BSQ:
    FOR TRU = 1 TO 640 STEP 8
    FOR TRA = 1 TO 480 STEP 8
    IF POINT(TRU, TRA) = CL THEN PSET (TRU, TRA), CL: DRAW "C7 E3 H3 G3 F3 U5 D2 L2 R5"
    NEXT
    NEXT
    GOTO CURSOR
    END
MILI:
    FOR TRU = 1 TO 640 STEP 4
    FOR TRA = 1 TO 480 STEP 4
    IF POINT(TRU, TRA) = CL THEN PSET (TRU, TRA), CL: DRAW "C5 U2 F3 L3 E1"
    NEXT
    NEXT
    GOTO CURSOR
    END
ERAS:
   COLOR 14
   LOCATE 1, 2
   PRINT "Status: Eraser                         "
   LOCATE 2, 2
   PRINT "                                       "
   LOCATE 1, 42
   COLOR 10
   PRINT "Line color: "; CLR$; "             "
   LOCATE 2, 42
   PRINT "Coordinates(X,Y):"; X; ","; Y; "      "
   LINE (0, -1)-(639, 32), 15, B
   LINE (0, 35)-(639, 479), 15, B
   LINE (320, 0)-(320, 32), 15
'ACTIONS
   LINE (X - 6, Y - 8)-(X + 6, Y + 8), 3, BF
   LET A$ = INKEY$
   IF A$ = CHR$(13) THEN GOTO CURSOR
   IF A$ = CHR$(27) THEN GOTO ASKME
   IF A$ = "8" OR A$ = CHR$(0) + "H" THEN Y = Y - 4
   IF A$ = "2" OR A$ = CHR$(0) + "P" THEN Y = Y + 4
   IF A$ = "6" OR A$ = CHR$(0) + "M" THEN X = X + 4
   IF A$ = "4" OR A$ = CHR$(0) + "K" THEN X = X - 4
   IF A$ = "7" THEN X = X - 4: Y = Y - 4
   IF A$ = "9" THEN Y = Y - 4: X = X + 4
   IF A$ = "1" THEN X = X - 4: Y = Y + 4
   IF A$ = "3" THEN X = X + 4: Y = Y + 4
   IF A$ = "D" OR A$ = "d" THEN GOTO DRAWA
   IF A$ = "L" OR A$ = "l" THEN GOTO LNA
   IF A$ = "P" OR A$ = "p" THEN GOTO PNT
   IF A$ = "C" OR A$ = "c" THEN GOTO CIRC
   IF A$ = "T" OR A$ = "t" THEN GOTO TPN
   IF A$ = "N" OR A$ = "n" THEN GOTO CURSOR
   IF A$ = "B" OR A$ = "b" THEN GOTO BRUSH
   IF A$ = "S" OR A$ = "s" THEN GOTO CS
   IF A$ = "H" OR A$ = "h" OR A$ = CHR$(0) + ";" THEN GOSUB QH
   IF A$ = "O" OR A$ = "o" THEN GOTO OPN
   IF A$ = "G" OR A$ = "g" THEN GOSUB SCSHOT
   IF A$ = "F" OR A$ = "f" THEN GOSUB PUTIT
   IF X > 633 THEN X = X - 4
   IF (X - 6) < -1 THEN X = X + 4
   IF Y > 472 THEN Y = Y - 4
   IF Y < 43 THEN Y = Y + 4
   LINE (X - 6, Y - 8)-(X + 6, Y + 8), 15, BF
   GOTO ERAS
   END
BRUSH:
   SIZ = 1
BRISH:
   COLOR 14
   LOCATE 1, 2
   PRINT "Status: Brush draw                     "
   LOCATE 2, 2
   PRINT "                                       "
   LOCATE 1, 42
   COLOR 10
   PRINT "Line color: "; CLR$; "             "
   LOCATE 2, 42
   PRINT "Coordinates(X,Y):"; X; ","; Y; "      "
   LINE (0, -1)-(639, 32), 15, B
   LINE (0, 35)-(639, 479), 15, B
   LINE (320, 0)-(320, 32), 15
'ACTIONS
   CIRCLE (X, Y), SIZ, CL
   LET A$ = INKEY$
   IF A$ = CHR$(13) THEN GOTO CURSOR
   IF A$ = CHR$(27) THEN GOTO ASKME
   IF A$ = "8" OR A$ = CHR$(0) + "H" THEN Y = Y - 1
   IF A$ = "2" OR A$ = CHR$(0) + "P" THEN Y = Y + 1
   IF A$ = "6" OR A$ = CHR$(0) + "M" THEN X = X + 1
   IF A$ = "4" OR A$ = CHR$(0) + "K" THEN X = X - 1
   IF A$ = "7" THEN X = X - 1: Y = Y - 1
   IF A$ = "9" THEN Y = Y - 1: X = X + 1
   IF A$ = "1" THEN X = X - 1: Y = Y + 1
   IF A$ = "3" THEN X = X + 1: Y = Y + 1
   IF A$ = "5" THEN GOTO CHCLM
   IF A$ = "+" THEN SIZ = SIZ + 1
   IF A$ = "-" THEN SIZ = SIZ - 1
   IF A$ = "N" OR A$ = "n" THEN CIRCLE (X, Y), SIZ, CL: GOTO CURSOR
   IF A$ = "L" OR A$ = "l" THEN GOTO LNA
   IF A$ = "P" OR A$ = "p" THEN GOTO PNT
   IF A$ = "D" OR A$ = "d" THEN GOTO DRAWA
   IF A$ = "C" OR A$ = "c" THEN GOTO CIRC
   IF A$ = "T" OR A$ = "t" THEN GOTO TPN
   IF A$ = "E" OR A$ = "e" THEN GOTO ERAS
   IF A$ = "S" OR A$ = "s" THEN GOTO CS
   IF A$ = "H" OR A$ = "h" OR A$ = CHR$(0) + ";" THEN GOSUB QH
   IF A$ = "O" OR A$ = "o" THEN GOTO OPN
   IF A$ = "G" OR A$ = "g" THEN GOSUB SCSHOT
   IF A$ = "F" OR A$ = "f" THEN GOSUB PUTIT
   IF X > 639 THEN X = X - 4
   IF X < 1 THEN X = X + 4
   IF Y > 479 THEN Y = Y - 4
   IF Y < 35 THEN Y = Y + 4
   CIRCLE (X, Y), SIZ, CL
   GOTO BRISH
   END
CHCLM:
   COLOR 9
   LOCATE 2, 2
   PRINT "Enter line color( or ):"; NUM
   LOCATE 1, 42
   COLOR 10
   PRINT "Line color: "; CLR$; "             "
   IF NUM > 15 THEN NUM = 15
   IF NUM < 0 THEN NUM = 0
   LET A$ = INKEY$
   IF A$ = CHR$(0) + "H" OR A$ = "8" THEN NUM = NUM + 1: IF NUM = 1 OR NUM = 4 OR NUM = 12 THEN NUM = NUM + 1
   IF A$ = CHR$(0) + "P" OR A$ = "2" THEN NUM = NUM - 1: IF NUM = 1 OR NUM = 4 OR NUM = 12 THEN NUM = NUM - 1
   IF NUM = 0 THEN CL = 0: CLR$ = "BCKGROUND"
   IF NUM = 2 THEN CL = 2: CLR$ = "GREEN 30%"
   IF NUM = 3 THEN CL = 3: CLR$ = "BLUE 30%"
   IF NUM = 5 THEN CL = 5: CLR$ = "RED"
   IF NUM = 6 THEN CL = 6: CLR$ = "ORANGE"
   IF NUM = 7 THEN CL = 7: CLR$ = "GREY 50%"
   IF NUM = 8 THEN CL = 8: CLR$ = "GREY 100%"
   IF NUM = 9 THEN CL = 9: CLR$ = "BLUE 60%"
   IF NUM = 10 THEN CL = 10: CLR$ = "GREEN 60%"
   IF NUM = 11 THEN CL = 11: CLR$ = "BLUE 20%"
   IF NUM = 13 THEN CL = 13: CLR$ = "PINK 50%"
   IF NUM = 14 THEN CL = 14: CLR$ = "YELLOW"
   IF NUM = 15 THEN CL = 15: CLR$ = "WHITE"
   IF A$ = CHR$(13) THEN GOTO BRISH
   GOTO CHCLM
   END
CS:
   COLOR 5
   LOCATE 2, 2
   PRINT "Do you want to clear the screen ?(Y/N)"
   LET A$ = INKEY$
   IF A$ = "Y" OR A$ = "y" THEN CLS : PAINT (320, 240), 3, 15: GOTO CURSOR
   IF A$ = "N" OR A$ = "n" THEN GOTO CURSOR
   GOTO CS
   END
SCSHOT:
   GET (0, 35)-(213, 479), PA%
   GET (214, 35)-(427, 479), PB%
   GET (428, 35)-(639, 479), PC%
   COLOR 10
   LOCATE 2, 2
   PRINT "Screenshot was taken!"
   DELAY 1.2
   RETURN
   END
PUTIT:
   COLOR 10
   LOCATE 2, 2
   PRINT "Import screenshot image ?(Y/N)"
   LET A$ = INKEY$
   IF A$ = "Y" OR A$ = "y" THEN GOTO DROP
   IF A$ = "N" OR A$ = "n" THEN RETURN
   GOTO PUTIT
   RETURN
   END
DROP:
   ON ERROR GOTO NOD
   PUT (0, 35), PA%, PSET
   ON ERROR GOTO NOD
   PUT (214, 35), PB%, PSET
   ON ERROR GOTO NOD
   PUT (428, 35), PC%, PSET
   ON ERROR GOTO NOD
AFG:
   RETURN
   END
NOD:
   COLOR 4
   LOCATE 2, 2
   PRINT "Screenshot wasn't taken!          "
   DELAY 1.2
   RESUME AFG
   END
QH:
   GET (0, 35)-(213, 479), PA%
   GET (214, 35)-(427, 479), PB%
   GET (428, 35)-(639, 479), PC%
   CLS
HL:
   LINE (0, 0)-(639, 479), 5, BF
   LINE (10, 10)-(629, 469), 3, BF
   LINE (10, 10)-(629, 469), 0, BF
   LINE (10, 10)-(629, 469), 15, B
   COLOR 15, 8
'HELP1
   COLOR 10
   LOCATE 2, 30
   PRINT "QUICK HELP ABOUT WORKING!"
   LOCATE 3, 3
   COLOR 11
   PRINT "This editor got 10 different tools, I'll now describe them:"
   COLOR 14
   LOCATE 4, 3
   PRINT "CURSOR-DEFAULT MODE(NO DRAW),CAN BE CALLED FROM OTHER TOOLS BY PUSHING 'N'"
   LOCATE 5, 3
   PRINT "USUAL DRAW-JUST PRESS 'D' AND YOU CAN DRAW WITH A POINT(1 PIXEL)"
   LOCATE 6, 3
   PRINT "PRESS '5' AND CHOSE COLOR. PRESS ENTER OR 'N' TO RETURN TO THE CURSOR"
   LOCATE 7, 3
   PRINT "LINE-PRESS 'L' AND CHANGE THE LINE, PRESS '5' TO CHANGE COLOR, ENT TO ACCEPT"
   LOCATE 8, 3
   PRINT "PAINT-PRESS 'P' AND CHOSE THE POINT OF PAINT, PRESS '5' TO CHANGE THE COLOR"
   LOCATE 9, 3
   PRINT "OF PAINT, PRESS ENT TO PAINT IT UP. NOTE: PRESS     RIGHT NOW FOR MORE INFO"
   LOCATE 10, 3
   PRINT "CIRCLE-PRESS 'C' USE 7,9,3,1,-,+ TO CHANGE THE CIRCLE, 8,6,4,2 OR ARROWS"
   LOCATE 11, 3
   PRINT "TO MOVE IT, PRESS '5' TO CHANGE THE COLOR, ENTER TO ACCEPT"
   LOCATE 12, 3
   PRINT "TEXTURE-PRESS 'T' AND CHANGE THE COLOR(THE TEXTURE WILL APPLY ONLY ON THAT"
   LOCATE 13, 3
   PRINT "COLOR),AFTER THAT CHOSE THE TEXTURE AND PRESS ENTER(TEXTURE 0-CANCEL)"
   LOCATE 14, 3
   PRINT "ERASER-PRESS 'E' AND ERASE SOMETHING, PRESS ENTER TO RETURN TO THE CURSOR"
   LOCATE 15, 3
   PRINT "BRUSH-PRESS 'B' AND DRAW, PRESS '5' TO CHANGE COLOR, -,+ TO CHANGE THE SIZE"
   LOCATE 16, 3
   PRINT "CLEAR SCREEN-PRESS 'S' AND SCREEN WILL BE CLEAN"
   LOCATE 17, 3
   PRINT "QUICK HELP-PRESS 'H' OR F1 FOR THIS QUICK HELP"
   LOCATE 18, 3
   PRINT "OPEN-PRESS 'O' AND YOU CAN OPEN YOUR EARLIER SAVED LEVEL AND EDIT IT"
   LOCATE 19, 3
   PRINT "JUST ENTER FILENAME(WITHOUT AN EXTENSION) WAIT A MOMENT AND THAT'S IT"
   LOCATE 20, 3
   PRINT "SCREENSHOT-PRESS 'G' AND YOU'LL PUT SCREEN'S CONTENT INTO MEMORY"
   LOCATE 21, 3
   PRINT "PRESS 'F' AND YOU CAN PUT MEMORY'S CONTENT ON SCREEN"
   COLOR 12
   LOCATE 23, 3
   PRINT "PRESS ESC AND VIEW SOME MORE HELP(NO, THIS IS NOT QUICK HELP)"
   LOCATE 9, 51
   COLOR 4
   PRINT "'P'"
'HELP1
TST:
   LET A$ = INKEY$
   IF A$ = CHR$(27) THEN GOTO HLDVA
   IF A$ = "P" OR A$ = "p" THEN GOTO PNHELP
   GOTO TST
HLDVA:
'HELP2
   CLS
   LINE (0, 0)-(639, 479), 5, BF
   LINE (10, 10)-(629, 469), 3, BF
   LINE (10, 10)-(629, 469), 0, BF
   LINE (10, 10)-(629, 469), 15, B
   COLOR 10
   LOCATE 2, 30
   PRINT "HOW TO WORK IN WORMS BUILDER"
   COLOR 7
   LOCATE 3, 3
   PRINT "WORKING KEYS OF WORMS BUILDER:"
   COLOR 8
   LOCATE 5, 3
   PRINT "NUMPAD    ARROWS      KEYS"
   LOCATE 6, 3
   PRINT "7 8 9 -             N P E F1 ENTER"
   LOCATE 7, 3
   PRINT "4 5 6 +            D C B H O"
   LOCATE 8, 3
   PRINT "1 2 3             L T S G F ESC"
   LOCATE 8, 17
   PRINT CHR$(26)
   COLOR 6
   LOCATE 10, 3
   PRINT "WHEN YOU'RE WORKING YOU MUST REMEMBER:"
   LOCATE 10, 42
   COLOR 12
   PRINT "NUM LOCK MUST BE ON"
   COLOR 6
   LOCATE 11, 3
   PRINT "NUMLOCK MUST BE ON IF YOU WANT TO WORK ON NUMPAD(IT'S MUCH COMFORTABLE)"
   LOCATE 12, 3
   PRINT "ARROWS ARE SAME AS 8,4,6,2(NUMPAD) AND ENTER IS ACCEPT KEY"
   LOCATE 13, 3
   PRINT "IF YOU ARE IN SOME MODE(EXAMPLE:PAINT)AND YOU WANT TO QUIT IT, THEN PRESS"
   LOCATE 14, 3
   PRINT "ANY LETTER(EXAMPLE: N,D,L,C,ETC.) AND CURRENT MODE WILL BE CANCELED"
   LOCATE 15, 3
   PRINT "'5' IS COLOR CHOSING KEY, CHOSE COLOR WITH 8 AND 2 OR  AND , PRESS ENTER"
   LOCATE 16, 3
   PRINT "TO ACCEPT. -,+ CAN BE USED IN CIRCLE AND BRUSH."
   LOCATE 17, 3
   PRINT "IN UPPER PANEL THERE ARE COORDINATES(X,Y) OF YOUR CURSOR AND COLOR OF"
   LOCATE 18, 3
   PRINT "LINE OR PAINT OR TEXTURE NAME. STATUS SHOWS YOUR ACTION.(EXAMPLE: BRUSH)"
   LOCATE 19, 3
   PRINT "ALL QUESTIONS ARE AT THE TOP TOO. I WILL NOT DESCRIBE TO YOU HOW TO SAVE"
   LOCATE 20, 3
   PRINT "OR OPEN YOUR LEVEL - IT'S TOO EASY. GOOD LUCK AND CREATE SOME COOL LEVEL!"
   LOCATE 22, 3
   COLOR 14
   PRINT "PRESS ESCAPE!"
'HELP2
   DO
   LOOP UNTIL INKEY$ = CHR$(27)
   CLS
'HELP4
   LINE (0, 0)-(639, 479), 5, BF
   LINE (10, 10)-(629, 469), 3, BF
   LINE (10, 10)-(629, 469), 0, BF
   LINE (10, 10)-(629, 469), 15, B
   COLOR 14
   LOCATE 2, 35
   PRINT "Copyright!"
   COLOR 10
   LOCATE 4, 3
   PRINT "Copyright(C) Vorobiov Stanislav, 2000y"
   LOCATE 5, 3
   PRINT "Enjoy my Worms builder and create your own cool levels!"
   COLOR 4
   LOCATE 7, 3
   PRINT "PRESS ESCAPE!"
'HELP4
   DO
   LOOP UNTIL INKEY$ = CHR$(27)
   COLOR 15, 3
   CLS
   PUT (0, 35), PA%, PSET
   PUT (214, 35), PB%, PSET
   PUT (428, 35), PC%, PSET
   RETURN
   END
PNHELP:
   CLS
   LINE (0, 0)-(639, 479), 5, BF
   LINE (10, 10)-(629, 469), 3, BF
   LINE (10, 10)-(629, 469), 0, BF
   LINE (10, 10)-(629, 469), 15, B
'HELP3
   LOCATE 2, 20
   COLOR 10
   PRINT "SOME IMPORTANT INFO ABOUT USING PAINT TOOL!"
   LINE (50, 50)-(100, 100), 3, BF
   LINE (50, 50)-(100, 100), 15, B
   LINE (53, 53)-(90, 70), 14
   LINE (90, 70)-(95, 98), 14
   LINE (95, 98)-(53, 53), 14
   PAINT (75, 75), 8, 14
   LINE (110, 50)-(160, 100), 8, BF
   LINE (110, 50)-(160, 100), 15, B
   LINE (113, 53)-(150, 70), 14
   LINE (150, 70)-(155, 98), 6
   LINE (155, 98)-(113, 53), 2
   LINE (170, 50)-(220, 100), 8, BF
   LINE (170, 50)-(220, 100), 15, B
   LINE (173, 53)-(210, 70), 14
   LINE (210, 70)-(215, 98), 14
   LINE (215, 98)-(173, 53), 14
   LINE (215, 98)-(200, 83), 8
   PSET (85, 75), 15
   PSET (145, 75), 15
   PSET (205, 75), 15
   COLOR 6
   LOCATE 8, 8
   PRINT "PIC 1  PIC 2   PIC 3"
   COLOR 2
   LOCATE 9, 3
   PRINT "On those pictures white point is the point of paint,grey is a paint color"
   LOCATE 10, 3
   PRINT "blue is a background color."
   COLOR 4
   LOCATE 11, 3
   PRINT "On PIC 1 paint operation was successful(Figure is grey, background is ok)"
   LOCATE 12, 3
   PRINT "On PIC 2 and PIC 3 paint operation went wrong(Everything is grey), why ?"
   COLOR 11
   LOCATE 14, 3
   PRINT "WHEN YOU'RE PAINTING A FIGURE, IT'S LINES MUST HAVE THE SAME COLOR"
   LOCATE 15, 3
   PRINT "THEY MUSTN'T HAVE ANY BREAKES AND LINE COLOR MUST BE = FIGURE'S LINE COLOR"
   LOCATE 16, 3
   PRINT "FOR EXAMPLE I DRAW A TRIANGLE WITH YELLOW LINES, I LOOK ON UPPER PANEL"
   LOCATE 17, 3
   PRINT "I SEE 'LINE COLOR: YELLOW'. I PRESS 'P', MOVE THE CURSOR INTO THE FIGURE"
   LOCATE 18, 3
   PRINT "PRESS '5' CHOSE 'GREY 100%' AND PRESS ENTER."
   COLOR 13
   LOCATE 20, 3
   PRINT "DON'T MAKE ANY MISTAKES WHILE USING PAINT BUCKET!!!"
   LOCATE 21, 3
   PRINT "PRESS ESCAPE"
'HELP3
   DO
   LOOP UNTIL INKEY$ = CHR$(27)
   CLS
   GOTO HL
   END
ERT:
   LOCATE 2, 2
   PRINT "                                     "
   RESUME FILEN
   END
ERZ:
   LOCATE 2, 2
   PRINT "No such file or file error!          "
   DELAY 1.5
   RESUME CURSOR
   END
ASKME:
   COLOR 4
   LOCATE 2, 2
   PRINT "Do you really want to quit ?(Y/N)"
   LET A$ = INKEY$
   IF A$ = "Y" OR A$ = "y" THEN GOTO BEASK
   IF A$ = "N" OR A$ = "n" THEN GOTO CURSOR
   GOTO ASKME
   END
BEASK:
   COLOR 4
   LOCATE 2, 2
   PRINT "Do you want to save your level ?(Y/N)"
   LET A$ = INKEY$
   IF A$ = "Y" OR A$ = "y" THEN GOTO SAVA
   IF A$ = "N" OR A$ = "n" THEN END
   GOTO BEASK
   END
SAVA:
   COLOR 11
   LOCATE 2, 2
   PRINT "Chose start location for RED WORM    "
PROGA:
   PSET (X, Y), POINT(X, Y + 1)
   LET A$ = INKEY$
   IF A$ = "8" OR A$ = CHR$(0) + "H" THEN Y = Y - 4
   IF A$ = "2" OR A$ = CHR$(0) + "P" THEN Y = Y + 4
   IF A$ = "6" OR A$ = CHR$(0) + "M" THEN X = X + 4
   IF A$ = "4" OR A$ = CHR$(0) + "K" THEN X = X - 4
   IF A$ = CHR$(27) THEN XR = X: YR = Y: GOTO PROGB
   PSET (X, Y), 15
   FOR N = 1 TO 500
   NEXT N
   GOTO PROGA
   END
PROGB:
   CIRCLE (X, Y), 2, 4
   DELAY 1
   CIRCLE (X, Y), 2, 3
   COLOR 11
   LOCATE 2, 2
   PRINT "Chose start location for BLUE WORM   "
   X = X + 4
POG:
   PSET (X, Y), POINT(X, Y + 1)
   LET A$ = INKEY$
   IF A$ = "8" OR A$ = CHR$(0) + "H" THEN Y = Y - 4
   IF A$ = "2" OR A$ = CHR$(0) + "P" THEN Y = Y + 4
   IF A$ = "6" OR A$ = CHR$(0) + "M" THEN X = X + 4
   IF A$ = "4" OR A$ = CHR$(0) + "K" THEN X = X - 4
   IF A$ = CHR$(27) THEN XB = X: YB = Y: CIRCLE (X, Y), 2, 1: DELAY 1: CIRCLE (X, Y), 2, 3: GOTO FILEN
   PSET (X, Y), 15
   FOR N = 1 TO 500
   NEXT N
   GOTO POG
   END
FILEN:
   COLOR 11
   LOCATE 1, 2
   PRINT "Enter filename(Without an extension):"
   LOCATE 2, 2
   PRINT "                                     "
   LOCATE 2, 2
   COLOR 4
   INPUT "Û", NAM$
'START WRITING
   ON ERROR GOTO ERT
   OPEN NAM$ + ".MAP" FOR OUTPUT AS #1
   ON ERROR GOTO ERT
   CLOSE #1
   ON ERROR GOTO ERT
'DOO
   LOCATE 2, 2
   COLOR 4
   PRINT "Wait! Saving level!                  "
   GET (0, 35)-(213, 479), PA%
   GET (214, 35)-(427, 479), PB%
   GET (428, 35)-(639, 479), PC%
   OPEN NAM$ + ".MAP" FOR APPEND AS #1
   PRINT #1, XR
   PRINT #1, YR
   PRINT #1, XB
   PRINT #1, YB
   FOR ION = 0 TO 25000
   PRINT #1, PA%(ION)
   NEXT ION
   FOR ION = 0 TO 25000
   PRINT #1, PB%(ION)
   NEXT ION
   FOR ION = 0 TO 25000
   PRINT #1, PC%(ION)
   NEXT ION
   CLOSE #1
   LOCATE 2, 2
   COLOR 4
   PRINT "Done!                                "
   DELAY 1.5
   END
OPN:
   COLOR 4
   LOCATE 1, 2
   PRINT "File to open(without an extension):"
   LOCATE 2, 2
   COLOR 14
   INPUT "Û", NAM$
'LOAD IT
   LOCATE 2, 2
   COLOR 14
   PRINT "Wait! Opening file!                "
   ON ERROR GOTO ERZ
   OPEN NAM$ + ".MAP" FOR INPUT AS #1
   ON ERROR GOTO ERZ
   INPUT #1, XR
   INPUT #1, YR
   INPUT #1, XB
   INPUT #1, YB
   FOR ION = 0 TO 25000
   INPUT #1, PA%(ION)
   NEXT ION
   FOR ION = 0 TO 25000
   INPUT #1, PB%(ION)
   NEXT ION
   FOR ION = 0 TO 25000
   INPUT #1, PC%(ION)
   NEXT ION
   CLOSE #1
   ON ERROR GOTO ERZ
'DRAW IT
   PUT (0, 35), PA%, PSET
   PUT (214, 35), PB%, PSET
   PUT (428, 35), PC%, PSET
   GOTO CURSOR
   END









