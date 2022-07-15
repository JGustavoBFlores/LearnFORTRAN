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

