CLS
RANDOMIZE TIMER
I%=INT(RND * 4)
IF I%=0 THEN SCREEN 8
IF I%=1 THEN SCREEN 9
IF I%=2 THEN SCREEN 12
COLOR 3,1
?"����������������� C:\ ����������������������������������� Info ����������14:56"
?"�    Name    �    Name    �    Name    ��  The Volkov Commander, Version 4.0 �"
?"������������۳TAMARA      �command  com�������������������������������������Ĵ"
?"�BASIC       �TURBOBAS    �edit     com��         655 360 Bytes Memory       �"
?"�CD          �UTILS       �dblspace bin��          548 272 Bytes Free        �"
?"�DOS         �VC          �setuplog txt��     Volume in drive C: is STASIC   �"
?"�DSPLUS      �WIN32APP    �file0000 chk��1 081 540 608 total bytes on drive C�"
?"�FAILSAFE_DRV�WINDOWS     �keyrus   com��  441 352 192 bytes free on drive C �"
?"�FIRSTBAS    �~MSSETUP_T  �mouse    com��   33 files use 2 031 616 bytes in  �"
?"�GAMES       �Surprise fil�edit     hlp��                 C:\                �"
?"�ICONS       �system   1st�suhdlog  dat�������������������������������������Ĵ"
?"�INSTALL     �io       sys�condrv   com�� Cool stuff!                        �"
?"�MOUSE       �dblbin   w95�setuplog old��                                    �"
?"�MSOFFICE    �detlog   txt�command  pif��                                    �"
?"�MTM         �drvspace bin�bootlog  prv��                                    �"
?"�PAINTER4    �detlog   old�bootlog  txt��                                    �"
?"�PROGRA~1    �msdos    sys�scandisk log��                                    �"
?"�QBASIC      �dblspace ini�config   win��                                    �"
?"�RAR         �mscsd95  sys�config   dos��                                    �"
?"��������������������������������������Ĵ�                                    �"
?"�VC           |SUB-DIR| 23.07.99  18:47��                                    �"
?"����������������������������������������������������������������������������ļ"
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
IF Z%=0 THEN PRINT"�"
IF Z%=1 THEN PRINT"�"
IF Z%=2 THEN PRINT"�"
IF Z%=3 THEN PRINT"�"
IF Z%=4 THEN PRINT CHR$(15)
IF INKEY$=CHR$(27) THEN END
GOTO RAN
