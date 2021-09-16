    CLS
    SCREEN 12
    G=-0.8
    FOR A=1 TO 400
    CIRCLE(320,240),A,0,-0.5,G
    G=G-0.1105
    FOR N=1 TO 1000
    NEXT N
    CIRCLE(320,240),A,A,-0.5,G
    FOR N=1 TO 1000
    NEXT N
    NEXT