PROGRAM whileLoops
IMPLICIT NONE
INTEGER X,Y
X=0
Y=0
PRINT*,'          X','           Y'
DO WHILE(Y.LT.10)
X=X+1
Y=Y+X**2
PRINT*,X,Y
END DO
END PROGRAM
