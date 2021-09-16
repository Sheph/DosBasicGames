CLS
RANDOMIZE TIMER
I%=INT(RND * 4)
IF I%=0 THEN SCREEN 8
IF I%=1 THEN SCREEN 9
IF I%=2 THEN SCREEN 12
COLOR 3,1
?"ÉÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄ C:\ ÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄËËÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ Info ÄÄÄÄÄÄÄÄÄÄ14:56"
?"³    Name    ³    Name    ³    Name    ³³  The Volkov Commander, Version 4.0 ³"
?"³‘’€‘ˆŠÛÛÛÛÛÛ³TAMARA      ³command  com³ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´"
?"³BASIC       ³TURBOBAS    ³edit     com³³         655 360 Bytes Memory       ³"
?"³CD          ³UTILS       ³dblspace bin³³          548 272 Bytes Free        ³"
?"³DOS         ³VC          ³setuplog txt³³     Volume in drive C: is STASIC   ³"
?"³DSPLUS      ³WIN32APP    ³file0000 chk³³1 081 540 608 total bytes on drive C³"
?"³FAILSAFE_DRV³WINDOWS     ³keyrus   com³³  441 352 192 bytes free on drive C ³"
?"³FIRSTBAS    ³~MSSETUP_T  ³mouse    com³³   33 files use 2 031 616 bytes in  ³"
?"³GAMES       ³Surprise fil³edit     hlp³³                 C:\                ³"
?"³ICONS       ³system   1st³suhdlog  dat³ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´"
?"³INSTALL     ³io       sys³condrv   com³³ Cool stuff!                        ³"
?"³MOUSE       ³dblbin   w95³setuplog old³³                                    ³"
?"³MSOFFICE    ³detlog   txt³command  pif³³                                    ³"
?"³MTM         ³drvspace bin³bootlog  prv³³                                    ³"
?"³PAINTER4    ³detlog   old³bootlog  txt³³                                    ³"
?"³PROGRA~1    ³msdos    sys³scandisk log³³                                    ³"
?"³QBASIC      ³dblspace ini³config   win³³                                    ³"
?"³RAR         ³mscsd95  sys³config   dos³³                                    ³"
?"ÃÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄ´³                                    ³"
?"³VC           |SUB-DIR| 23.07.99  18:47³³                                    ³"
?"ÈÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÊÊÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¼"
COLOR 11
?"1Help   2Menu   3View   4Edit   5Copy   6RenMov 7Mkdir  8Delete 9PullDn 10Quit"
DELAY 1.5
RANDOMIZE TIMER
K%=INT(RND * 2)
IF K%=1 THEN COLOR 0:GOTO RAN
COLOR 3
RAN:
RANDOMIZE TIMER
X%=INT(RND * 80)
Y%=INT(RND * 23)
Z%=INT(RND * 5)
IF X%=0 OR Y%=0 THEN GOTO RAN
LOCATE Y%,X%
IF Z%=0 THEN PRINT"Û"
IF Z%=1 THEN PRINT"±"
IF Z%=2 THEN PRINT"²"
IF Z%=3 THEN PRINT"°"
IF Z%=4 THEN PRINT CHR$(15)
IF INKEY$=CHR$(27) THEN END
GOTO RAN
