# File -> Open -> "STORY.BAS", SHIFT + F5 - Read through story and controls
# After it's done it'll try to run AF!.BAS but will fail, this file is lost forever :(
# File -> Open -> "EXMY.BAS", SHIFT + F5 - Run any level and play :)
dosbox -c "mount c: ." -c "c:" -c "cd qb\\af" -c "..\\qb.exe"
