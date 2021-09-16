CLS
COLOR 14
PRINT"This program will help you to restore your missing .DAT files"
PRINT"If you want to recreate NAME.DAT and SCORE.DAT press 'R'"
PRINT"If you want to quit, press 'Q'"
POO:
LET A$=INKEY$
IF A$="R" OR A$="r" THEN GOTO RECREATE
IF A$="Q" OR A$="q" THEN END
GOTO POO
END
RECREATE:
OPEN"SCORE.DAT" FOR OUTPUT AS #1
PRINT #1,5,280
CLOSE
OPEN"NAMES.DAT" FOR OUTPUT AS #1
PRINT #1,"Ds PLUS! Guys"
CLOSE
COLOR 4
PRINT
PRINT"All done!"
DELAY 0.5
CLS
END
