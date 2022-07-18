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

Coding is writing a set of steps for the computer to follows, this steps are called statements.

Once inside our FORTRAN code file, we will refer to this file as source code from now on,
the first thing we must write is the <i>PROGRAM</i> and the <i>END PROGRAM</i> statements:

```fortran
PROGRAM myCodesName 
END PROGRAM
```

In between this two statements you will write what your code does, 
let me show you a famous example:

```fortran
PROGRAM helloWorld
PRINT*, 'Hello World' 
END PROGRAM
```

In the first line we have our <i>PROGRAM</i> statement with a name for the program.
The second line consists of a <i>PRINT</i> statement followed by a message between quotation marks.
And finally our <i> END PROGRAM </i> statement.

Run this code! Play changing the message, there are many things you can experimentate with:
<ul>
  <li>Change the message for a different one.</li>
  <li>Add a second message.</li>
  <li>Add another message in the same statement as the original.</li>
  <li>Add a very long message until the program doesn't compile.</li>
  <li>Add symbols and numbers to your message.</li>
</ul>

It is important to note that each kind of FORTRAN code has a different maximum size for its statements, because we will be working with FORTRAN90 we will worry that our statements are less than 132 characters long. If you need a longer statement you can add an <i>&</i> symbol in your line and then the next line will become a continuation. On fixed source FORTRAN we would write the <i>&</i> on the sixt column. Lets see an example:

```fortran
PROGRAM helloWorld
PRINT*, 'Hello World, I am a '&
'FORTRAN code.'
END PROGRAM
```
Notice that it is not mandatory for the statement to be anywhere close to 132 characters long, you can use the continuation mark just to make your code more readable if that is all you want.
Play a little bit with this code, add commas, quotation marks, more messages.

<hr>
An important part of any code is commenting it! Comments are notes that programmers add to their codes and have no impact on the program because the compiler ignores them when building the executable, they are useful for many reasons! If you are using an old code, you are most likely to not remember how the code works at 100%, if someone wants to use one of your codes, your comments will help them understand it faster and better. 

To insert a comment on FORTRAN you just have to write a "!" mark and write your comment. Thats it!

```fortran
PROGRAM helloWorld
PRINT*, 'Hello World' !Here is a comment
END PROGRAM
```
It is important to notice that everything after a "!" is considered a comment, so, be careful where you write your exclamation mark, you don't want the compiler to ignore the actual code!

<hr>
So far we have learned about statements, printing strings, and writing comments.

FORTRAN was developed for scientific programming, and for that we have to work with variables and numbers!
There are 5 types of variables in FORTRAN: 
<ul>
  <li>Integer </li>
  <li>Real </li>
  <li>Complex </li>
  <li>Logical </li>
  <li>Character </li>
</ul>

I believe the names are self explanatory, but in order to give you more documentation about them you can go [here](https://pages.mtu.edu/~shene/COURSES/cs201/NOTES/chap02/var-type.html) and learn about the forms and how to declare them. We will go through those topics in basic terms later on.

FORTRAN has an implicit way to work with variables, if the variable name starts with a
letter between <i>i</i> and <i>n</i>, the variable will be considered an integer variable, in any other case it'll be considered a real variable unless it's defined as another type of variable.
It is possible to make it so you have to define every single variable, by writing a statement called <i> IMPLICIT NONE</i> right after the <i>PROGRAM</i> statement. As per usual, [here](https://docs.oracle.com/cd/E19957-01/805-4939/6j4m0vn9v/index.html) you can find more documentation on the topic. I prefer to work in the implicit way so I don't have to worry to define every single variable, but you can do as you see more fit!

Lets define some variables and see what happens when we print them!

```fortran
PROGRAM definingVariables
A=10
B=10.0
I=10
PRINT*,A,B,I
END PROGRAM
```

What did you find? something like:

   10.0000000       10.0000000              10

Now you should play with this code, do stuff like:
<ul>
  <li>Give a real value to the integer variable.</li>
  <li>Give a fractional value to both types of variables.</li>
  <li>Do not give a value to a variable (delete any statement that includes an equal).</li>
</ul>

By doing this little experiments with your code you will have a bterrer understanding of how FORTRAN works!

<hr>
There are many things we can do on FORTRAN to work with our variables but for now we will care about arithmetical operators:

<ul>
  <li>Addition.</li>
  <li>Substraction.</li>
  <li>Multiplication.</li>
  <li>Division.</li>
  <li>Exponentiation.</li>
  <li>Assignation</li>
</ul>

All this operations work just as in your math classes, assignation is just the equal sign, we already used but we will go a little bit more into it later on! In any case, you should play around with this operators to see how they interact with each others, 

```fortran
PROGRAM FORTRANarithmetics
A=2.0+3.0
B=2*A
C=10.0-A
D=2.0^2.0
I=10/2
PRINT*,A,B,C,D,I
END PROGRAM
```
You should play with this code so you have a better understanding of how FORTRAN does arithmetics, you can have more than one operator in one single statement!

<ul>
  <li>Multiply real values with integers.</li>
  <li>Divide an integer by a number that does not divides it perfectly.</li>
  <li>Add and substract numbers of different types</li>
</ul>

You will notice that results are not always as you'd expect, this is because FORTRAN follows a hierarchy when facing operators, hereis a short introduction about it:

<ul>
  <li>Exponentials will be done first.</li>
  <li>Multiplications will be done second.</li>
  <li>Additions and substractions will be done last.</li>
  <li>Anything inside a set of parenthesis will be done first, also following this hierarchy.</li>
  <li>If two operations have the same priority, they will be done from left to right.</li>
</ul>

[Here](https://web.chem.ox.ac.uk/fortran/arithmetic.html) you can find more about this hierarchy.

<hr>

The equal sign has an interesting way to work on programming. It does not mean that two things are equal but instead it assigns the right side of the equal to the variable on the left, this may sound that it two things are equal but it allows us to do more things! Let's show how it works on an example:

```fortran
PROGRAM equalSign
A=10.0
PRINT*,A
A=2*A
PRINT*,A
END PROGRAM
```

You see? we could have defined a new variable but this way we are saving memory and we do not need to remember a new variable!

<hr> 
So far we have only talked about integer and real variables, but how do we define character variables?

The way to define variables in FORTRAN is by writing a statement that starts with the variable type. In the case of the character variables, we can define them as:

```fortran
PROGRAM charVariable
CHARACTER myName*4
CHARACTER*5 friendName
myName='Toto'
friendName='Willy'
PRINT*,myName,friendName
END PROGRAM
```

This <i>*#</i> tells FORTRAN how many characters the variable will hold. What would happen if we give a larger word than the variable can hold? or shorter? 

Pretty simple, FORTRAN will fill the variable letter by letter, if it runs out of letters then it'll be empty from then on,  

<hr>
Next we will talk about how to work with complex numbers, the main difference with real numbers is that we must define each part inside a set of parenthesis and separated by a comma. FORTRAN knows how to work with the imaginary part when doing products, exponentializing, etc.
```fortran
PROGRAM complexNumbers
COMPLEX C,D
C=(1,2)
D=(1,-2)
PRINT*,C,2*D,D*C
END PROGRAM
```
Play with this code, multiply a complex number by real and integers, add a real value, add an integer, exponentialize a complex number, experiment with them.
<hr>
Our last character type is the logical type, but we will cover this in the next directory, because their use is mostly on IF statements.
<hr>
Up to here you shoud be able to do your own codes to do basic math and simple problems, the next directory is names <i>Do's, If's and What Else</i>, we will explore how to work with loops, to make if statements and how to use the <i>go to</i> statement.