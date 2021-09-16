   SCREEN 12
COOL:
   LINE(0,0)-(640,480),4,BF
   PAINT(1,1),4,15
   RANDOMIZE TIMER
   N=10
   M=10
   J=5
   K=5
   U=8
   I=7
   FOR A=1 TO 500
   X%=RND*N+300
   Y%=RND*M+200
   LINE(X%-K,Y%-K)-(X%+J,Y%+J),U,BF
   SWAP U,I
   N=N-1
   M=M+1
   J=J+0.3
   K=K-0.3
   NEXT
   FOR NA=1 TO 5000
   NEXT NA
   LET A$=INKEY$
   IF A$=CHR$(27) THEN END
   GOTO COOL
   END
