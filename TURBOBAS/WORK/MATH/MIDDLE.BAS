   CLS
   INPUT"������� �������������� �� �������� �����:",A
   PRINT
   COLOR 15
   DIM CALC(A)
   FOR X=1 TO A
   PRINT"������� ����� #"X:INPUT"",CALC(X)
   NEXT X
   FOR X=1 TO A
   Z=CALC(X)+Z
   NEXT X
   PRINT"������� ��������������:";Z/CINT(A)
   END

