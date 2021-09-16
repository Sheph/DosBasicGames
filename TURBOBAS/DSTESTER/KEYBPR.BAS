    IF COMMAND$="/?" THEN GOTO ALLAB
    IF COMMAND$="/HELP" OR COMMAND$="/help" THEN SCREEN 9:CLS:COLOR 15,0:GOTO HELP
    IF COMMAND$="/RECORDS" OR COMMAND$="/records" THEN SCREEN 9:CLS:COLOR 15,0:GOTO RECORDS
    SCREEN 9
    COLOR 15,0
START:
    CLS
    RANDOMIZE TIMER
    CV%=INT(RND * 2)
    IF CV%=0 THEN IR=1
    IF CV%=1 THEN IR=2
    LINE(5,5)-(634,344),14,B
    LINE(6,6)-(633,343),4,B
    LINE(7,7)-(632,342),3,B
    PAINT(1,1),4,14
    LINE(1,0)-(639,349),5,B
    LOCATE 2,9
    COLOR IR+9
    PRINT"€€     €ﬂ
    LOCATE 3,9
    COLOR IR+3
    PRINT"€€   €ﬂ
    LOCATE 4,9
    COLOR IR+5
    PRINT"€€ €ﬂ     €ﬂﬂﬂﬂﬂ  €     € €ﬂﬂﬂﬂ‹ €ﬂﬂﬂﬂﬂ€   €ﬂ€   €ﬂﬂﬂﬂ‹ €ﬂﬂﬂﬂﬂ‹
    LOCATE 5,9
    COLOR IR+7
    PRINT"€€€       €        €   €  €    € €     €  ‹ﬂ ﬂ‹  €    € €      €
    LOCATE 6,9
    COLOR IR+8
    PRINT"€€ €‹     €ﬂﬂﬂﬂﬂ   €   €  €‹‹‹‹ﬂ €     € €     € €‹‹‹‹ﬂ €      €
    LOCATE 7,9
    COLOR IR+1
    PRINT"€€   €‹   €         ﬂ€ﬂ   €    € €     € €ﬂﬂﬂﬂﬂ€ €    € €      €
    LOCATE 8,9
    COLOR IR+2
    PRINT"€€     €‹ €‹‹‹‹‹     €    €‹‹‹‹ﬂ €‹‹‹‹‹€ €     € €    € €‹‹‹‹‹ﬂ
    LOCATE 9,5
    COLOR IR
    PRINT"P         R         A         C         T         I         C         E"
    PSET(140,150),0
    DRAW"C15 S12 G40 R200 H40 L120 G40 D10 R200 U10 H40"
'MAIN MENU
A:
    COLOR 14
    LOCATE 13,20
    PRINT"            ENGLISH PRACTICE              "
    LOCATE 14,20
    PRINT"      R u s s i a n  p r a c t i c e"
    LOCATE 15,20
    PRINT"E n g l i s h   f r e e   p r a c t i c e"
    LOCATE 16,20
    PRINT"R u s s i a n   f r e e   p r a c t i c e"
    LOCATE 17,20
    PRINT"          H e l p / R e c o r d s"
    LOCATE 18,20
    PRINT"                Q u i t"
    LET A$=INKEY$
    IF A$=CHR$(0)+"H" THEN GOTO F
    IF A$=CHR$(0)+"P" THEN GOTO B
    IF A$=CHR$(13) THEN RUN"ENGTEST.TRN"
    GOTO A
B:
    COLOR 14
    LOCATE 13,20
    PRINT"      E n g l i s h  p r a c t i c e"
    LOCATE 14,20
    PRINT"            RUSSIAN PRACTICE            "
    LOCATE 15,20
    PRINT"E n g l i s h   f r e e   p r a c t i c e"
    LOCATE 16,20
    PRINT"R u s s i a n   f r e e   p r a c t i c e"
    LOCATE 17,20
    PRINT"          H e l p / R e c o r d s"
    LOCATE 18,20
    PRINT"                Q u i t"
    LET A$=INKEY$
    IF A$=CHR$(0)+"H" THEN GOTO A
    IF A$=CHR$(0)+"P" THEN GOTO C
    IF A$=CHR$(13) THEN CLS:RUN"RUSTEST.TRN"
    GOTO B
C:
    COLOR 14
    LOCATE 13,20
    PRINT"      E n g l i s h  p r a c t i c e"
    LOCATE 14,20
    PRINT"      R u s s i a n  p r a c t i c e"
    LOCATE 15,20
    PRINT"          ENGLISH FREE PRACTICE           "
    LOCATE 16,20
    PRINT"R u s s i a n   f r e e   p r a c t i c e"
    LOCATE 17,20
    PRINT"          H e l p / R e c o r d s"
    LOCATE 18,20
    PRINT"                Q u i t"
    LET A$=INKEY$
    IF A$=CHR$(0)+"H" THEN GOTO B
    IF A$=CHR$(0)+"P" THEN GOTO D
    IF A$=CHR$(13) THEN RUN"ENGFREE.TRN"
    GOTO C
D:
    COLOR 14
    LOCATE 13,20
    PRINT"      E n g l i s h  p r a c t i c e"
    LOCATE 14,20
    PRINT"      R u s s i a n  p r a c t i c e"
    LOCATE 15,20
    PRINT"E n g l i s h   f r e e   p r a c t i c e"
    LOCATE 16,20
    PRINT"          RUSSIAN FREE PRACTICE           "
    LOCATE 17,20
    PRINT"          H e l p / R e c o r d s"
    LOCATE 18,20
    PRINT"                Q u i t"
    LET A$=INKEY$
    IF A$=CHR$(0)+"H" THEN GOTO C
    IF A$=CHR$(0)+"P" THEN GOTO E
    IF A$=CHR$(13) THEN CLS:RUN"RUSFREE.TRN"
    GOTO D
E:
    COLOR 14
    LOCATE 13,20
    PRINT"      E n g l i s h  p r a c t i c e"
    LOCATE 14,20
    PRINT"      R u s s i a n  p r a c t i c e"
    LOCATE 15,20
    PRINT"E n g l i s h   f r e e   p r a c t i c e"
    LOCATE 16,20
    PRINT"R u s s i a n   f r e e   p r a c t i c e"
    LOCATE 17,20
    PRINT"              HELP/RECORDS               "
    LOCATE 18,20
    PRINT"                Q u i t"
    LET A$=INKEY$
    IF A$=CHR$(0)+"H" THEN GOTO D
    IF A$=CHR$(0)+"P" THEN GOTO F
    IF A$=CHR$(13) THEN GOTO HELP
    GOTO E
F:
    COLOR 14
    LOCATE 13,20
    PRINT"      E n g l i s h  p r a c t i c e"
    LOCATE 14,20
    PRINT"      R u s s i a n  p r a c t i c e"
    LOCATE 15,20
    PRINT"E n g l i s h   f r e e   p r a c t i c e"
    LOCATE 16,20
    PRINT"R u s s i a n   f r e e   p r a c t i c e"
    LOCATE 17,20
    PRINT"          H e l p / R e c o r d s"
    LOCATE 18,20
    PRINT"                 QUIT            "
    LET A$=INKEY$
    IF A$=CHR$(0)+"H" THEN GOTO E
    IF A$=CHR$(0)+"P" THEN GOTO A
    IF A$=CHR$(13) THEN END
    GOTO F
    END
HELP:
    CLS
    COLOR 3
    PRINT"                              KEYBOARD PRACTICE HELP"
    COLOR 4
    OPEN"HELP.HLP" FOR INPUT AS #1
    DO
    LINE INPUT #1,A$
    PRINT A$
    LOOP UNTIL (EOF(1))
    CLOSE
    COLOR 2
    PRINT"Press ESCAPE key and you'll preview records!"
    DO
    LOOP UNTIL INKEY$=CHR$(27)
    CLS
RECORDS:
    U=1
'READ RECORDS
    COLOR 9
    OPEN"NAMES.DAT" FOR INPUT AS #2
    DO
    INPUT #2,F$
    LOCATE ,2
    PRINT F$
    LOOP UNTIL (EOF(2))
    CLOSE
    COLOR 7
    OPEN"NAMES.DAT" FOR INPUT AS #3
    INPUT #3,K$
    CLOSE
    LOCATE 1,2
    PRINT K$
'READ INFO
    COLOR 9
    OPEN"INFO.DAT" FOR INPUT AS #4
    DO
    INPUT #4,F$
    LOCATE U,50
    PRINT F$
    U=U+1
    LOOP UNTIL (EOF(4))
    CLOSE
    COLOR 7
    OPEN"INFO.DAT" FOR INPUT AS #3
    INPUT #3,K$
    CLOSE
    LOCATE 1,50
    PRINT K$
'DRAW LINES
    LINE(1,0)-(639,13),15,B
   'LINE(190,0)-(190,350),15
    LINE(1,0)-(1,350),15
   'LINE(380,0)-(380,350),15
   'LINE(515,0)-(515,350),15
    LINE(639,0)-(639,350),15
    LINE(1,349)-(639,349),15
    DO
    LOOP UNTIL INKEY$=CHR$(27)
    CLS
    GOTO START
    END
ALLAB:
    CLS
    PRINT"Options are:"
    PRINT"/HELP - SHOWS HELP"
    PRINT"/RECORDS - SHOWS RECORDS"
    END









