   CLS
   SCREEN 12
   ON ERROR GOTO NOFILE
   OPEN"HOLMES.DAT" FOR INPUT AS #1
   ON ERROR GOTO NOFILE
   INPUT #1,SCR%,PALA%,SND$,GRA$,PAL$
   ON ERROR GOTO NOFILE
   CLOSE
PROC:
   DIM FIRE(5000)
   DEF SEG=VARSEG(FIRE(0))
   ON ERROR GOTO NOFIRE
   BLOAD"SETUP.HMS",VARPTR(FIRE(0))
   ON ERROR GOTO NOFIRE
   LINE(0,59)-(640,59),15
   PAINT(1,1),1,15
   ON ERROR GOTO NOFIRE
   PUT(200,1),FIRE,PSET
   ON ERROR GOTO NOFIRE
   GOTO START
NOFIRE:
   NOF=1
   RESUME START
   END
NOFILE:
   SCR%=12
   PALA%=0
   SND$="�������� �����"
   GRA$="640X480 VGA"
   PAL$="�����������"
   RESUME PROC
START:
   COLOR 15,8
   LINE(100,150)-(540,400),15,B
   PAINT(1,470),3,15
   LINE(105,155)-(535,395),15,B
   PAINT(103,155),8,15
   IF NOF=1 THEN COLOR 4:LOCATE 2,32:PRINT"NO SETUP.HMS FILE!"
   FOR X=0 TO 640 STEP 2.5
   FOR Y=0 TO 480 STEP 2.5
   IF POINT(X,Y)=1 THEN PSET(X,Y),9
   IF POINT(X,Y)=8 THEN PSET(X,Y),7
   NEXT
   NEXT
OPA:
   COLOR 4
   LOCATE 15,26
   PRINT"�������� �������:";SND$;"       "
   COLOR 5
   LOCATE 17,26
   PRINT"�������:";PAL$;"         "
   LOCATE 19,26
   PRINT"����������� �����:";GRA$;"        "
   LOCATE 21,26
   PRINT"��������� ��������� "
   LET A$=INKEY$
   IF A$=CHR$(13) AND DFN%=0 THEN SND$="��� ������":DFN%=1:GOTO OPA
   IF A$=CHR$(13) AND DFN%=1 THEN SND$="�������� �����":DFN%=0:GOTO OPA
   IF A$=CHR$(0)+"P" THEN GOTO OPB
   IF A$=CHR$(0)+"H" THEN GOTO OPD
   FOR PAUS=1 TO 1000
   NEXT
   GOTO OPA
   END
OPB:
   COLOR 5
   LOCATE 15,26
   PRINT"�������� �������:";SND$;"       "
   COLOR 4
   LOCATE 17,26
   PRINT"�������:";PAL$;"         "
   COLOR 5
   LOCATE 19,26
   PRINT"����������� �����:";GRA$;"        "
   LOCATE 21,26
   PRINT"��������� ��������� "
   LET A$=INKEY$
   IF A$=CHR$(13) AND PALA%=0 THEN PAL$="�����-�����":PALA%=1:GOTO OPB
   IF A$=CHR$(13) AND PALA%=1 THEN PAL$="������ ���":PALA%=2:GOTO OPB
   IF A$=CHR$(13) AND PALA%=2 THEN PAL$="�����������":PALA%=0:GOTO OPB
   IF A$=CHR$(0)+"P" THEN GOTO OPC
   IF A$=CHR$(0)+"H" THEN GOTO OPA
   FOR PAUS=1 TO 1000
   NEXT
   GOTO OPB
   END
OPC:
   COLOR 5
   LOCATE 15,26
   PRINT"�������� �������:";SND$;"       "
   LOCATE 17,26
   PRINT"�������:";PAL$;"         "
   COLOR 4
   LOCATE 19,26
   PRINT"����������� �����:";GRA$;"        "
   COLOR 5
   LOCATE 21,26
   PRINT"��������� ��������� "
   LET A$=INKEY$
   IF A$=CHR$(13) AND GRP%=0 THEN SCR%=9:GRP%=1:GRA$="640X350 VGA":GOTO OPC
   IF A$=CHR$(13) AND GRP%=1 THEN SCR%=11:GRP%=2:GRA$="640X480 CGA":GOTO OPC
   IF A$=CHR$(13) AND GRP%=2 THEN SCR%=12:GRP%=0:GRA$="640X480 VGA":GOTO OPC
   IF A$=CHR$(0)+"P" THEN GOTO OPD
   IF A$=CHR$(0)+"H" THEN GOTO OPB
   FOR PAUS=1 TO 1000
   NEXT
   GOTO OPC
   END
OPD:
   COLOR 5
   LOCATE 15,26
   PRINT"�������� �������:";SND$;"       "
   LOCATE 17,26
   PRINT"�������:";PAL$;"         "
   LOCATE 19,26
   PRINT"����������� �����:";GRA$;"        "
   LOCATE 21,26
   COLOR 4
   PRINT"��������� ��������� "
   LET A$=INKEY$
   IF A$=CHR$(13) THEN GOTO RECORD
   IF A$=CHR$(0)+"P" THEN GOTO OPA
   IF A$=CHR$(0)+"H" THEN GOTO OPC
   FOR PAUS=1 TO 1000
   NEXT
   GOTO OPD
   END
RECORD:
   OPEN"HOLMES.DAT" FOR OUTPUT AS #1
   WRITE #1,SCR%,PALA%,SND$,GRA$,PAL$
   CLOSE
   END

