    CLS
    COLOR 8
    PRINT"Choose your type of CPU:"
    COLOR 7
    PRINT"1.Fast(Pentium 133 or higher)"
    PRINT"2.Medium(386-486DX)"
    PRINT"3.Slow(286SX)"
    PRINT"4.Very dumb(VECTOR)"
    COLOR 4
    ?""
    INPUT"Enter number:",L
    IF L=1 THEN X=1:GOTO AM
    IF L=2 THEN X=2:GOTO AM
    IF L=3 THEN X=3:GOTO AM
    IF L=4 THEN X=5:GOTO AM
    COLOR 14
    ?""
    PRINT"So, you don't have a CPU!"
    ON ERROR GOTO ST
    NAME"KARAKUS" AS "COOLAKUS"
    ON ERROR GOTO ST
    END
AM:
    CLS
    SCREEN 12
'DIMS
    DIM TEXT1(10000)
    DIM TEXT2(10000)
    DIM TEXT3(10000)
    DIM TEXT4(10000)
    DIM TEXT5(10000)
'END DIMS
    ?""
    COLOR 14
    PRINT" Dos Cover PLUS! Upgrade design"
    color 4
    PRINT"      Vorobiov Stanislav"
    PRINT"        Zlotsckiy Anton"
    ?""
    ?""
    LOCATE 6,1
    color 14
    PRINT" 3D & 2D design and interactive stuff"
    COLOR 4
    PRINT"           Zlotsckiy Anton"
    PRINT"         Vorobiov Stanislav"
    ?""
    ?""
    color 14
    PRINT"      Web design & readme notes"
    color 4
    print" Zlotsckiy Anton & Vorobiov Stanislav"
    ?""
    ?""
    COLOR 14
    PRINT" Games ideas and programming"
    COLOR 4
    PRINT"     Vorobiov Stanislav"
    print"       Zlotsckiy Anton"
    ?""
    ?""
    COLOR 11
    PRINT"            Copyright(C) in 1999y"
    PRINT" All rights and other dumb stuff are reserved"
'GET IT IN
    GET(0,10)-(250,69),TEXT1
    GET(0,70)-(300,140),TEXT2
    GET(0,150)-(300,200),TEXT3
    GET(0,220)-(300,280),TEXT4
    GET(0,300)-(360,360),TEXT5
'STOP!!!
    CLS
    Z=400
START:
'GO
   DO
   PUT(200,Z),TEXT1,PSET
   LET Z=Z-X
   IF INKEY$=CHR$(27) THEN CLS:GOTO ENA
   LOOP UNTIL Z<5
   CLS
   LET Z=400
   DO
   PUT(180,Z),TEXT2,PSET
   IF INKEY$=CHR$(27) THEN CLS:GOTO ENA
   LET Z=Z-X
   LOOP UNTIL Z<5
   CLS
   Z=400
   DO
   PUT(180,Z),TEXT3,PSET
   IF INKEY$=CHR$(27) THEN CLS:GOTO ENA
   LET Z=Z-X
   LOOP UNTIL Z<5
   CLS
   Z=400
   DO
   PUT(200,Z),TEXT4,PSET
   IF INKEY$=CHR$(27) THEN CLS:GOTO ENA
   LET Z=Z-X
   LOOP UNTIL Z<5
   CLS
   Z=400
   DO
   PUT(150,Z),TEXT5,PSET
   IF INKEY$=CHR$(27) THEN CLS:GOTO ENA
   LET Z=Z-X
   LOOP UNTIL Z<5
   CLS
ENA:
   COLOR 9
   LOCATE 15,40
   PRINT"END"
   DELAY 2
   END
ST:
   PRINT"Error at";ERR;": crush"
   DELAY 2
   END
