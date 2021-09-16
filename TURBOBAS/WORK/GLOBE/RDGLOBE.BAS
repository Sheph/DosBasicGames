  CLS
  DIM GLOBE(5500)
  DEF SEG=VARSEG(GLOBE(0))
  BLOAD"GLOBE.GRA",VARPTR(GLOBE(0))
  INPUT"Вывести цифровые данные о файле ?(Y/N) ",A$
  IF UCASE$(A$)="Y" THEN ELSE END
  FOR N=0 TO 5500
  WRITE GLOBE%(N)
  NEXT N

 
