In this second directory we will work with loops, if statements and logical variables.

<hr>
Loops

In FORTRAN we have two types of loops, Do Loops and While Loops, both work on different ways and depend on what do you want to do.

<hr>
Let's start with an example and analize it:

```fortran
PROGRAM myCodesName 
a=0.0d0
DO I=1,10,1
a=a+1.0d0
END DO
END PROGRAM
```

The first thing to define in a Do loop is a the DO statement, followed by an <i>INTEGER</i> variable, an equal sign, the range we want this variable to loop through, and the size of the steps, I wrote the 1 size step but it is not mandatory, if not writen FORTRAN will consider it is 1.

It is important to notice that the integer variable or counter can not be redefined inside the loop:

```fortran
PROGRAM myCodesName 
a=0.0d0
DO I=1,10,1
i=i+1
END DO
END PROGRAM
```
This code would throw an error, try it yourself!

Now, there is an interesting thing FORTRAN does with loops, consider the following code: 

```fortran
PROGRAM myCodesName 
a=0.0d0
DO I=1,10,1
a=a+1.0d0
END DO
print*,I
END PROGRAM
```

Without running this code, what output do you expect? 10? 9? Run it and see what happens!

11 is kind of unexpected isn't it? Well, what happens is that FORTRAN runs through the loops starting with the first value on the <i>DO</i> statement, in this case 1, and adds the third number, in this case also one, when the loop is finished, it then checks if the final value is valid comparing it with the second number, 10 for this code, if it is less or equal it runs the loop again, if its not valid it just exits the loop. To put it in another way, imagine there is a <i>I=I+1</i> statement before the <i>END DO</i> statement, if the final value of the counter is bigger than second number, FORTRAN exits the loop. FORTRAN never cleans the counter, this is way we get an 11 out of this code.

<hr>
Most of the time we would not know how many times we have to loop over a series of statements to get to our final answer, in those situations we would rather use a <i>WHILE</i> statement, lets see an example:

This program's job is to do a sumations of the squares of numbers but whenever the summation is more than 100 it'll stop:

```fortran
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
```
As you can see, the syntaxis is basically the same than in a regular <i>DO</i> loop but in this case you are required to set a condition to be reviewed before going over the statements inside the loop.

Now, if we review the output we would find something like:

```
           X           Y
           1           1
           2           5
           3          14
```

Our final <i>Y</i> is bigger than 10, what happens is that before starting this last loop, its value was 5, which is less than 10 so the program goes through the statements one more time, its final value is more than 10 so it exits the loop.

<hr>




