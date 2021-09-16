   CLS
   SCREEN 9
   R=1
   L=1
START:
   FOR G=1 TO 22
   FOR A=1 TO 80
   X%=INT(RND * 94)
   IF X%=0 THEN LET SYMB$="`"
   IF X%=1 THEN LET SYMB$="1"
   IF X%=2 THEN LET SYMB$="2"
   IF X%=3 THEN LET SYMB$="3"
   IF X%=4 THEN LET SYMB$="4"
   IF X%=5 THEN LET SYMB$="5"
   IF X%=6 THEN LET SYMB$="6"
   IF X%=7 THEN LET SYMB$="7"
   IF X%=8 THEN LET SYMB$="8"
   IF X%=9 THEN LET SYMB$="9"
   IF X%=10 THEN LET SYMB$="0"
   IF X%=11 THEN LET SYMB$="-"
   IF X%=12 THEN LET SYMB$="="
   IF X%=13 THEN LET SYMB$="\"
   IF X%=14 THEN LET SYMB$="~"
   IF X%=15 THEN LET SYMB$="!"
   IF X%=16 THEN LET SYMB$="@"
   IF X%=17 THEN LET SYMB$="#"
   IF X%=18 THEN LET SYMB$="$"
   IF X%=19 THEN LET SYMB$="%"
   IF X%=20 THEN LET SYMB$="^"
   IF X%=21 THEN LET SYMB$="&"
   IF X%=22 THEN LET SYMB$="*"
   IF X%=23 THEN LET SYMB$="("
   IF X%=24 THEN LET SYMB$=")"
   IF X%=25 THEN LET SYMB$="_"
   IF X%=26 THEN LET SYMB$="+"
   IF X%=27 THEN LET SYMB$="|"
   IF X%=28 THEN LET SYMB$="Q"
   IF X%=29 THEN LET SYMB$="W"
   IF X%=30 THEN LET SYMB$="E"
   IF X%=31 THEN LET SYMB$="R"
   IF X%=32 THEN LET SYMB$="T"
   IF X%=33 THEN LET SYMB$="Y"
   IF X%=34 THEN LET SYMB$="U"
   IF X%=35 THEN LET SYMB$="I"
   IF X%=36 THEN LET SYMB$="O"
   IF X%=37 THEN LET SYMB$="P"
   IF X%=38 THEN LET SYMB$="["
   IF X%=39 THEN LET SYMB$="]"
   IF X%=40 THEN LET SYMB$="A"
   IF X%=41 THEN LET SYMB$="S"
   IF X%=42 THEN LET SYMB$="D"
   IF X%=43 THEN LET SYMB$="F"
   IF X%=44 THEN LET SYMB$="G"
   IF X%=45 THEN LET SYMB$="H"
   IF X%=46 THEN LET SYMB$="J"
   IF X%=47 THEN LET SYMB$="K"
   IF X%=48 THEN LET SYMB$="L"
   IF X%=49 THEN LET SYMB$=";"
   IF X%=50 THEN LET SYMB$="'"
   IF X%=51 THEN LET SYMB$="Z"
   IF X%=52 THEN LET SYMB$="X"
   IF X%=53 THEN LET SYMB$="C"
   IF X%=54 THEN LET SYMB$="V"
   IF X%=55 THEN LET SYMB$="B"
   IF X%=56 THEN LET SYMB$="N"
   IF X%=57 THEN LET SYMB$="M"
   IF X%=58 THEN LET SYMB$=","
   IF X%=59 THEN LET SYMB$="."
   IF X%=60 THEN LET SYMB$="/"
   IF X%=61 THEN LET SYMB$="{"
   IF X%=62 THEN LET SYMB$="}"
   IF X%=63 THEN LET SYMB$=":"
   IF X%=64 THEN LET SYMB$="<"
   IF X%=65 THEN LET SYMB$=">"
   IF X%=66 THEN LET SYMB$="?"
   IF X%=67 THEN LET SYMB$="q"
   IF X%=68 THEN LET SYMB$="w"
   IF X%=69 THEN LET SYMB$="e"
   IF X%=70 THEN LET SYMB$="r"
   IF X%=71 THEN LET SYMB$="t"
   IF X%=72 THEN LET SYMB$="y"
   IF X%=73 THEN LET SYMB$="u"
   IF X%=74 THEN LET SYMB$="i"
   IF X%=75 THEN LET SYMB$="o"
   IF X%=76 THEN LET SYMB$="p"
   IF X%=77 THEN LET SYMB$="a"
   IF X%=78 THEN LET SYMB$="s"
   IF X%=79 THEN LET SYMB$="d"
   IF X%=80 THEN LET SYMB$="f"
   IF X%=81 THEN LET SYMB$="g"
   IF X%=82 THEN LET SYMB$="h"
   IF X%=83 THEN LET SYMB$="j"
   IF X%=84 THEN LET SYMB$="k"
   IF X%=85 THEN LET SYMB$="l"
   IF X%=86 THEN LET SYMB$="z"
   IF X%=87 THEN LET SYMB$="x"
   IF X%=88 THEN LET SYMB$="c"
   IF X%=89 THEN LET SYMB$="v"
   IF X%=90 THEN LET SYMB$="b"
   IF X%=91 THEN LET SYMB$="n"
   IF X%=92 THEN LET SYMB$="m"
   IF X%=93 THEN LET SYMB$=CHR$(34)
   LOCATE R,L
   COLOR X%
   PRINT SYMB$
   LET L=L+1
   LOCATE 23,1
   COLOR 3
   PRINT"RESULT:RIGHT!"
   FOR N=1 TO 80
   NEXT N
   COLOR 4
   LOCATE 23,1
   PRINT"RESULT:RIGHT!"
   FOR N=1 TO 80
   NEXT N
   NEXT A
   R=R+1
   L=1
   NEXT G
'DRAW
    IR=1
    LOCATE 7,9
    COLOR IR
    PRINT"€€     €ﬂ
    LOCATE 8,9
    COLOR IR
    PRINT"€€   €ﬂ
    LOCATE 9,9
    COLOR IR
    PRINT"€€ €ﬂ     €ﬂﬂﬂﬂﬂ  €     € €ﬂﬂﬂﬂ‹ €ﬂﬂﬂﬂﬂ€   €ﬂ€   €ﬂﬂﬂﬂ‹ €ﬂﬂﬂﬂﬂ‹
    LOCATE 10,9
    COLOR IR
    PRINT"€€€       €        €   €  €    € €     €  ‹ﬂ ﬂ‹  €    € €      €
    LOCATE 11,9
    COLOR IR
    PRINT"€€ €‹     €ﬂﬂﬂﬂﬂ   €   €  €‹‹‹‹ﬂ €     € €     € €‹‹‹‹ﬂ €      €
    LOCATE 12,9
    COLOR IR
    PRINT"€€   €‹   €         ﬂ€ﬂ   €    € €     € €ﬂﬂﬂﬂﬂ€ €    € €      €
    LOCATE 13,9
    COLOR IR
    PRINT"€€     €‹ €‹‹‹‹‹     €    €‹‹‹‹ﬂ €‹‹‹‹‹€ €     € €    € €‹‹‹‹‹ﬂ
COOLR:
    LOCATE 14,5
    COLOR IR+2
    PRINT"P         R         A         C         T         I         C         E"
    IR=IR+0.3
    LET A$=INKEY$
    IF A$=CHR$(27) THEN RUN"KEYBPR.EXE"
    GOTO COOLR
    END




