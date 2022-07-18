PROGRAM squareRoot
IMPLICIT NONE
REAL X,Y
PRINT*, "Hello, what number's square root are you interested in?"
READ*, X
Y=X**(0.50)
PRINT*,'The square root of',X, 'is:',Y
END PROGRAM
