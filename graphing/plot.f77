****************************************************************************
* Frances O'Leary, using Fortran 77 for Engineers and Scientists 8/16/2020 *
* Program to plot a graph of a function Y = F(X). Variables used are:      *
*   LINE   : character variable representing one line of output            *
*   X, Y   : coordinates of a point on the graph                           *
*   XMIN   : minimum X value                                               *
*   XMAX   : maximum X value                                               *
*   YMIN   : minimum Y value                                               *
*   YMAX   : maximum Y value                                               *
*   DELTAX : X increment represented by one vertical print position        *
*   DELTAY : Y incremement represented by one horizontal print position    *
*   HORIZ  : counter for horizontal positions                              *
*   VERT   : counter for vertical positions                                *
****************************************************************************
    CHARACTER*75 LINE
    INTEGER HORIZ, VERT
    REAL XMIN, XMAX, X, Y, YMIN, YMAX, DELTAX, DELTAY

* Get initial values and calculate X and Y increments,
* assuming 45 vertical and 75 horizontal print positions.

    PRINT *, 'ENTER MINIMUM AND MAXIMUM X VALUES AND'
    PRINT *, 'THE MINIMUM AND MAXIMUM Y VALUES'
    READ *, XMIN, XMAX, YMIN, YMAX
    DELTAX = (XMAX - XMIN) / 45
    DELTAY = (YMAX - YMIN) / 75

* Produce the plot of the graph

    X = XMIN
    DO 20 VERT = 1, 45

*       Calculate Y value corresponding to current X value

        Y = X * COS(X)

*       Blank out LINE, then set the X axis mark and the 
*       position corresponding to this Y value and print LINE

        LINE = ' '
        LINE(38:38) = ':'
        HORIZ = 38 + NINT(Y / DELTAY)
        LINE(HORIZ:HORIZ) = '*'
        PRINT *, LINEX = X + DELTAX
    CONTINUE

* Label the X axis

    LINE = ' '
    LINE(38:38) = 'X'
    PRINT *, LINE
    END