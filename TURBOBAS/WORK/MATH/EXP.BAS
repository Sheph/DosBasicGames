  CLS
  SCREEN 12
  A=320
  B=240
  FOR X=0 TO 50
  B.X=X
  B.Y=Y
  LET Y=EXP(X/5)
  LINE(0,240)-(640,240),15
  LINE(320,0)-(320,480),15
  LINE(A-X,B-Y)-(A-B.X,B-B.Y),4
  LINE(A+X,B-Y)-(A+B.X,B-B.Y),4
  FOR N=1 TO 200
  NEXT N
  NEXT
  END

