DIM sfx$(25)
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
SFX$(1)="&H00&HC0&H40&H00&H00&HC1&HC5&HB4&HD4&H74&HC0&H00&H00&H00&H21&H1"
SFX$(10)="&H00&H04&H00&H00&H00&H85&H00&HCF&H00&HFF&HC0&H09&H01&H00&H33&H0"
SFX$(14)="&H00&H00&H00&H03&H00&HA3&H54&HA5&HA6&HDC&HC0&H00&H00&H00&H27&H0"
SFX$(15)="&H00&H00&H00&H03&H03&H64&H65&HA9&H68&H25&HC0&H05&H01&H01&H33&H0"
SFX$(25)="&H00&H00&H00&H00&H00&H00&H00&H00&H00&H00&HC0&H00&H00&H00&H20&H1"
START:
   LET A$=INKEY$
   IF A$="Q" THEN SND=1:GOSUB PLAYSFX
   IF A$="W" THEN SND=10:GOSUB PLAYSFX
   IF A$="E" THEN SND=14:GOSUB PLAYSFX
   IF A$="R" THEN SND=15:GOSUB PLAYSFX
   IF A$="T" THEN SND=25:GOSUB PLAYSFX
   IF A$=CHR$(27) THEN END
   GOTO START
   END
PLAYSFX:
chan% = VAL(MID$(sfx$(snd), 61, 4))
FOR in = 1 TO 60 STEP 4
rega$ = MID$(c$(chan%), in, 4): rega% = VAL(rega$)
dat$ = MID$(sfx$(snd), in, 4): dat% = VAL(dat$)
OUT &H388, rega%: FOR d% = 1 TO 6: b% = INP(&H388): NEXT
OUT &H389, dat%: FOR d% = 1 TO 35: b% = INP(&H388): NEXT
NEXT
RETURN
END


