   COLOR 15
   PRINT"LOADING KEYRUS.COM"
   DELAY 0.8
'keyrus start
   SHELL"KEYRUS.COM"
   PRINT"LOADING PROGRAM"
   DELAY 0.8
'program start
   CLS
   SCREEN 9
   COLOR 14,0
   INPUT"������ ᢮� ���, ��������:",NAM$
   COLOR 3
   PRINT
   PRINT"������ �� ������ ����� ��������� � ����� �ࠪ⨪�!"
   PRINT"����� 㤠�!"
   DELAY 2
   CLS
   LINE(0,0)-(639,349),8,BF
   LINE(100,50)-(539,299),7,BF
   LINE(100,50)-(539,299),15,B
   COLOR 4,7
   LOCATE 5,32
   PRINT"�७�� ����������!"
   COLOR 14,7
   LOCATE 7,31
   PRINT"�롥�� ᫮������:"
A:
   COLOR 2
   LOCATE 9,30
   PRINT"       ����箪"
   COLOR 10
   LOCATE 10,30
   PRINT"       ��ਪ"
   LOCATE 11,30
   PRINT"���� 祬 ���� �����"
   LOCATE 12,30
   PRINT"    ������ 祫����"
   LOCATE 13,30
   PRINT"       �����"
   LOCATE 14,25
   PRINT"   �祭� ����� (����������)"
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" THEN GOTO F
   IF A$=CHR$(0)+"P" THEN GOTO B
   IF A$=CHR$(13) THEN NeedT=5:SKILL$="�������":COLOR 3:LOCATE 15,15:PRINT"��!":GOTO COOL
   IF A$=CHR$(27) THEN RUN"KEYBPR.EXE"
   GOTO A
B:
   COLOR 10
   LOCATE 9,30
   PRINT"       ����箪"
   COLOR 2
   LOCATE 10,30
   PRINT"       ��ਪ"
   LOCATE 11,30
   COLOR 10
   PRINT"���� 祬 ���� �����"
   LOCATE 12,30
   PRINT"    ������ 祫����"
   LOCATE 13,30
   PRINT"       �����"
   LOCATE 14,25
   PRINT"   �祭� ����� (����������)"
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" THEN GOTO A
   IF A$=CHR$(0)+"P" THEN GOTO C
   IF A$=CHR$(13) THEN NeedT=4:SKILL$="������":COLOR 3:LOCATE 15,15:PRINT"�� ��ਪ!":GOTO COOL
   IF A$=CHR$(27) THEN RUN"KEYBPR.EXE"
   GOTO B
C:
   COLOR 10
   LOCATE 9,30
   PRINT"       ����箪"
   LOCATE 10,30
   PRINT"       ��ਪ"
   LOCATE 11,30
   COLOR 2
   PRINT"���� 祬 ���� �����"
   COLOR 10
   LOCATE 12,30
   PRINT"    ������ 祫����"
   LOCATE 13,30
   PRINT"       �����"
   LOCATE 14,25
   PRINT"   �祭� ����� (����������)"
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" THEN GOTO B
   IF A$=CHR$(0)+"P" THEN GOTO D
   IF A$=CHR$(13) THEN NeedT=3:SKILL$="����� ��� ���� �����":COLOR 3:LOCATE 15,15:PRINT"�� �� ������?":GOTO COOL
   IF A$=CHR$(27) THEN RUN"KEYBPR.EXE"
   GOTO C
D:
   COLOR 10
   LOCATE 9,30
   PRINT"       ����箪"
   LOCATE 10,30
   PRINT"       ��ਪ"
   LOCATE 11,30
   PRINT"���� 祬 ���� �����"
   LOCATE 12,30
   COLOR 2
   PRINT"    ������ 祫����"
   LOCATE 13,30
   COLOR 10
   PRINT"       �����"
   LOCATE 14,25
   PRINT"   �祭� ����� (����������)"
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" THEN GOTO C
   IF A$=CHR$(0)+"P" THEN GOTO E
   IF A$=CHR$(13) THEN NeedT=2:SKILL$="������� �������":COLOR 3:LOCATE 15,15:PRINT"����-������!!!":GOTO COOL
   IF A$=CHR$(27) THEN RUN"KEYBPR.EXE"
   GOTO D
E:
   COLOR 10
   LOCATE 9,30
   PRINT"       ����箪"
   LOCATE 10,30
   PRINT"       ��ਪ"
   LOCATE 11,30
   PRINT"���� 祬 ���� �����"
   LOCATE 12,30
   PRINT"    ������ 祫����"
   LOCATE 13,30
   COLOR 2
   PRINT"       �����"
   COLOR 10
   LOCATE 14,25
   PRINT"   �祭� ����� (����������)"
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" THEN GOTO D
   IF A$=CHR$(0)+"P" THEN GOTO F
   IF A$=CHR$(13) THEN NeedT=1:SKILL$="������":COLOR 3:LOCATE 15,15:PRINT"��, ��?":GOTO COOL
   IF A$=CHR$(27) THEN RUN"KEYBPR.EXE"
   GOTO E
F:
   COLOR 10
   LOCATE 9,30
   PRINT"       ����箪"
   LOCATE 10,30
   PRINT"       ��ਪ"
   LOCATE 11,30
   PRINT"���� 祬 ���� �����"
   LOCATE 12,30
   PRINT"    ������ 祫����"
   LOCATE 13,30
   PRINT"       �����"
   LOCATE 14,25
   COLOR 2
   PRINT"   �祭� ����� (����������)"
   LET A$=INKEY$
   IF A$=CHR$(0)+"H" THEN GOTO E
   IF A$=CHR$(0)+"P" THEN GOTO A
   IF A$=CHR$(13) THEN NeedT=0.5:SKILL$="����� ������ (����������)":COLOR 3:LOCATE 15,15:PRINT"��ᬮ�ਬ ��� �� ��������!!!":GOTO COOL
   IF A$=CHR$(27) THEN RUN"KEYBPR.EXE"
   GOTO F
   END
COOL:
   COLOR 9
   LOCATE 16,15
   PRINT"��� �㦭� ������";NeedT*150;"�窮� �⮡� �먣���!"
   LOCATE 17,15
   PRINT"������ ���� �������!"
   DO
   LOOP WHILE INKEY$=""
   CLS
   COLOR 4,0
   LOCATE 12,37
   FOR ART=1 TO 5
   LOCATE 12,37
   PRINT 6-ART
   DELAY 0.7
   NEXT ART
   LOCATE 12,36
   PRINT"�����!"
   DELAY 0.7
   CLS
   SCORE=0
   NEEDSCORE=NeedT*150
   COF=0
MAN:
   COLOR 2
   LOCATE 23,1
   PRINT"    �� ᨬ���� ���� � ���"
   LOCATE 23,30
   PRINT CHR$(24)
   COLOR 9
   LOCATE 19,1
   PRINT"     ��   1!   2    3�   4;   5%   6:   7?   8*   9(   0)   -_   =+   \/"
   PRINT"             ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��"
   PRINT"             ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��"
   PRINT"                ��   ��   ��   ��   ��   ��   ��   ��  ��   .,"
   LOCATE 19,17
   PRINT CHR$(34)
   LINE(30,250)-(590,307),13,B
   LINE(31,251)-(589,306),12,B
   LINE(31,265)-(589,265),15
   LINE(31,280)-(589,280),15
   LINE(31,294)-(589,294),15
'OTHER LINES
   FOR AG=32 TO 589 STEP+40
   FOR AGS=252 TO 265
   PSET(AG,AGS),15
   NEXT
   NEXT
   LINE(32,252)-(32,264),0
   FOR AG=50 TO 550 STEP+40
   FOR AGS=265 TO 294
   PSET(AG,AGS),15
   NEXT
   NEXT
   LINE(50,266)-(50,293),0
   PSET(50,280),15
   FOR AG=80 TO 540 STEP+39
   FOR AGS=294 TO 305
   PSET(AG,AGS),15
   NEXT:NEXT
   LINE(80,295)-(80,305),0
START:
   LINE(1,1)-(635,200),4,B
   LINE(2,2)-(634,199),14,B
   LET TIMEPAST=0
   TIMER ON
   STARTTIME=TIMER
   RANDOMIZE TIMER
   X%=INT(RND * 94)
   IF X%=0 THEN LET SYMB$="�"
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
   IF X%=14 THEN LET SYMB$="�"
   IF X%=15 THEN LET SYMB$="�"
   IF X%=16 THEN LET SYMB$="�"
   IF X%=17 THEN LET SYMB$="�"
   IF X%=18 THEN LET SYMB$="�"
   IF X%=19 THEN LET SYMB$="�"
   IF X%=20 THEN LET SYMB$="�"
   IF X%=21 THEN LET SYMB$="�"
   IF X%=22 THEN LET SYMB$="�"
   IF X%=23 THEN LET SYMB$="�"
   IF X%=24 THEN LET SYMB$="�"
   IF X%=25 THEN LET SYMB$="�"
   IF X%=26 THEN LET SYMB$="�"
   IF X%=27 THEN LET SYMB$="�"
   IF X%=28 THEN LET SYMB$="�"
   IF X%=29 THEN LET SYMB$="�"
   IF X%=30 THEN LET SYMB$="�"
   IF X%=31 THEN LET SYMB$="�"
   IF X%=32 THEN LET SYMB$="�"
   IF X%=33 THEN LET SYMB$="�"
   IF X%=34 THEN LET SYMB$="�"
   IF X%=35 THEN LET SYMB$="�"
   IF X%=36 THEN LET SYMB$="�"
   IF X%=37 THEN LET SYMB$="�"
   IF X%=38 THEN LET SYMB$="�"
   IF X%=39 THEN LET SYMB$="�"
   IF X%=40 THEN LET SYMB$="�"
   IF X%=41 THEN LET SYMB$="�"
   IF X%=42 THEN LET SYMB$="�"
   IF X%=43 THEN LET SYMB$="�"
   IF X%=44 THEN LET SYMB$="�"
   IF X%=45 THEN LET SYMB$="�"
   IF X%=46 THEN LET SYMB$="."
   IF X%=47 THEN LET SYMB$="�"
   IF X%=48 THEN LET SYMB$="!"
   IF X%=49 THEN LET SYMB$="�"
   IF X%=50 THEN LET SYMB$=";"
   IF X%=51 THEN LET SYMB$="%"
   IF X%=52 THEN LET SYMB$=":"
   IF X%=53 THEN LET SYMB$="?"
   IF X%=54 THEN LET SYMB$="*"
   IF X%=55 THEN LET SYMB$="("
   IF X%=56 THEN LET SYMB$=")"
   IF X%=57 THEN LET SYMB$="_"
   IF X%=58 THEN LET SYMB$="+"
   IF X%=59 THEN LET SYMB$="/"
   IF X%=60 THEN LET SYMB$="�"
   IF X%=61 THEN LET SYMB$="�"
   IF X%=62 THEN LET SYMB$="�"
   IF X%=63 THEN LET SYMB$="�"
   IF X%=64 THEN LET SYMB$="�"
   IF X%=65 THEN LET SYMB$="�"
   IF X%=66 THEN LET SYMB$="�"
   IF X%=67 THEN LET SYMB$="�"
   IF X%=68 THEN LET SYMB$="�"
   IF X%=69 THEN LET SYMB$="�"
   IF X%=70 THEN LET SYMB$="�"
   IF X%=71 THEN LET SYMB$="�"
   IF X%=72 THEN LET SYMB$="�"
   IF X%=73 THEN LET SYMB$="�"
   IF X%=74 THEN LET SYMB$="�"
   IF X%=75 THEN LET SYMB$="�"
   IF X%=76 THEN LET SYMB$="�"
   IF X%=77 THEN LET SYMB$="�"
   IF X%=78 THEN LET SYMB$="�"
   IF X%=79 THEN LET SYMB$="�"
   IF X%=80 THEN LET SYMB$="�"
   IF X%=81 THEN LET SYMB$="�"
   IF X%=82 THEN LET SYMB$="�"
   IF X%=83 THEN LET SYMB$="�"
   IF X%=84 THEN LET SYMB$="�"
   IF X%=85 THEN LET SYMB$="�"
   IF X%=86 THEN LET SYMB$="�"
   IF X%=87 THEN LET SYMB$="�"
   IF X%=88 THEN LET SYMB$="�"
   IF X%=89 THEN LET SYMB$="�"
   IF X%=90 THEN LET SYMB$="�"
   IF X%=91 THEN LET SYMB$="�"
   IF X%=92 THEN LET SYMB$=","
   IF X%=93 THEN LET SYMB$=CHR$(34)
   Y%=INT(RND * 73)
   Z%=INT(RND * 13)
DOR:
   IF SCORE>NEEDSCORE THEN GOTO WINNER
   IF SCORE<-49 THEN GOTO LOOSER
   IF Z%<1 THEN Z%=3
   LOCATE Z%+2,2+Y%
   COLOR Z%
   PRINT SYMB$
   COLOR 3
   IF TIMEPAST>NeedT THEN LOCATE 17,1:PRINT"���������:�������!":SOUND 100,2:DELAY 0.5:SCORE=SCORE-5:LINE(0,0)-(639,240),0,BF:GOTO CHKS
   TIMEPAST=TIMER - STARTTIME
   LOCATE 16,1
   COLOR 4
   PRINT"�������� �������:";NeedT-CINT(TIMEPAST);"ᥪ㭤(�)(�)  "
   COLOR 3
   LET A$=INKEY$
   IF A$=SYMB$ THEN LOCATE 17,1:PRINT"���������:���������!":SOUND 800,2:DELAY 0.5:SCORE=SCORE+5:LINE(0,0)-(639,240),0,BF:GOTO CHK
   IF A$=CHR$(27) THEN RUN"KEYBPR.EXE"
   COLOR 4
   LOCATE 16,63
   PRINT"���� ����:";SCORE
   LOCATE 17,63
   PRINT"�������:";CINT(COF);"%"
   GOTO DOR
   END
CHK:
'   IF (NeedT-CINT(TIMEPAST))=0 AND NeedT=1 THEN COF=COF+2
'   IF (NeedT-(NeedT-CINT(TIMEPAST)))<=NeedT-1 THEN COF=COF+0.7
'   IF (NeedT-(NeedT-CINT(TIMEPAST)))<=NeedT-2 THEN COF=COF+0.5
'   IF (NeedT-(NeedT-CINT(TIMEPAST)))<=NeedT-3 THEN COF=COF+0.3
   TRY=TRY+1
   GOT=GOT+1
   LET COF=(GOT/TRY)*100
   GOTO START
   END
CHKS:
'   IF NeedT=1 THEN COF=COF-1.5:GOTO START
'   COF=COF-1
   TRY=TRY+1
   LET COF=(GOT/TRY)*100
   GOTO START
   END
WINNER:
   CLS
   RA=10
   RO=10
   RN=630
   DN=340
   FOR SDF=1 TO 10
   LINE(RA,RO)-(RN,DN),SDF,BF
   RA=RA+10
   RO=RO+10
   RN=RN-10
   DN=DN-10
   NEXT SDF
   LINE(0,100)-(639,250),3,BF
   COLOR 4,3
   LOCATE 9,1
   PRINT"                                 �� ����������!"
   COLOR 9
   PRINT
   PRINT"                                 ��� �窨:";SCORE
   PRINT
   PRINT"                    ��� ३⨭�(᪮���� ����� ᨬ�����):";CINT(COF);"%"
   PRINT
   PRINT"                                 ��� ᫮������:";SKILL$
   COLOR 1
   PRINT
   PRINT"                                 ������ ����!"
   DO
   LOOP UNTIL INKEY$=CHR$(27)
   OPEN"INFO.DAT" FOR APPEND AS #1
   PRINT #1,SCORE,CINT(COF)
   CLOSE
   OPEN"NAMES.DAT" FOR APPEND AS #2
   PRINT #2,NAM$,SKILL$
   CLOSE
   RUN"KEYBPR.EXE"
LOOSER:
   CLS
   RA=10
   RO=10
   RN=630
   DN=340
   PAS=15
   FOR SDF=1 TO 20
   LINE(RA,RO)-(RN,DN),PAS,BF
   RA=RA+5
   RO=RO+5
   RN=RN-5
   DN=DN-5
   IF PAS=4 THEN PAS=15 ELSE PAS=4
   NEXT SDF
   LINE(0,100)-(639,250),3,BF
   COLOR 5,3
   LOCATE 9,1
   PRINT"                                �� �������!"
   COLOR 8
   PRINT
   PRINT"                             ��� ������ �窨:";SCORE
   PRINT
   PRINT"          ��� ����� ��������� ३⨭�(᪮���� ����� ᨬ�����):";CINT(COF);"%"
   PRINT
   PRINT"                             ��� �㯠� ᫮������:";SKILL$
   COLOR 6
   PRINT
   PRINT"                             ����� ����, ���騪!"
   DO
   LOOP UNTIL INKEY$=CHR$(27)
   RUN"KEYBPR.EXE"
