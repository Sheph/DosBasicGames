   CLS
   SCREEN 12
   DIM PA%(25000)
   DIM PB%(25000)
   DIM PC%(25000)
   X=320
   Y=240
   CL=15
   CLR$="WHITE"
   NUM=15
   NUMQ=0
   NUMB=0
   TX$="NONE"
   CLQ=0
   CLRQ$="BCKGROUND"
   COLOR 15,0
CURSOR:
   COLOR 14
   LOCATE 1,2
   PRINT"Status: Cursor                         "
   LOCATE 2,2
   PRINT"                                       "
   LOCATE 1,42
   COLOR 10
   PRINT"Line color: ";CLR$;"             "
   LOCATE 2,42
   PRINT"Coordinates(X,Y):";X;",";Y;"      "
   LINE(0,-1)-(639,32),15,B
   LINE(0,50)-(639,479),15,B
   LINE(320,0)-(320,32),15
'ACTIONS
   CIRCLE(X,Y),1,POINT(X,Y)
   LET A$=INKEY$
   IF A$=CHR$(27) THEN GOTO ASKME
   IF A$="8" OR A$=CHR$(0)+"H" THEN Y=Y-4
   IF A$="2" OR A$=CHR$(0)+"P" THEN Y=Y+4
   IF A$="6" OR A$=CHR$(0)+"M" THEN X=X+4
   IF A$="4" OR A$=CHR$(0)+"K" THEN X=X-4
   IF A$="7" THEN X=X-4:Y=Y-4
   IF A$="9" THEN Y=Y-4:X=X+4
   IF A$="1" THEN X=X-4:Y=Y+4
   IF A$="3" THEN X=X+4:Y=Y+4
   IF A$="D" OR A$="d" THEN GOTO DRAWA
   IF A$="L" OR A$="l" THEN GOTO LNA
   IF A$="P" OR A$="p" THEN GOTO PNT
   IF A$="C" OR A$="c" THEN GOTO CIRC
   IF A$="T" OR A$="t" THEN GOTO TPN
   IF A$="E" OR A$="e" THEN GOTO ERAS
   IF A$="B" OR A$="b" THEN GOTO BRUSH
   IF A$="S" OR A$="s" THEN GOTO CS
   IF A$="O" OR A$="o" THEN GOTO OPN
   IF A$="G" OR A$="g" THEN GOSUB SCSHOT
   IF A$="F" OR A$="f" THEN GOSUB PUTIT
   IF X>639 THEN X=X-4
   IF X<1 THEN X=X+4
   IF Y>479 THEN Y=Y-4
   IF Y<35 THEN Y=Y+4
   CIRCLE(X,Y),1,15
   GOTO CURSOR
   END
DRAWA:
   COLOR 14
   LOCATE 1,2
   PRINT"Status: Usual draw                     "
   LOCATE 2,2
   PRINT"                                       "
   LOCATE 1,42
   COLOR 10
   PRINT"Line color: ";CLR$;"             "
   LOCATE 2,42
   PRINT"Coordinates(X,Y):";X;",";Y;"      "
   LINE(0,-1)-(639,32),15,B
   LINE(0,50)-(639,479),15,B
   LINE(320,0)-(320,32),15
'ACTIONS
   PSET(X,Y),CL
   LET A$=INKEY$
   IF A$=CHR$(27) THEN GOTO ASKME
   IF A$=CHR$(13) THEN GOTO CURSOR
   IF A$="8" OR A$=CHR$(0)+"H" THEN Y=Y-1
   IF A$="2" OR A$=CHR$(0)+"P" THEN Y=Y+1
   IF A$="6" OR A$=CHR$(0)+"M" THEN X=X+1
   IF A$="4" OR A$=CHR$(0)+"K" THEN X=X-1
   IF A$="7" THEN X=X-1:Y=Y-1
   IF A$="9" THEN Y=Y-1:X=X+1
   IF A$="1" THEN X=X-1:Y=Y+1
   IF A$="3" THEN X=X+1:Y=Y+1
   IF A$="5" THEN GOTO CHCL
   IF A$="N" OR A$="n" THEN PSET(X,Y),POINT(X+1,Y+1):GOTO CURSOR
   IF A$="L" OR A$="l" THEN GOTO LNA
   IF A$="P" OR A$="p" THEN GOTO PNT
   IF A$="C" OR A$="c" THEN GOTO CIRC
   IF A$="T" OR A$="t" THEN GOTO TPN
   IF A$="E" OR A$="e" THEN GOTO ERAS
   IF A$="B" OR A$="b" THEN GOTO BRUSH
   IF A$="S" OR A$="s" THEN GOTO CS
   IF A$="O" OR A$="o" THEN GOTO OPN
   IF A$="G" OR A$="g" THEN GOSUB SCSHOT
   IF A$="F" OR A$="f" THEN GOSUB PUTIT
   IF X>639 THEN X=X-4
   IF X<1 THEN X=X+4
   IF Y>479 THEN Y=Y-4
   IF Y<35 THEN Y=Y+4
   PSET(X,Y),15
   GOTO DRAWA
   END
CHCL:
   COLOR 9
   LOCATE 2,2
   PRINT"Enter line color( or ):";NUM
   LOCATE 1,42
   COLOR 10
   PRINT"Line color: ";CLR$;"             "
   IF NUM>15 THEN NUM=15
   IF NUM<0 THEN NUM=0
   CL=NUM
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" OR A$="8" THEN NUM=NUM+1
   IF A$=CHR$(0)+"P" OR A$="2" THEN NUM=NUM-1
   IF NUM=0 THEN CL=0:CLR$="BCKGROUND"
   IF NUM=2 THEN CL=2:CLR$="GREEN 30%"
   IF NUM=3 THEN CL=3:CLR$="BLUE 30%"
   IF NUM=5 THEN CL=5:CLR$="RED"
   IF NUM=6 THEN CL=6:CLR$="ORANGE"
   IF NUM=7 THEN CL=7:CLR$="GREY 50%"
   IF NUM=8 THEN CL=8:CLR$="GREY 100%"
   IF NUM=9 THEN CL=9:CLR$="BLUE 60%"
   IF NUM=10 THEN CL=10:CLR$="GREEN 60%"
   IF NUM=11 THEN CL=11:CLR$="BLUE 20%"
   IF NUM=13 THEN CL=13:CLR$="PINK 50%"
   IF NUM=14 THEN CL=14:CLR$="YELLOW"
   IF NUM=15 THEN CL=15:CLR$="WHITE"
   IF A$=CHR$(13) THEN GOTO DRAWA
   GOTO CHCL
   END
LNA:
   A=X
   B=Y
LNSA:
   COLOR 14
   LOCATE 1,2
   PRINT"Status: Moveing line                  "
   LOCATE 2,2
   PRINT"                                       "
   LOCATE 1,42
   COLOR 10
   PRINT"Line color: ";CLR$;"             "
   LOCATE 2,42
   PRINT"Coordinates(X,Y):";X;",";Y;"      "
   LINE(0,-1)-(639,32),15,B
   LINE(0,50)-(639,479),15,B
   LINE(320,0)-(320,32),15
'ACTIONS
   LINE(A,B)-(X,Y),0
   LINE(A,B+1)-(X,Y+1),0
   LINE(A,B-1)-(X,Y-1),0
   LET A$=INKEY$
   IF A$=CHR$(27) THEN GOTO ASKME
   IF A$=CHR$(13) THEN LINE(A,B)-(X,Y),CL:LINE(A,B+1)-(X,Y+1),CL:LINE(A,B-1)-(X,Y-1),CL:GOTO CURSOR
   IF A$="8" OR A$=CHR$(0)+"H" THEN Y=Y-4
   IF A$="2" OR A$=CHR$(0)+"P" THEN Y=Y+4
   IF A$="6" OR A$=CHR$(0)+"M" THEN X=X+4
   IF A$="4" OR A$=CHR$(0)+"K" THEN X=X-4
   IF A$="7" THEN X=X-4:Y=Y-4
   IF A$="9" THEN Y=Y-4:X=X+4
   IF A$="1" THEN X=X-4:Y=Y+4
   IF A$="3" THEN X=X+4:Y=Y+4
   IF A$="5" THEN GOTO CHCLQ
   IF A$="N" OR A$="n" THEN GOTO CURSOR
   IF A$="D" OR A$="d" THEN GOTO DRAWA
   IF A$="P" OR A$="p" THEN GOTO PNT
   IF A$="C" OR A$="c" THEN GOTO CIRC
   IF A$="T" OR A$="t" THEN GOTO TPN
   IF A$="E" OR A$="e" THEN GOTO ERAS
   IF A$="B" OR A$="b" THEN GOTO BRUSH
   IF A$="S" OR A$="s" THEN GOTO CS
   IF A$="O" OR A$="o" THEN GOTO OPN
   IF A$="G" OR A$="g" THEN GOSUB SCSHOT
   IF A$="F" OR A$="f" THEN GOSUB PUTIT
   IF X>639 THEN X=X-4
   IF X<1 THEN X=X+4
   IF Y>479 THEN Y=Y-4
   IF Y<35 THEN Y=Y+4
   LINE(A,B)-(X,Y),CL
   LINE(A,B+1)-(X,Y+1),CL
   LINE(A,B-1)-(X,Y-1),CL
   GOTO LNSA
   END
CHCLQ:
   COLOR 9
   LOCATE 2,2
   PRINT"Enter line color( or ):";NUM
   LOCATE 1,42
   COLOR 10
   PRINT"Line color: ";CLR$;"             "
   IF NUM>15 THEN NUM=15
   IF NUM<0 THEN NUM=0
   CL=NUM
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" OR A$="8" THEN NUM=NUM+1
   IF A$=CHR$(0)+"P" OR A$="2" THEN NUM=NUM-1 
   IF NUM=0 THEN CL=0:CLR$="BCKGROUND"
   IF NUM=2 THEN CL=2:CLR$="GREEN 30%"
   IF NUM=3 THEN CL=3:CLR$="BLUE 30%"
   IF NUM=5 THEN CL=5:CLR$="RED"
   IF NUM=6 THEN CL=6:CLR$="ORANGE"
   IF NUM=7 THEN CL=7:CLR$="GREY 50%"
   IF NUM=8 THEN CL=8:CLR$="GREY 100%"
   IF NUM=9 THEN CL=9:CLR$="BLUE 60%"
   IF NUM=10 THEN CL=10:CLR$="GREEN 60%"
   IF NUM=11 THEN CL=11:CLR$="BLUE 20%"
   IF NUM=13 THEN CL=13:CLR$="PINK 50%"
   IF NUM=14 THEN CL=14:CLR$="YELLOW"
   IF NUM=15 THEN CL=15:CLR$="WHITE"
   IF A$=CHR$(13) THEN GOTO LNSA
   GOTO CHCLQ
   END
PNT:
   COLOR 14
   LOCATE 1,2
   PRINT"Status: Paint bucket                  "
   LOCATE 2,2
   PRINT"                                       "
   LOCATE 1,42
   COLOR 10
   PRINT"Paint color: ";CLRQ$;"             "
   LOCATE 2,42
   PRINT"Coordinates(X,Y):";X;",";Y;"      "
   LINE(0,-1)-(639,32),15,B
   LINE(0,50)-(639,479),15,B
   LINE(320,0)-(320,32),15
'ACTIONS
   PSET(X,Y),POINT(X,Y+1)
   LET A$=INKEY$
   IF A$=CHR$(27) THEN GOTO ASKME
   IF A$=CHR$(13) THEN GOTO APPLY
   IF A$="8" OR A$=CHR$(0)+"H" THEN Y=Y-4
   IF A$="2" OR A$=CHR$(0)+"P" THEN Y=Y+4
   IF A$="6" OR A$=CHR$(0)+"M" THEN X=X+4
   IF A$="4" OR A$=CHR$(0)+"K" THEN X=X-4
   IF A$="7" THEN X=X-4:Y=Y-4
   IF A$="9" THEN Y=Y-4:X=X+4
   IF A$="5" THEN GOTO COP
   IF A$="1" THEN X=X-4:Y=Y+4
   IF A$="3" THEN X=X+4:Y=Y+4
   IF A$="D" OR A$="d" THEN GOTO DRAWA
   IF A$="L" OR A$="l" THEN GOTO LNA
   IF A$="C" OR A$="c" THEN GOTO CIRC
   IF A$="N" OR A$="n" THEN GOTO CURSOR
   IF A$="T" OR A$="t" THEN GOTO TPN
   IF A$="E" OR A$="e" THEN GOTO ERAS
   IF A$="B" OR A$="b" THEN GOTO BRUSH
   IF A$="S" OR A$="s" THEN GOTO CS
   IF A$="O" OR A$="o" THEN GOTO OPN
   IF A$="G" OR A$="g" THEN GOSUB SCSHOT
   IF A$="F" OR A$="f" THEN GOSUB PUTIT
   IF X>639 THEN X=X-4
   IF X<1 THEN X=X+4
   IF Y>479 THEN Y=Y-4
   IF Y<35 THEN Y=Y+4
   PSET(X,Y),15
   GOTO PNT
   END
COP:
   COLOR 9
   LOCATE 2,2
   PRINT"Enter paint color( or ):";NUMQ
   LOCATE 1,42
   COLOR 10
   PRINT"Paint color: ";CLRQ$;"             "
   IF NUMQ>15 THEN NUMQ=15
   IF NUMQ<0 THEN NUMQ=0
   CLQ=NUMQ
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" OR A$="8" THEN NUMQ=NUMQ+1
   IF A$=CHR$(0)+"P" OR A$="2" THEN NUMQ=NUMQ-1
   IF NUMQ=0 THEN CLQ=0:CLRQ$="BCKGROUND"
   IF NUMQ=2 THEN CLQ=2:CLRQ$="GREEN 30%"
   IF NUMQ=3 THEN CLQ=3:CLRQ$="BLUE 30%"
   IF NUMQ=5 THEN CLQ=5:CLRQ$="RED"
   IF NUMQ=6 THEN CLQ=6:CLRQ$="ORANGE"
   IF NUMQ=7 THEN CLQ=7:CLRQ$="GREY 50%"
   IF NUMQ=8 THEN CLQ=8:CLRQ$="GREY 100%"
   IF NUMQ=9 THEN CLQ=9:CLRQ$="BLUE 60%"
   IF NUMQ=10 THEN CLQ=10:CLRQ$="GREEN 60%"
   IF NUMQ=11 THEN CLQ=11:CLRQ$="BLUE 20%"
   IF NUMQ=13 THEN CLQ=13:CLRQ$="PINK 50%"
   IF NUMQ=14 THEN CLQ=14:CLRQ$="YELLOW"
   IF NUMQ=15 THEN CLQ=15:CLRQ$="WHITE"
   IF A$=CHR$(13) THEN GOTO PNT
   GOTO COP
   END
APPLY:
   PSET(X,Y),POINT(X,Y+1)
   PAINT(X,Y),CLQ,CL
   GOTO CURSOR
   END
CIRC:
   LET J=0.75
   LET CSA=1
   LET CSB=7.28
   PSET(X,Y),POINT(X+1,Y)
CIRCL:
   COLOR 14
   LOCATE 1,2
   PRINT"Status: Circle                         "
   LOCATE 2,2
   PRINT"                                       "
   LOCATE 1,42
   COLOR 10
   PRINT"Line color: ";CLR$;"             "
   LOCATE 2,42
   PRINT"Coordinates(X,Y):";X;",";Y;"      "
   LINE(0,-1)-(639,32),15,B
   LINE(0,50)-(639,479),15,B
   LINE(320,0)-(320,32),15
'ACTIONS
   CIRCLE(X,Y),V,POINT(X+1,Y+1),CSA,CSB,J
   LET A$=INKEY$
   IF A$="8" OR A$=CHR$(0)+"H" THEN Y=Y-4
   IF A$="2" OR A$=CHR$(0)+"P" THEN Y=Y+4
   IF A$="6" OR A$=CHR$(0)+"M" THEN X=X+4
   IF A$="4" OR A$=CHR$(0)+"K" THEN X=X-4
   IF A$="9" THEN V=V+2
   IF A$="7" THEN J=J+0.025
   IF A$="1" THEN V=V-2
   IF A$="3" THEN J=J-0.025
   IF A$="5" THEN GOTO CRCL
   IF A$="+" THEN CSA=CSA+0.1
   IF A$="-" THEN CSA=CSA-0.1
   IF A$="D" OR A$="d" THEN GOTO DRAWA
   IF A$="L" OR A$="l" THEN GOTO LNA
   IF A$="N" OR A$="n" THEN GOTO CURSOR
   IF A$="P" OR A$="p" THEN GOTO PNT
   IF A$="T" OR A$="t" THEN GOTO TPN
   IF A$="E" OR A$="e" THEN GOTO ERAS
   IF A$="B" OR A$="b" THEN GOTO BRUSH
   IF A$="S" OR A$="s" THEN GOTO CS
   IF A$="O" OR A$="o" THEN GOTO OPN
   IF A$="G" OR A$="g" THEN GOSUB SCSHOT
   IF A$="F" OR A$="f" THEN GOSUB PUTIT
   IF A$=CHR$(27) THEN GOTO ASKME
   IF X>639 THEN X=X-4
   IF X<1 THEN X=X+4
   IF Y>479 THEN Y=Y-4
   IF Y<35 THEN Y=Y+4
   IF A$=CHR$(13) THEN LOCATE 2,2:PRINT"                      ":CIRCLE(X,Y),V,CL,CSA,CSB,J:V=0:GOTO CURSOR
   CIRCLE(X,Y),V,CL,CSA,CSB,J
   GOTO CIRCL
   END
CRCL:
   COLOR 9
   LOCATE 2,2
   PRINT"Enter line color( or ):";NUM
   LOCATE 1,42
   COLOR 10
   PRINT"Line color: ";CLR$;"             "
   IF NUM>15 THEN NUM=15
   IF NUM<0 THEN NUM=0
   CL=NUM
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" OR A$="8" THEN NUM=NUM+1
   IF A$=CHR$(0)+"P" OR A$="2" THEN NUM=NUM-1 
   IF NUM=0 THEN CL=0:CLR$="BCKGROUND"
   IF NUM=2 THEN CL=2:CLR$="GREEN 30%"
   IF NUM=3 THEN CL=3:CLR$="BLUE 30%"
   IF NUM=5 THEN CL=5:CLR$="RED"
   IF NUM=6 THEN CL=6:CLR$="ORANGE"
   IF NUM=7 THEN CL=7:CLR$="GREY 50%"
   IF NUM=8 THEN CL=8:CLR$="GREY 100%"
   IF NUM=9 THEN CL=9:CLR$="BLUE 60%"
   IF NUM=10 THEN CL=10:CLR$="GREEN 60%"
   IF NUM=11 THEN CL=11:CLR$="BLUE 20%"
   IF NUM=13 THEN CL=13:CLR$="PINK 50%"
   IF NUM=14 THEN CL=14:CLR$="YELLOW"
   IF NUM=15 THEN CL=15:CLR$="WHITE"
   IF A$=CHR$(13) THEN GOTO CIRCL
   GOTO CRCL
   END
TPN:
   COLOR 14
   LOCATE 1,2
   PRINT"Status: Texture paint                  "
   LOCATE 2,2
   PRINT"                                       "
TPR:
   COLOR 9
   LOCATE 2,2
   PRINT"On what color apply texture(,):";NUM
   LOCATE 1,42
   COLOR 10
   PRINT"Paint color: ";CLR$;"             "
   IF NUM>15 THEN NUM=15
   IF NUM<0 THEN NUM=0
   CL=NUM
   LET A$=INKEY$
   IF A$=CHR$(27) THEN GOTO ASKME
   IF A$=CHR$(0)+"H" OR A$="8" THEN NUM=NUM+1
   IF A$=CHR$(0)+"P" OR A$="2" THEN NUM=NUM-1 
   IF NUM=0 THEN CL=0:CLR$="BCKGROUND"
   IF NUM=2 THEN CL=2:CLR$="GREEN 30%"
   IF NUM=3 THEN CL=3:CLR$="BLUE 30%"
   IF NUM=5 THEN CL=5:CLR$="RED"
   IF NUM=6 THEN CL=6:CLR$="ORANGE"
   IF NUM=7 THEN CL=7:CLR$="GREY 50%"
   IF NUM=8 THEN CL=8:CLR$="GREY 100%"
   IF NUM=9 THEN CL=9:CLR$="BLUE 60%"
   IF NUM=10 THEN CL=10:CLR$="GREEN 60%"
   IF NUM=11 THEN CL=11:CLR$="BLUE 20%"
   IF NUM=13 THEN CL=13:CLR$="PINK 50%"
   IF NUM=14 THEN CL=14:CLR$="YELLOW"
   IF NUM=15 THEN CL=15:CLR$="WHITE"
   IF A$=CHR$(13) THEN GOTO PAIN
   GOTO TPR
   END
PAIN:
   LOCATE 2,2
   PRINT"                                       "
PNA:
   COLOR 9
   LOCATE 2,2
   PRINT"Enter texture( or ):";NUMB
   LOCATE 1,42
   COLOR 10
   PRINT"Texture type: ";TX$;"             "
   IF NUMB>13 THEN NUMB=13
   IF NUMB<0 THEN NUMB=0
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" OR A$="8" THEN NUMB=NUMB+1
   IF A$=CHR$(0)+"P" OR A$="2" THEN NUMB=NUMB-1
   IF A$=CHR$(13) THEN GOTO DOO
   IF NUMB=0 THEN TX$="NONE"
   IF NUMB=1 THEN TX$="POINTS"
   IF NUMB=2 THEN TX$="SQUARES"
   IF NUMB=3 THEN TX$="MULTI-T"
   IF NUMB=4 THEN TX$="ERASER"
   IF NUMB=5 THEN TX$="GRASS"
   IF NUMB=6 THEN TX$="MEGAPAINT"
   IF NUMB=7 THEN TX$="GREENS"
   IF NUMB=8 THEN TX$="CIRCULAR"
   IF NUMB=9 THEN TX$="CRC_SMALL"
   IF NUMB=10 THEN TX$="NIGHT"
   IF NUMB=11 THEN TX$="LAWN"
   IF NUMB=12 THEN TX$="B_SQUARES"
   IF NUMB=13 THEN TX$="MILITARY"
   GOTO PNA
   END
DOO:
   IF NUMB=0 THEN GOTO CURSOR
   FOR TRU=1 TO 638 STEP+2
   FOR TRA=36 TO 478 STEP+2
   IF POINT(TRU,TRA)=CL AND NUMB=3 THEN PSET(TRU,TRA),CL:DRAW"C15 E1 C7 F1 C9 G1 C5 H1 BR2"
   IF POINT(TRU,TRA)=CL AND NUMB=1 THEN PSET(TRU,TRA),CL+3
   IF POINT(TRU,TRA)=CL AND NUMB=2 THEN PSET(TRU,TRA),CL:DRAW"C14 E1 H1 G1 F1"
   IF NUMB=4 THEN GOTO SUPR
   IF POINT(TRU,TRA)=CL AND NUMB=5 THEN PSET(TRU,TRA),CL:DRAW"C2 E2"
   IF NUMB=6 THEN GOTO MEGAT
   IF POINT(TRU,TRA)=CL AND NUMB=7 THEN PSET(TRU,TRA),CL:DRAW"C2 E1"
   IF POINT(TRU,TRA)=CL AND NUMB=8 THEN CIRCLE(TRU,TRA),3,10
   IF POINT(TRU,TRA)=CL AND NUMB=9 THEN CIRCLE(TRU,TRA),2,CL+3
   IF NUMB=10 THEN GOTO NIGHT
   IF POINT(TRU,TRA)=CL AND NUMB=11 THEN PSET(TRU,TRA),CL:DRAW"C2 U3"
   IF NUMB=12 THEN GOTO BSQ
   IF NUMB=13 THEN GOTO MILI
   NEXT
   NEXT
   GOTO CURSOR
SUPR:
   FOR TRU=1 TO 638
   FOR TRA=36 TO 478
   IF POINT(TRU,TRA)=CL THEN PSET(TRU,TRA),0
   NEXT
   NEXT
   GOTO CURSOR
   END
MEGAT:
   RANDOMIZE TIMER
   FOR TRU=1 TO 640 STEP+2.5
   FOR TRA=1 TO 480 STEP+1.5
   NOZ%=INT(RND * 16)
   NIZ%=INT(RND * 16)
   IF NIZ%=1 OR NIZ%=4 THEN NIZ%=5
   IF POINT(TRU,TRA)=CL AND NOZ%=2 THEN PSET(TRU,TRA),NIZ%
   NEXT
   NEXT
   GOTO CURSOR
   END
NIGHT:
    RANDOMIZE TIMER
    FOR NIT=1 TO 100
    TRANS%=INT(RND*2)
    IF TRANS%=0 THEN TRANS%=CL
    IF TRANS%=1 THEN TRANS%=CL+3
    TRUPP%=INT(RND*640)
    TRUP%=INT(RND*260)
    PSET(TRUPP%,TRUP%+50),TRANS%
    NEXT NIT
    GOTO CURSOR
    END
BSQ:
    FOR TRU=1 TO 640 STEP+8
    FOR TRA=1 TO 480 STEP+8
    IF POINT(TRU,TRA)=CL THEN PSET(TRU,TRA),CL:DRAW"C7 E3 H3 G3 F3 U5 D2 L2 R5"
    NEXT
    NEXT
    GOTO CURSOR
    END
MILI:
    FOR TRU=1 TO 640 STEP+4
    FOR TRA=1 TO 480 STEP+4
    IF POINT(TRU,TRA)=CL THEN PSET(TRU,TRA),CL:DRAW"C5 U2 F3 L3 E1"
    NEXT
    NEXT
    GOTO CURSOR
    END
ERAS:
   COLOR 14
   LOCATE 1,2
   PRINT"Status: Eraser                         "
   LOCATE 2,2
   PRINT"                                       "
   LOCATE 1,42
   COLOR 10
   PRINT"Line color: ";CLR$;"             "
   LOCATE 2,42
   PRINT"Coordinates(X,Y):";X;",";Y;"      "
   LINE(0,-1)-(639,32),15,B
   LINE(0,50)-(639,479),15,B
   LINE(320,0)-(320,32),15
'ACTIONS
   LINE(X-6,Y-8)-(X+6,Y+8),0,BF
   LET A$=INKEY$
   IF A$=CHR$(13) THEN GOTO CURSOR
   IF A$=CHR$(27) THEN GOTO ASKME
   IF A$="8" OR A$=CHR$(0)+"H" THEN Y=Y-4
   IF A$="2" OR A$=CHR$(0)+"P" THEN Y=Y+4
   IF A$="6" OR A$=CHR$(0)+"M" THEN X=X+4
   IF A$="4" OR A$=CHR$(0)+"K" THEN X=X-4
   IF A$="7" THEN X=X-4:Y=Y-4
   IF A$="9" THEN Y=Y-4:X=X+4
   IF A$="1" THEN X=X-4:Y=Y+4
   IF A$="3" THEN X=X+4:Y=Y+4
   IF A$="D" OR A$="d" THEN GOTO DRAWA
   IF A$="L" OR A$="l" THEN GOTO LNA
   IF A$="P" OR A$="p" THEN GOTO PNT
   IF A$="C" OR A$="c" THEN GOTO CIRC
   IF A$="T" OR A$="t" THEN GOTO TPN
   IF A$="N" OR A$="n" THEN GOTO CURSOR
   IF A$="B" OR A$="b" THEN GOTO BRUSH
   IF A$="S" OR A$="s" THEN GOTO CS
   IF A$="O" OR A$="o" THEN GOTO OPN
   IF A$="G" OR A$="g" THEN GOSUB SCSHOT
   IF A$="F" OR A$="f" THEN GOSUB PUTIT
   IF X>633 THEN X=X-4
   IF (X-6)<-1 THEN X=X+4
   IF Y>472 THEN Y=Y-4
   IF Y<43 THEN Y=Y+4
   LINE(X-6,Y-8)-(X+6,Y+8),15,BF
   GOTO ERAS
   END
BRUSH:
   SIZ=1
BRISH:
   COLOR 14
   LOCATE 1,2
   PRINT"Status: Brush draw                     "
   LOCATE 2,2
   PRINT"                                       "
   LOCATE 1,42
   COLOR 10
   PRINT"Line color: ";CLR$;"             "
   LOCATE 2,42
   PRINT"Coordinates(X,Y):";X;",";Y;"      "
   LINE(0,-1)-(639,32),15,B
   LINE(0,50)-(639,479),15,B
   LINE(320,0)-(320,32),15
'ACTIONS
   CIRCLE(X,Y),SIZ,CL
   LET A$=INKEY$
   IF A$=CHR$(13) THEN GOTO CURSOR
   IF A$=CHR$(27) THEN GOTO ASKME
   IF A$="8" OR A$=CHR$(0)+"H" THEN Y=Y-1
   IF A$="2" OR A$=CHR$(0)+"P" THEN Y=Y+1
   IF A$="6" OR A$=CHR$(0)+"M" THEN X=X+1
   IF A$="4" OR A$=CHR$(0)+"K" THEN X=X-1
   IF A$="7" THEN X=X-1:Y=Y-1
   IF A$="9" THEN Y=Y-1:X=X+1
   IF A$="1" THEN X=X-1:Y=Y+1
   IF A$="3" THEN X=X+1:Y=Y+1
   IF A$="5" THEN GOTO CHCLM
   IF A$="+" THEN SIZ=SIZ+1
   IF A$="-" THEN SIZ=SIZ-1
   IF A$="N" OR A$="n" THEN CIRCLE(X,Y),SIZ,CL:GOTO CURSOR
   IF A$="L" OR A$="l" THEN GOTO LNA
   IF A$="P" OR A$="p" THEN GOTO PNT
   IF A$="D" OR A$="d" THEN GOTO DRAWA
   IF A$="C" OR A$="c" THEN GOTO CIRC
   IF A$="T" OR A$="t" THEN GOTO TPN
   IF A$="E" OR A$="e" THEN GOTO ERAS
   IF A$="S" OR A$="s" THEN CS
   IF A$="O" OR A$="o" THEN GOTO OPN
   IF A$="G" OR A$="g" THEN GOSUB SCSHOT
   IF A$="F" OR A$="f" THEN GOSUB PUTIT
   IF X>639 THEN X=X-4
   IF X<1 THEN X=X+4
   IF Y>479 THEN Y=Y-4
   IF Y<35 THEN Y=Y+4
   CIRCLE(X,Y),SIZ,CL
   GOTO BRISH
   END
CHCLM:
   COLOR 9
   LOCATE 2,2
   PRINT"Enter line color( or ):";NUM
   LOCATE 1,42
   COLOR 10
   PRINT"Line color: ";CLR$;"             "
   IF NUM>15 THEN NUM=15
   IF NUM<0 THEN NUM=0
   CL=NUM
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" OR A$="8" THEN NUM=NUM+1
   IF A$=CHR$(0)+"P" OR A$="2" THEN NUM=NUM-1 
   IF NUM=0 THEN CL=0:CLR$="BCKGROUND"
   IF NUM=2 THEN CL=2:CLR$="GREEN 30%"
   IF NUM=3 THEN CL=3:CLR$="BLUE 30%"
   IF NUM=5 THEN CL=5:CLR$="RED"
   IF NUM=6 THEN CL=6:CLR$="ORANGE"
   IF NUM=7 THEN CL=7:CLR$="GREY 50%"
   IF NUM=8 THEN CL=8:CLR$="GREY 100%"
   IF NUM=9 THEN CL=9:CLR$="BLUE 60%"
   IF NUM=10 THEN CL=10:CLR$="GREEN 60%"
   IF NUM=11 THEN CL=11:CLR$="BLUE 20%"
   IF NUM=13 THEN CL=13:CLR$="PINK 50%"
   IF NUM=14 THEN CL=14:CLR$="YELLOW"
   IF NUM=15 THEN CL=15:CLR$="WHITE"
   IF A$=CHR$(13) THEN GOTO BRISH
   GOTO CHCLM
   END
CS:
   COLOR 5
   LOCATE 2,2
   PRINT"Do you want to clear the screen ?(Y/N)"
   LET A$=INKEY$
   IF A$="Y" OR A$="y" THEN CLS:PAINT(320,240),0,15:GOTO CURSOR
   IF A$="N" OR A$="n" THEN GOTO CURSOR
   GOTO CS
   END
SCSHOT:
   GET(0,35)-(213,479),PA%
   GET(214,35)-(427,479),PB%
   GET(428,35)-(639,479),PC%
   COLOR 10
   LOCATE 2,2
   PRINT"Screenshot was taken!"
   DELAY 1.2
   RETURN
   END
PUTIT:
   COLOR 10
   LOCATE 2,2
   PRINT"Import screenshot image ?(Y/N)"
   LET A$=INKEY$
   IF A$="Y" OR A$="y" THEN GOTO DROP
   IF A$="N" OR A$="n" THEN RETURN
   GOTO PUTIT
   RETURN
   END
DROP:
   ON ERROR GOTO NOD
   PUT(0,35),PA%,PSET
   ON ERROR GOTO NOD
   PUT(214,35),PB%,PSET
   ON ERROR GOTO NOD
   PUT(428,35),PC%,PSET
   ON ERROR GOTO NOD
AFG:
   RETURN
   END
NOD:
   COLOR 4
   LOCATE 2,2
   PRINT"Screenshot wasn't taken!          "
   DELAY 1.2
   RESUME AFG
   END
ERZ:
   LOCATE 2,2
   PRINT"No such file or file error!          "
   DELAY 1.5
   RESUME CURSOR
   END
ASKME:
   COLOR 4
   LOCATE 2,2
   PRINT"Do you really want to quit ?(Y/N)"
   LET A$=INKEY$
   IF A$="Y" OR A$="y" THEN GOTO BEASK
   IF A$="N" OR A$="n" THEN GOTO CURSOR
   GOTO ASKME
   END
BEASK:
   COLOR 4
   LOCATE 2,2
   PRINT"Do you want to save your picture ?(Y/N)"
   LET A$=INKEY$
   IF A$="Y" OR A$="y" THEN GOTO SAVA
   IF A$="N" OR A$="n" THEN END
   GOTO BEASK
   END
SAVA:
   COLOR 11
   LOCATE 1,2
   PRINT"Enter filename(Without an extension):  "
   LOCATE 2,2
   PRINT"                                       "
   LOCATE 2,2
   COLOR 4
   INPUT"Û",NAM$
   GET(0,50)-(213,479),PA%
   GET(214,50)-(427,479),PB%
   GET(428,50)-(639,479),PC%
   DEF SEG=VARSEG(PA%(0))
   BSAVE NAM$+".1",VARPTR(PA%(0)),50000
   DEF SEG=VARSEG(PB%(0))
   BSAVE NAM$+".2",VARPTR(PB%(0)),50000
   DEF SEG=VARSEG(PC%(0))
   BSAVE NAM$+".3",VARPTR(PC%(0)),50000
   END
OPN:
   COLOR 4
   LOCATE 1,2
   PRINT"File to open(without an extension):"
   LOCATE 2,2
   COLOR 14
   INPUT"Û",NAM$
   DEF SEG=VARSEG(PA%(0))
   BLOAD NAM$+".1",VARPTR(PA%(0))
   DEF SEG=VARSEG(PB%(0))
   BLOAD NAM$+".2",VARPTR(PB%(0))
   DEF SEG=VARSEG(PC%(0))
   BLOAD NAM$+".3",VARPTR(PC%(0))
   PUT(0,50),PA%,PSET
   PUT(214,50),PB%,PSET
   PUT(428,50),PC%,PSET
   GOTO CURSOR
   END









