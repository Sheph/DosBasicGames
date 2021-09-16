SCREEN 12
DIM MN(3700)
COLOR 4,1
'PAINT(1,479),1,15
LOCATE 1, 1: PRINT "      Ž¯æ¨¨"
msglen = LEN("3D Virtual Pong")
DIM a(msglen * 8, 32)
FOR titlex = 0 TO msglen * 8
    FOR titley = 0 TO 32
    a(titlex, titley) = POINT(titlex, titley)
    NEXT titley
NEXT titlex
CLS
PAINT(1,1),2,15
FOR titlex = 0 TO msglen * 8
    FOR titley = 0 TO 32
    IF a(titlex, titley) > 0 THEN CIRCLE (titlex * 5, titley * 5), 2, 4: CIRCLE (titlex * 5 + 2, titley * 5 + 2), 2, 14
    a(tilex, tiley) = 0
    NEXT titley
NEXT titlex
'GET
    GET(235,5)-(440,73),MN
    DEF SEG=VARSEG(MN(0))
    BSAVE"MAINOPT.HMS",VARPTR(MN(0)),7400
    DEF SEG

