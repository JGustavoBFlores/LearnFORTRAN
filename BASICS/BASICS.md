In this first directory we will work the basics of FORTRAN

There are many parts of a FORTRAN code but lets start by the file

A FORTRAN code is contained in a .f type of document. Nowadays FORTRAN 
is taught using free source FORTRAN, I code using fixed source, the 
differences on both formats is minimum but it is important to point it.

Fixed source reserves the first 6 columns for labels, continuation symbol, 
etc, while free source format does not have such reservations, you can read 
more about it [here](https://people.cs.vt.edu/~asandu/Courses/MTU/CS2911/fortran_notes/node4.html)
with more specific detail. 

My work right now asks me to develop fixed source code, but in order to help
you learn a modern FORTRAN, we will work on writing free source code!


So, any FORTRAN code we write must have a name that ends on .f90 like: <i>mycode.f90</i>

<hr>
Coding is writing a set of steps for the computer to follows, this steps are called statements.

Once inside our FORTRAN code file, we will refer to this file as source code from now on,
the first thing we must write is the <i>PROGRAM</i> and the <i>END PROGRAM</i> statements:

```fortran
PROGRAM mycodesname 
END PROGRAM
```

In between this two statements you will write what your code does, 
let me show you a famous example:

```fortran
PROGRAM helloworld
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

<hr>
An important part of any code is commenting it! Comments are notes that programmers add to their codes and have no impact on the program because the compiler ignores them when building the executable, they are useful for many reasons! If you are using an old code, you are most likely to not remember how the code works at 100%, if someone wants to use one of your codes, your comments will help them understand it faster and better. 

To insert a comment on FORTRAN you just have to write a "!" mark and write your comment. Thats it!

```fortran
PROGRAM helloworld
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
It is possible to make it so you have to define every single variable, by writing a statement called <i> IMPLICIT NONE</i> right after the <i>PROGRAM</i> statement. As per usual, [here](https://docs.oracle.com/cd/E19957-01/805-4939/6j4m0vn9v/index.html) you van find more documentation on the topic. I prefer to work in the implicit way so I don't have to worry to define every single variable, but you can do as you see more fit!


