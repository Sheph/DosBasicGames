  CLS
  SCREEN 12
  A=320
  B=240
  FOR X=0 TO 500
  B.X=X
  B.Y=Y
  LET Y=COS(SQR(X/10))*100-100
  LINE(A-X,B-Y)-(A-B.X,B-B.Y),10
  LINE(A+X,B-Y)-(A+B.X,B-B.Y),10
  NEXT
  PAINT(1,479),2,10
  END

