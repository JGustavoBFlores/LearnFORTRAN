In this second directory we will work with loops, if statements and logical variables.

<hr>
Loops

In FORTRAN we have two types of loops, Do Loops and While Loops, both work on different ways and depend on what do you want to do.

<hr>
Let's start with an example and analize it:

```fortran
PROGRAM myCodesName 
IMPLICIT NONE
REAL a
INTEGER I
a=0.0
DO I=1,10,1
a=a+1.0
END DO
END PROGRAM
```

The first thing to define in a Do loop is a the DO statement, followed by an <i>INTEGER</i> variable, an equal sign, the range we want this variable to loop through, and the size of the steps, I wrote the 1 size step but it is not mandatory, if not writen FORTRAN will consider it is 1.

It is important to notice that the integer variable or counter can not be redefined inside the loop:

```fortran
PROGRAM myCodesName 
IMPLICIT NONE
REAL a
INTEGER I
a=0.0
DO I=1,10,1
I=I+1
END DO
END PROGRAM
```
This code would throw an error, try it yourself!

Now, there is an interesting thing FORTRAN does with loops, consider the following code: 

```fortran
PROGRAM myCodesName 
IMPLICIT NONE
REAL a
INTEGER I
a=0.0
DO I=1,10,1
a=a+1.0
END DO
PRINT*,I
END PROGRAM
```

Without running this code, what output do you expect? 10? 9? Run it and see what happens!

11 is kind of unexpected isn't it? Well, what happens is that FORTRAN runs through the loops starting with the first value on the <i>DO</i> statement, in this case 1, and adds the third number, in this case also one, when the loop is finished, it then checks if the final value is valid comparing it with the second number, 10 for this code, if it is less or equal it runs the loop again, if its not valid it just exits the loop. To put it in another way, imagine there is a <i>I=I+1</i> statement before the <i>END DO</i> statement, if the final value of the counter is bigger than second number, FORTRAN exits the loop. FORTRAN never cleans the counter, this is way we get an 11 out of this code.

<hr>
Most of the time we would not know how many times we have to loop over a series of statements to get to our final answer, in those situations we would rather use a <i>WHILE</i> statement, lets see an example:

This program's job is to do a sumations of the squares of numbers but whenever the summation is more than 10 it'll stop:

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

Now it is time to visit the logical variables, this are very special variables that can only have one of two values: <i>TRUE</i> or <i>FALSE</i>. Although they might not seem of special value right now, I assure you we will use them a lot!

First of all, how do we define this variables? well, as any other variable!:

```fortran
PROGRAM logicalVariables
IMPLICIT NONE
LOGICAL LOGIC1,LOGIC2

LOGIC1=.TRUE.
LOGIC2=.FALSE.
PRINT*, LOGIC1,LOGIC2
END PROGRAM
```

Running this code you can see that the output of a true value is a <i>T</i> and an <i>F</i> for a false one. This doesn't mean that the value is just a letter! This is not a character, but a representation.  

We have already used logical statements, when we first wrote our while code. The statement <i>DO WHILE(Y.LT.10)</i> has a logical part in there, while <i>Y.LT.10</i> we have an implicit <i>TRUE</i> which tells FORTRAN to loop until we get a <i>FALSE</i> in there!

But, why didn't we use an explicit logical variable back then? well, the answer is very simple, we did not need a logical variable for that! as long as we are just gonna use the relation of <i>Y</i> and <i>10</i> once, there is no reason to waste memory on saving it, and besides, we would also need extra statements to ensure the loop stops when the condition is no longer followed, what kind of statements? We will review those next.

<hr>

If statements are one of the most usefull tools in programming, why? because they give a code a level of intelligence, not like a real person obviously but, they help us in many ways!

How do they work? well, they work similarly to while statements:

```fortran
PROGRAM ifStatements
IMPLICIT NONE
LOGICAL LOGIC1,LOGIC2
INTEGER I,X,Y

LOGIC1=.TRUE.
LOGIC2=.FALSE.
X=1
Y=2
I=10

IF(LOGIC1)PRINT*,LOGIC1

IF(I.EQ.10) THEN
 PRINT*,X
ELSE IF(FALSE)THEN
 PRINT*,Y
ELSE
 PRINT*,I
END IF

PRINT*,'Outside the IF block' 
END PROGRAM
```

What happens? well, lets read the code together: We give a name to our program, define some variables, give some values to such variables and then we find our first <i>IF</i> statement, here we can see the beauty of the simple syntax of FORTRAN; if the expression inside the parenthesis is true it will execute the statement next to it. If we continue reading we can see a different <i>IF</i> structure, <i>IF(CONDITION)THEN</i>, followed by a statement and then a following <i>ELSE IF(CONDITION)THEN</i>, another print statement,an <i>ELSE</i> statement with its own print statement and a final <i>END IF</i> statement. The syntax is very simple, if the condition inside the parenthesis is <i>TRUE</i> then the following statement (we could have more than one statement) is executed, but, note that, once one of those if statements has been resolved, FORTRAN executes its statements and executes the first statement outside of the IF block, if no condition is satisfied then FORTRAN will look for an <i>ELSE</i> statement, the statements between an <i>ELSE</i> and a <i>END IF</i> statements are only executed if none of the <i>IF</i> and <i>ELSE IF</i> conditions have been satisfied, if there is no <i>ELSE</i> statement, FORTRAN exits the IF block.

Do some changes to this code: change the conditions inside the if statements, include more <i>ELSE IF</i> statements, put this conditions inside a DO loop or a DO while, include more statements in between <i>IF</i> statements 

This is how the while code would look with <i>IF</i> statements:

```fortran
PROGRAM whileLoops
IMPLICIT NONE
LOGICAL LOGIC1
INTEGER X,Y
LOGIC1=.TRUE.
X=0
Y=0
PRINT*,'          X','           Y'
DO WHILE(LOGIC1)
X=X+1
Y=Y+X**2
PRINT*,X,Y
IF(Y.GE.10)LOGIC1=.FALSE.
END DO
END PROGRAM
```
You can find more documentation on logical variables [here](https://www.personal.psu.edu/jhm/f90/lectures/10.html) and for if statements on [this one](https://pages.mtu.edu/~shene/COURSES/cs201/NOTES/chap03/else-if.html).
