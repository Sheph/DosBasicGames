   CLS
   INPUT"‘…„…… €ˆ”Œ…’ˆ—…‘ŠŽ… ˆ‡ ‘ŠŽ‹œŠˆ• —ˆ‘…‹:",A
   PRINT
   COLOR 15
   DIM CALC(A)
   FOR X=1 TO A
   PRINT"‚‚…„ˆ’… —ˆ‘‹Ž #"X:INPUT"",CALC(X)
   NEXT X
   FOR X=1 TO A
   Z=CALC(X)+Z
   NEXT X
   PRINT"‘…„…… €ˆ”Œ…’ˆ—…‘ŠŽ…:";Z/CINT(A)
   END

