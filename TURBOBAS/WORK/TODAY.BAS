  CLS
  DATA "January","February","March","April","May","June","July","August","September","Octomber","November","December"
  LET NUM=VAL(MID$(DATE$,4,2))
  LET MONTH=VAL(MID$(DATE$,1,2))
  LET YEAR=VAL(RIGHT$(DATE$,4))
  LET HOUR=VAL(MID$(TIME$,1,2))
  LET MINUTE=VAL(MID$(TIME$,4,2))
  LET SECOND=VAL(RIGHT$(TIME$,2))
  LET DSC$="AM"
  FOR FOUT=1 TO MONTH
  READ MONTH$
  NEXT FOUT
  PRINT"Today is ";MONTH$;" the";NUM;"year";YEAR
  IF YEAR/4=CINT(YEAR/4) THEN PRINT"This year is a leap-year!" ELSE PRINT"This is not a leap-year!"
  IF HOUR>12 THEN DSC$="PM" ELSE HOUR=HOUR+12
  PRINT"Right now it's";HOUR-12;DSC$;",";MINUTE;"minutes and";SECOND;"seconds"
  PRINT"Good day!"
  END


