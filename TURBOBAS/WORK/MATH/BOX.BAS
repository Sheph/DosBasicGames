  SCREEN 12
  CoordinateX = 250
  CoordinateY = 260
  FOR DRAWFIGURE = 1 TO 88
  LineColor = DRAWFIGURE
  LINE (CoordinateX, CoordinateY)-(CoordinateX + 50, CoordinateY - 30), LineColor
  LINE (CoordinateX + 50, CoordinateY - 30)-(CoordinateX + 150, CoordinateY - 30), LineColor
  LINE (CoordinateX + 150, CoordinateY - 30)-(CoordinateX + 100, CoordinateY + 20), LineColor
  LINE (CoordinateX + 100, CoordinateY + 20)-(CoordinateX + 50, CoordinateY + 20), LineColor
  LINE (CoordinateX + 50, CoordinateY + 20)-(CoordinateX, CoordinateY), LineColor
  PAINT (CoordinateX + 50, CoordinateY + 10), LineColor, LineColor
  CoordinateY = CoordinateY - 1
  FOR PAUSE = 1 TO 1000
  NEXT PAUSE
  NEXT DRAWFIGURE
  END

