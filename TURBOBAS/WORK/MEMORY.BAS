    CLS
    IF COMMAND$="/?" THEN GOTO ASKME
    IF COMMAND$="/S" THEN GOTO STRING
    IF COMMAND$="/U" THEN GOTO STACK
    IF COMMAND$="/A" THEN GOTO ARRAY
    IF COMMAND$="/C" THEN GOTO COPYR
    COLOR 14
    LOCATE 12,20
    PRINT"          зддддддддддддддддддд©"
    LOCATE 13,30
    PRINT"ЁFree memory:";CINT((FRE("") + FRE(-2) + FRE(-1)) / 1000)"KBЁ"
    LOCATE 14,30
    PRINT"юддддддддддддддддддды"
    IF CINT((FRE("") + FRE(-2) + FRE(-1)) / 1000) < 448 THEN GOTO LOW
    IF CINT((FRE("") + FRE(-2) + FRE(-1)) / 1000) > 579 THEN GOTO HIGH
    IF CINT((FRE("") + FRE(-2) + FRE(-1)) / 1000) > 447 and CINT((FRE("") + FRE(-2) + FRE(-1)) / 1000) < 579 THEN GOTO NORM
    END
LOW:
    COLOR 20
    LOCATE 23,1
    PRINT"Low memory, recommended to unload some drivers!"
    END
HIGH:
    COLOR 20
    LOCATE 23,1
    PRINT"High memory, everything is O'kay"
    END
NORM:
    COLOR 20
    LOCATE 23,1
    PRINT"Normal memory"
    END
ASKME:
    PRINT
    PRINT"/? - Shows this help"
    PRINT"/S - Shows string space"
    PRINT"/U - Shows unused stack space"
    PRINT"/A - Shows array space"
    PRINT"/C - Shows Copyright."
    END
STRING:
    CLS
    COLOR 14
    LOCATE 1,1
    PRINT"String space:";FRE("");"Bytes"
    END
ARRAY:
    CLS
    COLOR 14
    LOCATE 1,1
    PRINT"Array space:";FRE(-1);"Bytes"
    END
STACK:
    CLS
    COLOR 14
    LOCATE 1,1
    PRINT"Unused stack space:";FRE(-2);"Bytes"
    END
COPYR:
    CLS
    COLOR 4
    LOCATE 22,1
    PRINT"Copyright by Vorobiov Stanislav and Zlotsckiy Anton"
    LOCATE 23,1
    PRINT"Designed for Dos Cover PLUS! Upgrade in 1999."
    END




