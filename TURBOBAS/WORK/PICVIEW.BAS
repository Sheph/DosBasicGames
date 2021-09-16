    CLS
    IF COMMAND$="" THEN CLS:PRINT"Usage: Picview.exe <Filename.uge>":END
    SCREEN 9
    DELAY 0.5
    DIR$="UNKNOWEN"
    DIM PAR%(20000)
    DIM PBR%(20000)
    DIM PCR%(20000)
    PAINT(1,100),3,15
    LINE(0,0)-(639,40),0,BF
    LOCATE 1,2
    COLOR 8,0
    PRINT"Directory-";DIR$
    LOCATE 3,2
    PRINT"Wait, loading!"
    LINE(0,0)-(639,41),15,B
    LOCATE 2,2
    PRINT"File-"
    LOCATE 2,7
    COLOR 14
    PRINT COMMAND$
'STUFF
   ON ERROR GOTO ERU
   OPEN COMMAND$ FOR INPUT AS #1
   ON ERROR GOTO ERU
   FOR NM=0 TO 20000
   INPUT #1,PAR%(NM)
   ON ERROR GOTO ERU
   NEXT NM
   FOR NM=0 TO 20000
   ON ERROR GOTO ERU
   INPUT #1,PBR%(NM)
   ON ERROR GOTO ERU
   NEXT NM
   FOR NM=0 TO 20000
   INPUT #1,PCR%(NM)
   ON ERROR GOTO ERU
   NEXT NM
   LINE(3,51)-(638,348),16,BF
   LINE(3,51)-(638,348),15,B
   PUT(3,51),PAR%,PSET
   PUT(212,51),PBR%,PSET
   PUT(424,51),PCR%,PSET
   LINE(3,51)-(638,348),15,B
    COLOR 7
    LOCATE 3,2
    PRINT"Done!                        "
    LINE(0,0)-(639,41),15,B
'STUFF
   DO
   LOOP UNTIL INKEY$=CHR$(27)
   END
ERU:
   COLOR 10
   LOCATE 2,2
   PRINT"There is an error in that file! Quiting!"
   DELAY 2.2
   END


