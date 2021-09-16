   CLS
   SCREEN 12
   WINDOW SCREEN(1,1)-(1024,768)
    LINE(100,100)-(180,180),8,BF
    LINE(100,100)-(180,180),15,B
    LINE(300,150)-(450,250),8,BF
    LINE(300,150)-(450,250),15,B
    LINE(200,300)-(300,390),8,BF
    LINE(200,300)-(300,390),15,B
    LET PL$="S4 H5 G5 F5 E5 H5 E3 L5 F3 G5 F5 F3 L5 E3 E5 H5 E3 L3 U5 R8 L8 D5 R3 G3 F5 G5 F3 L3 D5 R5 E2 R5 F2 G2 L5 H2"
    LET PLA$="S4 BR8 H8 G8 F8 E8 U2 R5 D4 L5 U2 BL16 U2 L5 D4 R5 U2 BR8 BU8 R2 U5 L4 D5 R2 BD16 R2 D5 L4 U5 R2 BU5 BL5 R10 U6 L10 D6"
'PSET
    PSET(80,100),0
    DRAW PL$
    PSET(445,340),0
    DRAW PLA$
'ENDPSET
'HEALTH
   LINE(220,398)-(240,418),9,BF
   LINE(220,398)-(240,418),15,B
'CELLS
    LINE(70,150)-(90,170),13,BF
    LINE(70,150)-(90,170),15,B
    LINE(70,150)-(90,170),15
'CELLS2
    LINE(570,390)-(590,410),13,BF
    LINE(570,390)-(590,410),15,B
    LINE(570,390)-(590,410),15
'BOMBS
    LINE(230,250)-(250,280),7,BF
    LINE(230,250)-(250,280),15
    LINE(240,250)-(240,280),15
    LINE(250,250)-(230,280),15
'BIOSUIT
    CIRCLE(580,80),5,1
    PAINT(580,80),1,1
    LINE(580,80)-(580,95),1
    LINE(580,95)-(585,105),1
    LINE(580,95)-(575,105),1
    LINE(570,88)-(590,88),1
'LAVA
   LINE(10,35)-(50,450),4,BF
   LINE(600,35)-(640,450),4,BF
   LINE(11,35)-(599,60),4,BF
   LINE(11,420)-(599,450),4,BF
'LAVAPOINTS1
   FOR A=10 TO 50
   FOR B=35 TO 450 STEP+RND*25
   PSET(A,B),12
   NEXT:NEXT
'LAVAPOINTS2
   FOR A=600 TO 640
   FOR B=35 TO 450 STEP+RND*25
   PSET(A,B),12
   NEXT:NEXT
'LAVAPOINTS3
   FOR A=11 TO 599
   FOR B=35 TO 60 STEP+RND*25
   PSET(A,B),12
   NEXT:NEXT
'LAVAPOINTS4
   FOR A=11 TO 599
   FOR B=420 TO 450 STEP+RND*25
   PSET(A,B),12
   NEXT:NEXT
'ENDLAVAPOINTS
'TELEPORT #1
   FOR STP=1 TO 80
   GHZ%=INT(RND * 15)
   GHJ%=INT(RND * 15)
   FBN%=INT(RND * 2)
   IF FBN%=1 THEN PSET(540+GHZ%+1,280+GHJ%+1),10
   IF FBN%=0 THEN CIRCLE(540+GHZ%+1,280+GHJ%+1),1,0
   NEXT
'TELEPORT #2
   FOR STP=1 TO 80
   GHZ%=INT(RND * 15)
   GHJ%=INT(RND * 15)
   FBN%=INT(RND * 2)
   IF FBN%=1 THEN PSET(200+GHZ%+1,150+GHJ%+1),10
   IF FBN%=0 THEN CIRCLE(200+GHZ%+1,150+GHJ%+1),1,0
   NEXT
'RAIL
    P=440
    L=340
   LET I=P
   LET LO=2
   FOR I=P+30 TO P+180 STEP+10
   CIRCLE(I,L),LO,3
   LET LO=LO+1
   NEXT I
'ENDRAIL
   LINE(10,33)-(640,450),15,B
'TEXT
   LOCATE 1,1
   COLOR 14
   PRINT"This screenshot was taken from EQDM2 map."
   COLOR 4
   LOCATE 3,52
   PRINT"As you can see"
   LOCATE 4,52
   PRINT"EARTHQUAKE is a fun game"
   LOCATE 5,52
   PRINT"Especially DEATHMATCH!"
   COLOR 3
   LOCATE 6,52
   PRINT"Try it and you'll like it"
   LOCATE 7,52
   PRINT"If you want to know"
   LOCATE 8,52
   PRINT"all about DEATHMATCH, read"
   LOCATE 9,52
   PRINT"dmgame.txt file."
   COLOR 10
   LOCATE 10,52
   PRINT"Single player game is fun too"
   LOCATE 11,52
   PRINT"Try to save the earth from"
   LOCATE 12,52
   PRINT"the OVERLORD."
   LOCATE 13,52
   PRINT"Fight bad forces"
   LOCATE 14,52
   PRINT"Fight OVERLORD's bosses"
   LOCATE 15,52
   PRINT"Locate EARTHQUAKE machine"
   LOCATE 16,52
   PRINT"and destroy it."
   COLOR 8
   LOCATE 17,52
   PRINT"This will be fun, I promise."
   LOCATE 19,1
   COLOR 13
   PRINT"Order full version now by calling:"
   COLOR 12
   PRINT"(8)-(0422) 335-091"
   PRINT"Or you can ask your distributer to give you full version"
   COLOR 11
   PRINT"This not gonna be expensive, just 0$"
   COLOR 6
   PRINT"ORDER THIS COOL GAME"
   DO
   LOOP WHILE INKEY$=""
   CLS
'NEWSTUFF
   SCREEN 0
   COLOR 4
   ?"   ÚÄ¿   /ÄÄ\    ÚÄ¿"
   COLOR 3
   ?"   ³±³ ÚÄÁÄÄÁÄ¿  ³±³"
   ?"   ³±ÀÄ´ÚÄÄÄÄ¿ÃÄÄÙ±³"
   ?"   ÀÄÄÄ´ÀÄÄÄÄÙÃÄÄÄÄÙ"
   COLOR 2
   ?"       ÀÒÄÄÄÄÒÙ"
   ?"        Ó±±±±½"
   COLOR 14
   PRINT"Now go there and get'em!!!"
   COLOR 6
   PRINT"    Press ESC to quit"
   DO
   LOOP UNTIL INKEY$=CHR$(27)
   END


