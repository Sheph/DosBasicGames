  CLS
  SCREEN 12
  DIM WHO%(10000)
  PAINT(1,1),4,15
  PRINT"Создан Воробьёвом Станиславом и Димой Бояриновым"
  FOR A=0 TO 400
  FOR B=0 TO 30
  IF POINT(A,B)=15 THEN LINE(A*1.6+5,B*1.6+100)-(A*1.6+6,B*1.6+101),1,BF:DRAW"C9 R1"
  NEXT
  NEXT
  GET(1,98)-(623,128),WHO%
  DEF SEG=VARSEG(WHO%(0))
  BSAVE"CREATED.HMS",VARPTR(WHO%(0)),20000
