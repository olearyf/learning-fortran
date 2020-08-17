    PROGRAM TABLE
**********************************************************************
* Program demonstrating use of formatted output to print a table of  *
* values of N, square and cube of N, and the square root of N for    *
* N = 1, 2, . . ., LAST where the value of LAST is read during       *
* execution.                                                         *
**********************************************************************

    INTEGER N, LAST

    PRINT *, 'ENTER LAST NUMBER TO BE USED'
    READ *, LAST

* Print headings

    PRINT 10, 'NUMBER', 'SQUARE', '  CUBE', 'SQ. ROOT'
    FORMAT(//, 1X, A8, T11, T21, A8, T31, A10 / 1X, 40('='))

* Print the table

    DO 30 N = 1, LAST
        PRINT 20, N, N**2, N**3, SQRT(REAL(N))
        FORMAT(1X, I6, 2I10, 2X, F10.4)
    CONTINUE
    END