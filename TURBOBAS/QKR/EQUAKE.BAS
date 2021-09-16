    REM "EARTHQUAKE VERSION 1.0"
    REM "YOU ARE NO SUPPOSED TO BE IN THIS FILE"
    REM "BECAUSE I MADE IT (VOROBIOV STANISLAV)"
    IF COMMAND$="/NOSTORY" OR COMMAND$="/nostory" THEN SCREEN 9:CLS:COLOR 15,0:GOTO START
    IF COMMAND$="/?" OR COMMAND$="-?" THEN GOTO ASKME
    IF COMMAND$="/INFO" OR COMMAND$="/info" THEN CLS:SCREEN 9:COLOR 15,0:GOTO INHL
    IF COMMAND$="/STUFF" OR COMMAND$="/stuff" THEN CLS:RUN"INFO.HLP"
    IF COMMAND$="/GOTO" OR COMMAND$="/goto" THEN CLS:GOTO WRN
'COMMANDS
    SCREEN 9
    CLS
'MOVIE
    COLOR 0,2
    COLOR 14
    LOCATE 1,1
    PRINT"WARNING! THIS GAME NEEDS LOT'S OF FREE DOS MEMORY!"
    LOCATE 2,1
    PRINT"YOU BETTER LOAD DOS WITHOUT ANY DRIVERS!"
    DO
    LOOP WHILE INKEY$=""
    CLS
   PALETTE 11,-24
   CIRCLE(450,450),500,15,,,0.7
   PAINT(400,300),8,15
   PAINT(1,1),11,15
   FOR Z=1 TO 150
   X%=INT(RND * 630)
   Y%=INT(RND * 350)
   PSET(X%,Y%),X%
   NEXT
   COLOR 14,0
   LOCATE 1,1
   PRINT"100 YEARS AGO ON PLANET 'QUDRON' THERE WAS AN ATOMIC EXPLOTION WHICH DESTROYED"
   PRINT"ALL POPULATION OF THE PLANET AND ONLY YOU SURVIVED. WITH THE HELP OF YOUR"
   PRINT"SPACE SHIP YOU ESCAPED. YOU KNEW THAT THE EXPLOTION WAS SETED UP BY"
   PRINT"ROBOTS ON PLANET 'ERGON' AND THEIR OVERLORD. AFTER DESTROING 'QUDRON' THEY"
   PRINT"PLANING TO MAKE A BIG EARTHQUAKE ON EARTH. YOU MUST STOP THEM!"
   DELAY 2.5
   FOR MN=1 TO 200
DESTROY:
   V%=INT(RND * 640)
   B%=INT(RND * 350)
   H%=INT(RND * 100)
   IF B%<180 THEN GOTO DESTROY
   FOR K=1 TO H%
   CIRCLE(V%,B%),K,4
   NEXT K
   FOR K=1 TO H%
   CIRCLE(V%,B%),K,11
   NEXT K
   NEXT MN
   DO
   LOOP WHILE INKEY$=""
   CLS
   PALETTE 11,11
'NEW STUFF
   CIRCLE(450,450),550,15,,,0.7
   PAINT(400,300),1,15
   PAINT(1,1),11,15
   FOR Z=1 TO 200
   X%=INT(RND * 630)
   Y%=INT(RND * 350)
   PSET(X%,Y%),X%
   NEXT
   PSET(100,200),4
   DRAW"C4 S3 H5 L30 D10 R30 E5 L30 H5 F5 G5 R20 G10 U10 BU10 U10 F10"
   COLOR 14
   LOCATE 1,1
   PRINT"YOU'VE JUST LANDED ON PLANET 'ERGON' AND READY TO FIGHT"
   PRINT"ALL THOSE ROBOTS. AND IF YOU'LL SURVIVE HERE, YOU CAN FIGHT"
   PRINT"OVERLORD AND STOP THE EARTHQUAKE."
   DO
   LOOP WHILE INKEY$=""
   CLS
'END MOVIE
START:
    DRAW"C0 TA0 BR0 BU0 BD0 BL0 S4"
    CLS
    A=1
    FOR B=1 TO 12
    LOCATE A,34
    COLOR 0
    PRINT"EARTHQUAKE"
    LET A=A+1
    COLOR 14
    LOCATE A,34
    PRINT"EARTHQUAKE"
    FOR N=1 TO 90000
    NEXT N
    LET A$=INKEY$
    IF A$=CHR$(27) THEN GOTO AXMAN
    NEXT B
    DELAY 1
    FOR B=1 TO 8
    LOCATE A,34
    COLOR 0
    PRINT"EARTHQUAKE"
    LET A=A-1
    COLOR 14
    LOCATE A,34
    PRINT"EARTHQUAKE"
    FOR N=1 TO 90000
    NEXT N
    NEXT B
    DELAY 0.5
AXMAN:
'TEXTURE
   LET G=5
   LET N=620
   LET I=0
   LET BR$="C15 R20 D10 L20 U10 BD5 BR5 P8,15"
   FOR Z=1 TO 31
   FOR K=G TO N STEP+20
   PSET(K,I),0
   DRAW BR$
   NEXT K
   LET I=I+10
   LET G=G+10
   LET N=N-10
   NEXT Z
   PAINT(100,200),3,15
'TEXTURE
    FOR T=1 TO 50
    CIRCLE(303,63),T,0,3,,0.5
    NEXT T
    CIRCLE(303,63),50,15,3,,0.5
    PAINT(303,63),2,15
    LOCATE 5,34
    COLOR 14
    PRINT"EARTHQUAKE"
A:
'MAIN MENU
    COLOR 12
    LOCATE 14,34
    PRINT"  NEW GAME   "
    LOCATE 15,34
    COLOR 4
    PRINT"PLAYER SETUP "
    LOCATE 16,34
    PRINT"  INFO/HELP  "
    LOCATE 17,34
    PRINT" FOR CHEATERS"
    LOCATE 18,34
    PRINT"    QUIT     "
    LET A$=INKEY$
    IF A$=CHR$(0)+"P" THEN GOTO B
    IF A$=CHR$(0)+"H" THEN GOTO E
    IF A$=CHR$(13) THEN GOTO CHS
    GOTO A
    END
B:
    COLOR 4
    LOCATE 14,34
    PRINT"  NEW GAME   "
    LOCATE 15,34
    COLOR 12
    PRINT"PLAYER SETUP "
    LOCATE 16,34
    COLOR 4
    PRINT"  INFO/HELP  "
    LOCATE 17,34
    PRINT" FOR CHEATERS"
    LOCATE 18,34
    PRINT"    QUIT     "
    LET A$=INKEY$
    IF A$=CHR$(0)+"P" THEN GOTO C
    IF A$=CHR$(0)+"H" THEN GOTO A
    IF A$=CHR$(13) THEN GOTO SETP
    GOTO B
    END
C:
    COLOR 4
    LOCATE 14,34
    PRINT"  NEW GAME   "
    LOCATE 15,34
    PRINT"PLAYER SETUP "
    LOCATE 16,34
    COLOR 12
    PRINT"  INFO/HELP  "
    LOCATE 17,34
    COLOR 4
    PRINT" FOR CHEATERS"
    LOCATE 18,34
    PRINT"    QUIT     "
    LET A$=INKEY$
    IF A$=CHR$(0)+"P" THEN GOTO D
    IF A$=CHR$(0)+"H" THEN GOTO B
    IF A$=CHR$(13) THEN GOTO INHL
    GOTO C
    END
D:
    COLOR 4
    LOCATE 14,34
    PRINT"  NEW GAME   "
    LOCATE 15,34
    PRINT"PLAYER SETUP "
    LOCATE 16,34
    PRINT"  INFO/HELP  "
    LOCATE 17,34
    COLOR 12
    PRINT" FOR CHEATERS"
    LOCATE 18,34
    COLOR 4
    PRINT"    QUIT     "
    LET A$=INKEY$
    IF A$=CHR$(0)+"P" THEN GOTO E
    IF A$=CHR$(0)+"H" THEN GOTO C
    IF A$=CHR$(13) THEN GOTO CHEAT
    GOTO D
    END
E:
    COLOR 4
    LOCATE 14,34
    PRINT"  NEW GAME   "
    LOCATE 15,34
    PRINT"PLAYER SETUP "
    LOCATE 16,34
    PRINT"  INFO/HELP  "
    LOCATE 17,34
    PRINT" FOR CHEATERS"
    LOCATE 18,34
    COLOR 12
    PRINT"    QUIT     "
    LET A$=INKEY$
    IF A$=CHR$(0)+"P" THEN GOTO A
    IF A$=CHR$(0)+"H" THEN GOTO D
    IF A$=CHR$(13) THEN KILL"INFO.DAT":END
    GOTO E
    END
NEWA:
    CLS
    COLOR 3,0
    LOCATE 10,33
    PRINT"Choose your skill:"
AA:
    COLOR 12
    LOCATE 12,33
    PRINT"    Easy skill"
    COLOR 4
    LOCATE 13,33
    PRINT"   Normal skill"
    LOCATE 14,33
    PRINT"    Hard skill"
    LET A$=INKEY$
    IF A$=CHR$(0)+"P" THEN GOTO BB
    IF A$=CHR$(0)+"H" THEN GOTO CC
    IF A$=CHR$(13) THEN GOTO WRITA
    IF A$=CHR$(27) THEN GOTO START
    GOTO AA
    END
BB:
    COLOR 4
    LOCATE 12,33
    PRINT"    Easy skill"
    COLOR 12
    LOCATE 13,33
    PRINT"   Normal skill"
    LOCATE 14,33
    COLOR 4
    PRINT"    Hard skill"
    LET A$=INKEY$
    IF A$=CHR$(27) THEN GOTO START
    IF A$=CHR$(0)+"P" THEN GOTO CC
    IF A$=CHR$(0)+"H" THEN GOTO AA
    IF A$=CHR$(13) THEN GOTO WRITB
    GOTO BB
    END
CC:
    COLOR 4
    LOCATE 12,33
    PRINT"    Easy skill"
    LOCATE 13,33
    PRINT"   Normal skill"
    LOCATE 14,33
    COLOR 12
    PRINT"    Hard skill"
    LET A$=INKEY$
    IF A$=CHR$(27) THEN GOTO START
    IF A$=CHR$(0)+"P" THEN GOTO AA
    IF A$=CHR$(0)+"H" THEN GOTO BB
    IF A$=CHR$(13) THEN GOTO WRITC
    GOTO CC
    END
WRITA:
    OPEN"INFO.DAT" FOR OUTPUT AS #1
    PRINT #1,130,50,0,0
    CLOSE #1
    RUN"LEVEL1.MAP"
    END
WRITB:
    OPEN"INFO.DAT" FOR OUTPUT AS #1
    PRINT #1,100,40,0,0
    CLOSE #1
    RUN"LEVEL1.MAP"
    END
WRITC:
    OPEN"INFO.DAT" FOR OUTPUT AS #1
    PRINT #1,50,20,0,0
    CLOSE #1
    RUN"LEVEL1.MAP"
    END
SETP:
    CLS
    COLOR 0,0
    CLS
    LINE(300,99)-(400,200),8,BF
    LINE(300,99)-(400,200),15,B
    LINE(320,120)-(380,180),0,BF
    LINE(320,120)-(380,180),15,B
    PAINT(330,130),2,15
    PSET(340,150),15
    DRAW"S7 H5 G5 F5 E5 H5 E3 L5 F3 G5 F5 F3 L5 E3 E5 H5 E3 L3 U5 R8 L8 D5 R3 G3 F5 G5 F3 L3 D5 R5 E2 R5 F2 G2 L5 H2"
    PSET(340,150),15
    DRAW"S6 BU15 BR7 R8 D2 L8 U2 R8 U5 F7 L8"
    COLOR 14
    LOCATE 8,41
    PRINT"PLAYER"
    LINE(300,99)-(400,99),15
    COLOR 4
    LOCATE 16,39
    OPEN"NAME.DAT" FOR INPUT AS #1
    INPUT #1,DX$
    CLOSE #1
    PRINT"Name:"
    COLOR 12
    LOCATE 16,45
    PRINT DX$
AC:
    COLOR 11
    LOCATE 9,5
    PRINT"CHANGE PLAYER'S NAME"
    LOCATE 10,5
    COLOR 3
    PRINT"RETURN TO MAIN MENU"
    LET A$=INKEY$
    IF A$=CHR$(0)+"P" THEN GOTO BC
    IF A$=CHR$(0)+"H" THEN GOTO BC
    IF A$=CHR$(13) THEN GOTO CHNG
    GOTO AC
    END
BC:
    COLOR 3
    LOCATE 9,5
    PRINT"CHANGE PLAYER'S NAME"
    LOCATE 10,5
    COLOR 11
    PRINT"RETURN TO MAIN MENU"
    LET A$=INKEY$
    IF A$=CHR$(0)+"P" THEN GOTO AC
    IF A$=CHR$(0)+"H" THEN GOTO AC
    IF A$=CHR$(13) THEN GOTO START
    GOTO BC
    END
CHNG:
    COLOR 9
    LOCATE 12,5
    INPUT"Enter new name: ",Q$
    IF LEN(Q$)>12 THEN GOTO ERRA
    OPEN"NAME.DAT" FOR OUTPUT AS #2
    PRINT #2,Q$
    CLOSE #2
    GOTO SETP
    END
ERRA:
    COLOR 4
    LOCATE 13,5
    PRINT"Name must have not more than 12 symbols"
    DELAY 2
    GOTO SETP
    END
CHEAT:
   CLS
   SCREEN 9
   COLOR 15, 0
   COLOR 8
   PRINT "If you know the secret code, you can make your resources very high."
   PRINT "You can be unbeatable."
   COLOR 14
   PRINT
   INPUT "Enter cheat code: ", LK$
   IF LK$ = "EQ1P-099" OR LK$ = "eq1p-099" THEN GOTO CHCH
   COLOR 4
   PRINT "Incorrect code!"
   BEEP
   DELAY 1.5
   GOTO START
CHCH:
   COLOR 4
   PRINT "The code is right!"
   SOUND 300, 1.5
   SOUND 400, 1.5
   SOUND 500, 1.5
   SOUND 600, 3
   SOUND 500, 1.5
   SOUND 600, 3
   DELAY 1.5
   CLS
   COLOR 7
   PRINT"Now you can change the setup!"
   COLOR 14
   PRINT
   INPUT"How many health do you want to have:",W
   INPUT"How many shells do you want to have:",M
   INPUT"How many bombs do you want to have:",L
   INPUT"How many energy cells do you want to have:",K
   OPEN"INFO.DAT" FOR OUTPUT AS #3
   PRINT #3,W,M,L,K
   CLOSE #3
   COLOR 8
   PRINT
   PRINT"Press any key and you'll enter the game!"
   DO
   LOOP WHILE INKEY$=""
   RUN"LEVEL1.MAP"
   END
INHL:
      CLS
      LINE(1,1)-(639,340),15,B
      LINE(3,3)-(636,337),15,B
      PAINT(2,2),4,15
      LINE(10,10)-(629,330),15,B
      PAINT(5,5),2,15
      COLOR 8
      LOCATE 2,30
      PRINT"HELP/INFO page 1 of 3"
      COLOR 14
      LOCATE 3,3
      PRINT"The following characters will be in the game:"
'CANNON
      LET S=50
      LET J=70
      FOR IL=1 TO 10
      CIRCLE(S,J),IL,6
      NEXT IL
      LINE(S-15,J)-(S+15,J),11
      LINE(S,J-15)-(S,J+15),11
'MONSTER-ROBOT
      PSET(43,100),15
      DRAW"S5 E5 F5 G5 H5 L3 H3 D5 E2 R3 BR10 R3 E3 D5 H2 L3 H5 U3 H3 R5 G2 D3 BD10 D3 F3 L5 E3"
'SLASHER
      PSET(37,130),15
      DRAW"S5 E5 D10 H5 BR5 BU5 R10 D10 L10 F5 E5 E5 H5 H5 G5 F10 U10 G10"
'ABOUT CANNON
      COLOR 7
      LOCATE 5,10
      PRINT"This enemy is not very powerful, but he shoots far."
      LOCATE 6,10
      PRINT"He will attack with thunderbolt when you get close enough."
'ABOUT MONSTER-ROBOT
      COLOR 4
      LOCATE 7,10
      PRINT"Monster-robot is a very powerful enemy. He attacks from far"
      LOCATE 8,10
      PRINT"and close distances using his force field. Be careful!"
'ABOUT SLASHER
      COLOR 1
      LOCATE 9,10
      PRINT"Slasher is the most powerful character, but he attacks only"
      LOCATE 10,10
      PRINT"when he is very close to you. His slashes are very powerful"
'OTHER
      COLOR 14
      LOCATE 12,3
      PRINT"Other enemies are bosses, I cannot show them to you."
      DO
      LOOP WHILE INKEY$=""
      CLS
'NEW STUFF
      LINE(1,1)-(639,340),15,B
      LINE(3,3)-(636,337),15,B
      PAINT(2,2),4,15
      LINE(10,10)-(629,330),15,B
      PAINT(5,5),2,15
      COLOR 8
      LOCATE 2,30
      PRINT"HELP/INFO page 2 of 3"
'TEXT
      COLOR 14
      LOCATE 3,3
      PRINT"Controls and their description:"
      COLOR 5
      LOCATE 5,3
      PRINT"Insert   Home   Page Up  "
      LOCATE 6,3
      PRINT"Delete   End    Page Down"
      PRINT
      LOCATE 9,3
      PRINT CHR$(27)
      LOCATE 9,9
      PRINT CHR$(26)
      LOCATE 8,6
      PRINT CHR$(24)
      LOCATE 9,6
      PRINT CHR$(25)
      LOCATE 8,15
      PRINT"P        F1"
      LOCATE 9,15
      PRINT"ESC"
      COLOR 7
      LOCATE 11,3
      PRINT"Insert - Blaster      Home - Thunderbolt    Page Up - Level info"
      LOCATE 12,3
      PRINT"Delete - Twistgun     End - Throw bomb      Page Down - Axe"
      LOCATE 14,3
      PRINT"Use arrow keys to move"
      LOCATE 16,3
      PRINT"P - Pause"
      LOCATE 17,3
      PRINT"ESC - End game"
      LOCATE 18,3
      PRINT"F1 - Help (I sujest you to read it)"
      DO
      LOOP WHILE INKEY$=""
      CLS
'NEW STUFF
      LINE(1,1)-(639,340),15,B
      LINE(3,3)-(636,337),15,B
      PAINT(2,2),4,15
      LINE(10,10)-(629,330),15,B
      PAINT(5,5),2,15
      COLOR 8
      LOCATE 2,30
      PRINT"HELP/INFO page 3 of 3"
      COLOR 14
      LOCATE 3,3
      PRINT"Information about EARTHQUAKE Version 1.0:"
      COLOR 12
      LOCATE 5,3
      PRINT"This game is licenced!"
      LOCATE 6,3
      PRINT"Do not distribute it!"
      LOCATE 7,3
      PRINT"Copyright in 2000y. by Vorobiov Stanislav"
      COLOR 4
      LOCATE 9,3
      PRINT"Press any key!"
      DO
      LOOP WHILE INKEY$=""
      CLS
      GOTO START
      END
ASKME:
      CLS
      PRINT"Options are:"
      PRINT"/NOSTORY - Enters the game without a story"
      PRINT"/INFO - Launches information"
      PRINT"/STUFF - Shows stuff"
      PRINT"/GOTO - Launches any level"
      PRINT"/? - This description"
      END
CHS:
      CLS
ART:
      COLOR 12
      LOCATE 12,33
      PRINT"SINGLE PLAYER GAME"
      COLOR 4
      LOCATE 13,33
      PRINT" MULTIPLAYER GAME"
      LET A$=INKEY$
      IF A$=CHR$(0)+"P" THEN GOTO ARB
      IF A$=CHR$(0)+"H" THEN GOTO ARB
      IF A$=CHR$(27) THEN CLS:GOTO START
      IF A$=CHR$(13) THEN GOTO NEWA
      GOTO ART
      END
ARB:
      COLOR 4
      LOCATE 12,33
      PRINT"SINGLE PLAYER GAME"
      COLOR 12
      LOCATE 13,33
      PRINT" MULTIPLAYER GAME"
      LET A$=INKEY$
      IF A$=CHR$(0)+"P" THEN GOTO ART
      IF A$=CHR$(0)+"H" THEN GOTO ART
      IF A$=CHR$(27) THEN CLS:GOTO START
      IF A$=CHR$(13) THEN GOTO MULT
      GOTO ARB
      END
MULT:
      CLS
      OPEN"MODEL1.MDL" FOR INPUT AS #1
      INPUT #1,DR$
      CLOSE #1
      OPEN"MODEL2.MDL" FOR INPUT AS #2
      INPUT #2,DV$
      CLOSE #2
      OPEN"DMNAME1.DAT" FOR INPUT AS #1
      INPUT #1,DX$
      CLOSE #1
      OPEN"DMNAME2.DAT" FOR INPUT AS #2
      INPUT #2,DZ$
      CLOSE #2
      LINE(50,50)-(150,150),2,BF
      LINE(450,50)-(550,150),2,BF
      LINE(50,50)-(150,150),15,B
      LINE(450,50)-(550,150),15,B
      PSET(100,100),0
      DRAW"C4"
      DRAW DR$
      PSET(500,100),0
      DRAW"C4"
      DRAW DV$
      LOCATE 12,11
      COLOR 14
      PRINT DX$
      LOCATE 12,60
      PRINT DZ$
      LOCATE 3,8
      COLOR 9
      PRINT"MODEL FOR 1P"
      LOCATE 3,58
      PRINT"MODEL FOR 2P"
'STUFF
ST:
      COLOR 13
      LOCATE 7,30
      PRINT"   CHANGE NAMES"
      LOCATE 8,30
      COLOR 5
      PRINT"   CHANGE MODELS"
      LOCATE 9,30
      PRINT"RUN MULTIPLAYER GAME"
      LET A$=INKEY$
      IF A$=CHR$(0)+"P" THEN GOTO STA
      IF A$=CHR$(0)+"H" THEN GOTO STB
      IF A$=CHR$(27) THEN CLS:GOTO START
      IF A$=CHR$(13) THEN CHNM
      GOTO ST
STA:
      COLOR 5
      LOCATE 7,30
      PRINT"   CHANGE NAMES"
      LOCATE 8,30
      COLOR 13
      PRINT"   CHANGE MODELS"
      LOCATE 9,30
      COLOR 5
      PRINT"RUN MULTIPLAYER GAME"
      LET A$=INKEY$
      IF A$=CHR$(0)+"P" THEN GOTO STB
      IF A$=CHR$(0)+"H" THEN GOTO ST
      IF A$=CHR$(27) THEN CLS:GOTO START
      IF A$=CHR$(13) THEN GOTO CHMD
      GOTO STA
STB:
      COLOR 5
      LOCATE 7,30
      PRINT"   CHANGE NAMES"
      LOCATE 8,30
      PRINT"   CHANGE MODELS"
      LOCATE 9,30
      COLOR 13
      PRINT"RUN MULTIPLAYER GAME"
      LET A$=INKEY$
      IF A$=CHR$(0)+"P" THEN GOTO ST
      IF A$=CHR$(0)+"H" THEN GOTO STA
      IF A$=CHR$(27) THEN CLS:GOTO START
      IF A$=CHR$(13) THEN GOTO RNM
      GOTO STB
CHNM:
      CLS
      COLOR 9
      PRINT"PLEASE, ENTER NAME FOR 1 PLAYER(MUST BE LESS THAN 8 SYMBOLS)"
      COLOR 3
      INPUT"NAME OF 1P:",DX$
      INPUT"NAME OF 2P:",DZ$
      IF LEN(DX$)>8 THEN DX$="STRIKER"
      IF LEN(DZ$)>8 THEN DZ$="SHEFF"
      OPEN"DMNAME1.DAT" FOR OUTPUT AS #1
      PRINT #1,DX$
      CLOSE #1
      OPEN"DMNAME2.DAT" FOR OUTPUT AS #2
      PRINT #2,DZ$
      CLOSE #2
      CLS
      GOTO MULT
      END
CHMD:
      CLS
      COLOR 14
      PRINT"ENTER MODEL (.MDL) FILE FOR PLAYER 1"
      PRINT"ENTER MODEL (.MDL) FILE FOR PLAYER 2"
      COLOR 5
      PRINT
      INPUT"ENTER .MDL FILE FOR 1P:",MD$
      INPUT"ENTER .MDL FILE FOR 2P:",MZ$
'OPEN
      ON ERROR GOTO SKL
      OPEN MD$ FOR INPUT AS #1
      ON ERROR GOTO SKL
      INPUT #1,K$
      CLOSE #1
      ON ERROR GOTO SKL
      OPEN MZ$ FOR INPUT AS #1
      ON ERROR GOTO SKL
      INPUT #1,L$
      CLOSE #1
'WRITE
WR:
      OPEN"MODEL1.MDL" FOR OUTPUT AS #1
      PRINT #1,K$
      CLOSE #1
      OPEN"MODEL2.MDL" FOR OUTPUT AS #1
      PRINT #1,L$
      CLOSE #1
      CLS
      GOTO MULT
SKL:
      LET K$="S4 E5 F5 G5 H5 L3 H3 D5 E2 R3 BR10 R3 E3 D5 H2 L3 H5 U3 H3 R5 G2 D3 BD10 D3 F3 L5 E3"
      LET L$="S4 E5 D10 H5 BR5 BU5 R10 D10 L10 F5 E5 E5 H5 H5 G5 F10 U10 G10"
      RESUME WR
      END
RNM:
      CLS
      COLOR 9
      PRINT"CONTROLS FOR 1P:"
      COLOR 8
      PRINT"   S            R T Y        ESC   F1"
      PRINT" Z X C          F G H        P       "
      PRINT
      PRINT"S,Z,X,C - MOVEING AROUND"
      PRINT"R-BLASTER                      ESC-EXIT GAME"
      PRINT"F-TWISTGUN                     P-PAUSE GAME"
      PRINT"T-THUNDERBOLT                  F1-DEATHMATCH INFORMATION"
      PRINT"G-THROW BOMBS                  ~(TILDE)-DEATHMATCH CONFIGURATIONS"
      PRINT"H-HIT WITH AXE                 A-MAXIMUM AMMO AND HEALTH"
      PRINT"Y-BFG LAUNCH                   B-QUAD FIRE(FOR 1 SHOT ONLY)"
      PRINT"U-ROCKET                       F2-SET TIME LIMIT"
      COLOR 9
      PRINT
      PRINT"CONTROLS FOR 2P:"
      COLOR 8
      PRINT"NEW CONTROLS: PageUp - BFG LAUNCH"
      PRINT"              /      - ROCKET    "
      PRINT"FOR OTHER CONTROLS LOOK INTO INFO/HELP IN MAIN MENU"
      COLOR 4
      LOCATE 23,1
      INPUT"WHAT MAP TO LAUNCH (DEFAULT:EQDM1.MAP):",PO$
      IF PO$="" THEN CLS:GOTO MULT
      ON ERROR GOTO UIP
      RUN PO$
      ON ERROR GOTO UIP
      END
UIP:
      ON ERROR GOTO ASDF
      RUN"EQDM1.MAP"
      ON ERROR GOTO ASDF
      END
ASDF:
      CLS
      COLOR 4
      PRINT"YOU DO NOT HAVE ANY MULTIPLAYER MAPS"
      PRINT"PLEASE, CONTACT ME FOR SUPPORT"
      DO
      LOOP WHILE INKEY$=""
      CLS
      RESUME MULT
      END
WRN:
      SCREEN 0
      COLOR 15
      INPUT"Enter level's number to run:",KL$
      OPEN"INFO.DAT" FOR OUTPUT AS #1
      PRINT #1,100,30,5,5
      RUN "LEVEL"+KL$+".MAP"
      END


















