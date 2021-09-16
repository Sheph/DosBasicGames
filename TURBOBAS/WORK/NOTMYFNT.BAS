SCREEN 12
LOCATE 1, 1: PRINT "Cool guy"
msglen = LEN("3D Virtual Pong")
DIM a(msglen * 8, 32)
FOR titlex = 0 TO msglen * 8
    FOR titley = 0 TO 32
    a(titlex, titley) = POINT(titlex, titley)
    NEXT titley
NEXT titlex
CLS
FOR titlex = 0 TO msglen * 8
    FOR titley = 0 TO 32
    IF a(titlex, titley) > 0 THEN CIRCLE (titlex * 5, titley * 5), 3, 4: CIRCLE (titlex * 5 + 2, titley * 5 + 2), 3, 1
    a(tilex, tiley) = 0
    NEXT titley
NEXT titlex
END

