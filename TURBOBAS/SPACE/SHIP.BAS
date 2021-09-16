c$(0) = "&hB0&h20&h23&h40&h43&h60&h63&h80&h83&hA0&HBD&HC0&HE0&HE3&hB0"
c$(1) = "&hB1&h21&h24&h41&h44&h61&h64&h81&h84&hA1&HBD&HC1&HE1&HE4&hB1"
c$(2) = "&hB2&h22&h25&h42&h45&h62&h65&h82&h85&hA2&HBD&HC2&HE2&HE5&hB2"
c$(3) = "&hB3&h28&h2B&h48&h4B&h68&h6B&h88&h8B&hA3&HBD&HC3&HE8&HEB&hB3"
c$(4) = "&hB4&h29&h2C&h49&h4C&h69&h6C&h89&h8C&hA4&HBD&HC4&HE9&HEC&hB4"
c$(5) = "&hB5&h2A&h2D&h4A&h4D&h6A&h6D&h8A&h8D&hA5&HBD&HC5&HEA&HED&hB5"
c$(6) = "&hB6&h30&h33&h50&h53&h70&h73&h90&h93&hA6&HBD&HC6&HF0&HF3&hB6"
c$(7) = "&hB7&h31&h34&h51&h54&h71&h74&h91&h94&hA7&HBD&HC7&HF1&HF4&hB7"
c$(8) = "&hB8&h32&h35&h52&h55&h72&h75&h92&h95&hA8&HBD&HC8&HF2&HF5&hB8"
c$ = "&hB8&h32&h35&h52&h55&h72&h75&h92&h95&hA8&HBD&HC8&HF2&HF5&hB8"
DIM sfx$(30)
sfx$(1) = "&H00&H00&H00&H90&CB0&H00&HF0&H10&H09&H00&H05&H0A&H00&H00&HF0&H1"
sfx$(3) = "&H00&H03&H03&H00&H03&HF2&HE3&H23&H25&H25&HC0&H00&H00&H00&H3F&H3"
sfx$(4) = "&H00&H80&H00&H00&H00&HF0&HB9&HA2&H04&H89&HC0&H0E&H00&H00&H20&H1"
sfx$(15) = "&H00&H00&H00&H03&H03&H64&H65&HA9&H68&H25&HC0&H05&H01&H01&H33&H0"
sfx$(20) = "&H00&H00&H00&H00&H00&H82&H34&HA2&HC7&H89&HC0&H0E&H00&H03&H20&H0"
sfx$(22) = "&H00&H00&H00&H00&H1E&H55&H88&H5B&H2F&H00&HC0&H07&H03&H00&H2E&H0"
STARTOFSTARTS:
     CLS
     SCREEN 12
     DIM SHIP%(10000)
     DIM STAR%(100)
     DIM ROCK%(5000)
     DIM CIRC%(5000)
     DIM ROCK2%(5000)
     DIM SHOT%(5000)
     SKILL=2
     INV=0
     LIV=4
     SCR=0
     LEV=1
     X=320
     Y=351
     P=100
     L=10
     A=50
     B=50
     I=50
     N=100
     K%=5
     J%=400
     L%=300
     C=20
     D=20
     F=500
     V=50
     BONA=1
     BONB=1
     BONC=1
     BOND=1
'SHIP
     LINE(100,100)-(120,120),15
     LINE(120,120)-(120,160),15
     LINE(120,160)-(80,160),15
     LINE(80,160)-(80,120),15
     LINE(80,120)-(100,100),15
     FOR ZAN=1 TO 15
     CIRCLE(100,130),ZAN,4
     NEXT ZAN
     CIRCLE(100,130),15,15
     PAINT(100,155),3,15
     CIRCLE(125,140),20,15,,,5
     PAINT(125,140),2,15
     CIRCLE(75,140),20,15,,,5
     PAINT(75,140),2,15
'STAR
     CIRCLE(300,300),1,8
     PSET(300,300),8
'ROCK
     LINE(200,300)-(230,320),15
     LINE(230,320)-(190,330),15
     LINE(190,330)-(150,300),15
     LINE(150,300)-(200,300),15
     PAINT(200,310),7,15
'CIRCLED ROCK
     CIRCLE(500,100),20,15
     PAINT(500,100),7,15
'ROCK 2
     LINE(50,300)-(100,320),15
     LINE(100,320)-(10,330),15
     LINE(10,330)-(50,300),15
     PAINT(30,320),7,15
'SHOT
     PO=300
     FOR GHQ=1 TO 20
     FOR GH=1 TO 3
     CIRCLE(500,PO),GH,9
     NEXT GH
     PO=PO+1
     NEXT
'MEMORY
     GET(60,95)-(140,170),SHIP%
     GET(298,295)-(302,302),STAR%
     GET(145,285)-(238,338),ROCK%
     GET(480,60)-(530,130),CIRC%
     GET(5,285)-(105,340),ROCK2%
     GET(490,290)-(510,330),SHOT%
     CLS
START:
     COLOR 4
     LOCATE 1,1
     PRINT"LIVES:";LIV
     LOCATE 1,35
     PRINT"SCORE:";CINT(SCR)
     LOCATE 1,70
     PRINT"LEVEL:";LEV
     PUT(X,Y),SHIP%,PSET
     PUT(10+K%,L),STAR%,PSET
     PUT(10+J%,I),STAR%,PSET
     PUT(10+P%,N),STAR%,PSET
     PUT(20+A,B),ROCK%,PSET
     PUT(15+C,D),CIRC%,PSET
     PUT(20+F,V),ROCK2%,PSET
     IF SHT=1 THEN PUT(Q,W),SHOT%,PSET
     LINE(0,417)-(640,480),0,BF
     LET A$=INKEY$
SKLA:
     IF A$=CHR$(0)+"M" THEN SND=22:GOSUB BLASTER:X=X+10:MOV=0
     IF A$=CHR$(0)+"K" THEN SND=22:GOSUB BLASTER:X=X-10:MOV=0
     IF A$="T" OR A$="t" THEN SND=15:GOSUB BLASTER:GOTO TALK
     IF SHT=1 THEN GOTO ARG
     IF A$=CHR$(0)+"H" THEN SND=1:GOSUB BLASTER:GOTO SHOT
ARG:
     IF A$=CHR$(27) THEN GOTO GAMEOVER
     L=L+4
     N=N+4
     I=I+4
     B=B+SKILL
     D=D+(SKILL+1)
     IF SHT=1 THEN W=W-8
     V=V+(SKILL+1.5)
     IF B > 423 THEN B=50:GOTO CLN
     IF SHT=1 AND W < 30 THEN SHT=0:CLS
UO:
     IF D > 405 THEN GOTO CRC
     IF V > 413 THEN GOTO CHN
     IF L > 450 THEN L=10:K%=INT(RND * 590)
     IF N > 450 THEN N=50:P%=INT(RND * 590)
     IF I > 450 THEN I=100:J%=INT(RND * 590)
     IF X>550 THEN X=X-11
     IF X<30 THEN X=X+11
'CHECK FOR ROCKS
     FOR KJM=X+10 TO X+70
     IF POINT(KJM,Y+5)=7 THEN SND=20:GOSUB BLASTER:COLOR 14:LOCATE 2,30:PRINT"YOU WAS SMASHED BY A ROCK":GOTO BOOM
     NEXT KJM
'CHECK AMMO FOR CIRCLE
     FOR KJM=C+15 TO C+55
     IF POINT(KJM,D+60)=9 THEN SND=4:GOSUB BLASTER:FOR KM=1 TO 30 STEP+0.05:CIRCLE(KJM,D+60),KM,4:NEXT KM:CLS:SHT=0:SCR=SCR+2:GOTO CRC
     NEXT KJM
'CHECK AMMO FOR ROCK1
     FOR KJM=A+20 TO A+110
     IF POINT(KJM,B+60)=9 THEN SND=4:GOSUB BLASTER:FOR KM=1 TO 30 STEP+0.05:CIRCLE(KJM,B+60),KM,4:NEXT KM:CLS:SHT=0:SCR=SCR+1:GOTO CLN
     NEXT KJM
'CHECK AMMO FOR ROCK2
     FOR KJM=F+20 TO F+120
     IF POINT(KJM,V+60)=9 THEN SND=4:GOSUB BLASTER:FOR KM=1 TO 30 STEP+0.05:CIRCLE(KJM,V+60),KM,4:NEXT KM:CLS:SHT=0:SCR=SCR+3:GOTO CHN
     NEXT KJM
'BONUSES
     IF BONA=1 AND SCR>49 THEN SND=3:GOSUB BLASTER:LIV=LIV+1:BONA=0:SKILL=4:LEV=2
     IF BONB=1 AND SCR>99 THEN SND=3:GOSUB BLASTER:LIV=LIV+2:BONB=0:SKILL=5:LEV=3
     IF BONC=1 AND SCR>149 THEN SND=3:GOSUB BLASTER:LIV=LIV+4:BONC=0:SKILL=6:LEV=4
     IF BOND=1 AND SCR>199 THEN SND=3:GOSUB BLASTER:LIV=LIV+6:BOND=0:SKILL=8:LEV=5
     IF SCR>279 THEN SND=3:GOSUB BLASTER:GOTO WINNER
'CHECK FOR DEATH
     IF MOV>300 THEN SND=20:GOSUB BLASTER:MOV=0:COLOR 14:LOCATE 2,20:PRINT"YOU WERE STANDING FOR TOO LONG ON ONE PLACE":GOTO BOOM
     MOV=MOV+1
     GOTO START
     END
CLN:
     B=50
     MN%=INT(RND * 500)
     LET A=MN%
     GOTO UO
     END
CHN:
     V=50
     MZ%=INT(RND * 500)
     LET F=MZ%
     GOTO UO
     END
CRC:
     D=20
     MK%=INT(RND * 500)
     LET C=MK%
     GOTO START
     END
BOOM:
     IF INV=1 THEN LOCATE 2,1:PRINT"                                                                         ":GOTO START
     FOR WQ=1 TO 30 STEP+0.05
     CIRCLE(X,Y),WQ,4
     NEXT WQ
     FOR WQ=1 TO 30 STEP+0.05
     CIRCLE(X+30,Y+20),WQ,4
     NEXT WQ
     FOR WQ=1 TO 30 STEP+0.05
     CIRCLE(X+50,Y+30),WQ,4
     NEXT WQ
     FOR WQ=1 TO 30 STEP+0.05
     CIRCLE(X+40,Y+60),WQ,4
     NEXT WQ
     DELAY 1.5
     B=50:I=50:N=100:X=320:D=20:LIV=LIV-1:V=50:SHT=0:MOV=0
     IF LIV<0 THEN GOTO GAMEOVER
     CLS
     GOTO START
     END
SHOT:
     LET Q=X+30
     LET W=Y-49
     LET SHT=1
     GOTO START
     END
GAMEOVER:
     LOCATE 1,1
     COLOR 4
     PRINT"LIVES: 0  "
     FOR ZA=1 TO 500
     LOCATE 15,35
     GTA%=INT(RND * 15)
     COLOR GTA%
     PRINT"GAME OVER"
     FOR KLO=1 TO 500
     NEXT KLO
     NEXT ZA
     IF SCR>130 THEN GOTO SCRWRITE
     CLS
     GOTO AGAIN
     END
SCRWRITE:
     CLS
     COLOR 14
     LINE(0,20)-(640,20)
     LOCATE 1,1
     PRINT"NAME"
     LOCATE 1,35
     PRINT"LEVEL"
     LOCATE 1,70
     PRINT"SCORE"
     LOCATE 3,1
     OPEN "SCORE.DAT" FOR INPUT AS #1
     DO
     INPUT #1,GO,AO
     LOCATE ,35
     COLOR 4
     PRINT GO,"                           ";AO
     LOOP UNTIL (EOF(1))
     CLOSE
     LOCATE 3,1
     OPEN "NAMES.DAT" FOR INPUT AS #2
     DO
     INPUT #2,NAM$
     LOCATE ,1
     PRINT NAM$
     LOOP UNTIL (EOF(2))
     CLOSE
'WRITERECORD
     COLOR 3
     LOCATE ,1
     INPUT"Enter your name:",NAMU$
     OPEN "NAMES.DAT" FOR APPEND AS #3
     PRINT #3,NAMU$
     CLOSE
     OPEN "SCORE.DAT" FOR APPEND AS #4
     PRINT #4,LEV,SCR
     CLOSE #4
     CLS
AGAIN:
     LOCATE 15,26
     COLOR 12
     PRINT"DO YOU WANT TO PLAY AGAIN ?(Y/N)"
ARGA:
     LET A$=INKEY$
     IF A$="Y" OR A$="y" THEN CLS:GOTO STARTOFSTARTS
     IF A$="N" OR A$="n" THEN CLS:RUN"SPACE.EXE"
     GOTO ARGA
     END
TALK:
     COLOR 15
     LOCATE 2,1
     INPUT"Player:",LSD$
     IF LSD$="MULTIPLANE" OR LSD$="multiplane" THEN LIV=LIV+2
     IF LSD$="SKILL0" OR LSD$="skill0" THEN SKILL=0
     IF LSD$="SKILL1" OR LSD$="skill1" THEN SKILL=1
     IF LSD$="SKILL2" OR LSD$="skill2" THEN SKILL=2
     IF LSD$="SKILL3" OR LSD$="skill3" THEN SKILL=3
     IF LSD$="SKILL4" OR LSD$="skill4" THEN SKILL=4
     IF LSD$="SKILL5" OR LSD$="skill5" THEN SKILL=5
     IF LSD$="SKILL6" OR LSD$="skill6" THEN SKILL=6
     IF LSD$="SKILL7" OR LSD$="skill7" THEN SKILL=7
     IF LSD$="SKILL8" OR LSD$="skill8" THEN SKILL=8
     IF LSD$="SKILL9" OR LSD$="skill9" THEN SKILL=9
     IF LSD$="MEGAPLANE" OR LSD$="megaplane" THEN GOTO NEWPLANE
     IF LSD$="NORMALPLANE" OR LSD$="normalplane" THEN GOTO NORMAL
     IF LSD$="QUICKWIN" OR LSD$="quickwin" THEN GOTO WINNER
     IF LSD$="BIGSCORE" OR LSD$="bigscore" THEN SCR=SCR+100
     IF LSD$="HEAT" OR LSD$="heat" THEN SKILL=10
     IF LSD$="UPGRADE" OR LSD$="upgrade" THEN GOTO MEGALASER
     IF LSD$="OLDIES" OR LSD$="oldies" THEN GOTO NORMALLASER
     IF LSD$="HOWDY" OR LSD$="howdy" THEN LOCATE 2,1:PRINT"Hello, you stinky!         ":DELAY 2:CLS:GOTO START
     IF LSD$="SHET" OR LSD$="shet" THEN LOCATE 2,1:PRINT"And who are you ?          ":DELAY 2:CLS:GOTO START
     IF LSD$="SHADOWPLANE" OR LSD$="shadowplane" THEN GOTO SHADOW
     IF LSD$="INVULNER" OR LSD$="invulner" THEN INV=1
     IF LSD$="NOINVULNER" OR LSD$="noinvulner" THEN INV=0
     CLS
     GOTO START
     END
NEWPLANE:
     CLS
     LINE(100,100)-(120,130),15
     LINE(120,130)-(120,150),15
     LINE(120,150)-(100,130),15
     LINE(100,130)-(80,150),15
     LINE(80,150)-(80,130),15
     LINE(80,130)-(100,100),15
     PAINT(100,110),1,15
     CIRCLE(100,120),8,15
     PAINT(100,120),4,15
     GET(60,95)-(130,155),SHIP%
     CLS
     GOTO START
     END
NORMAL:
     CLS
     LINE(100,100)-(120,120),15
     LINE(120,120)-(120,160),15
     LINE(120,160)-(80,160),15
     LINE(80,160)-(80,120),15
     LINE(80,120)-(100,100),15
     FOR ZAN=1 TO 15
     CIRCLE(100,130),ZAN,4
     NEXT ZAN
     CIRCLE(100,130),15,15
     PAINT(100,155),3,15
     CIRCLE(125,140),20,15,,,5
     PAINT(125,140),2,15
     CIRCLE(75,140),20,15,,,5
     PAINT(75,140),2,15
     GET(60,95)-(140,170),SHIP%
     CLS
     GOTO START
     END
MEGALASER:
     CLS
     PO=300
     FOR GHQ=1 TO 28
     FOR GH=1 TO 5
     CIRCLE(500,PO),GH,9
     NEXT GH
     PO=PO+1
     NEXT
     GET(490,290)-(510,340),SHOT%
     CLS
     GOTO START
     END
NORMALLASER:
     CLS
     PO=300
     FOR GHQ=1 TO 20
     FOR GH=1 TO 3
     CIRCLE(500,PO),GH,9
     NEXT GH
     PO=PO+1
     NEXT
     GET(490,290)-(510,330),SHOT%
     CLS
     GOTO START
     END
SHADOW:
     CLS
     LINE(100,100)-(120,130),15
     LINE(120,130)-(120,138),15
     LINE(120,138)-(80,138),15
     LINE(80,138)-(80,130),15
     LINE(80,130)-(100,100),15
     PAINT(100,110),8,15
     CIRCLE(100,120),8,15
     PAINT(100,120),9,15
     LINE(110,114)-(100,80),15
     LINE(100,80)-(90,114),15
     PAINT(100,85),9,15
     GET(70,73)-(130,160),SHIP%
     CLS
     GOTO START
     END
WINNER:
     CLS
     DIM ROCKET%(30000)
     LOCATE 8,1
     COLOR 3
     ?"         ≤
     ?"        ∞€∞
     ?"       ∞€€€∞
     ?"      ≤€€€€€≤
     ?"      ≤€€€€€≤
     ?"      ≤€€€€€≤
     ?"     ≤€€€€€€€≤
     COLOR 2
     ?"    ≤€≤≤≤≤≤≤≤€≤
     COLOR 12
     ?"   ≤€≤  ∞∞∞  ≤€≤
     ?"   ≤≤   ∞∞∞   ≤≤
     ?"         ∞
     GET(1,100)-(160,300),ROCKET%
     CLS
     XA=500
     XB=390
     DO
     PUT(XA,XB),SHIP%,PSET
     XB=XB-1
     LOOP UNTIL XB<30
     DELAY 1.5
     COLOR 4
     LOCATE 1,33
     PRINT" CONGRATULATIONS!"
     DELAY 1.5
     LOCATE 2,33
     PRINT"YOU ARE THE WINNER!"
     S=250
     DELAY 1
     FOR IKL=1 TO 200
     PUT(30,S),ROCKET%,PSET
     S=S-1
     NEXT IKL
     COLOR 14
     LOCATE 5,20
     INPUT"Enter your name:",L$
'WRITE
     OPEN "NAMES.DAT" FOR APPEND AS #3
     PRINT #3,L$
     CLOSE
     OPEN "SCORE.DAT" FOR APPEND AS #4
     PRINT #4,LEV,SCR
     CLOSE #4
'MEMORY
MEM:
     CLS
     DIM TEXT%(10000)
     LOCATE 2,1
     COLOR 5
     PRINT" This game exports only with Dos Cover PLUS! Upgrade"
     PRINT"      Try to distribute it and we'll kill you"
     GET(1,5)-(425,55),TEXT%
     CLS
     ABC=420
'CREDITS
     DO
     PUT(100,ABC),TEXT%,PSET
     ABC=ABC-0.5
     LOOP UNTIL ABC<6
     DELAY 1
     CLS
     RUN"SPACE.EXE"
     END
BLASTER:
    chan% = VAL(MID$(sfx$(snd), 61, 4))
    FOR in = 1 TO 60 STEP 4
    rega$ = MID$(c$(chan%), in, 4): rega% = VAL(rega$)
    dat$ = MID$(sfx$(snd), in, 4): dat% = VAL(dat$)
    OUT &H388, rega%: FOR d% = 1 TO 6: b% = INP(&H388): NEXT
    OUT &H389, dat%: FOR d% = 1 TO 35: b% = INP(&H388): NEXT
    NEXT
    RETURN
    END
     









