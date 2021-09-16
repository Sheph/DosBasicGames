REM File -> Open -> "STORY.BAS", SHIFT + F5 - Read through story and controls
REM After it's done it'll try to run AF!.BAS but will fail, this file is lost forever :(
REM File -> Open -> "EXMY.BAS", SHIFT + F5 - Run any level and play :)
"c:\program files (x86)\dosbox-0.74-3\dosbox" -c "mount c: ." -c "c:" -c "cd qb\\af" -c "..\\qb.exe"
