  CLS
  SCREEN 12
  A = 320
  B = 240
  SIZE% = 4
  PNTS% = 100
  N% = 2
  FOR X = 0 TO PNTS%
  B.X = X
  B.Y = Y
  LET Y = (X / SIZE%) ^ N%
  LINE (0, 240)-(640, 240), 15
  LINE (320, 0)-(320, 480), 15
  LINE (A - X, B - Y)-(A - B.X, B - B.Y), 4
  LINE (A + X, B - Y)-(A + B.X, B - B.Y), 4
  NEXT
  END

