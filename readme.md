x64 Assembly Hello World
========================

This is a basic "Hello World" program written in x64 Linux Assembly.

## Learning Outcomes

After completing this assignment, students will be able to:

1. Describe the benefits of high level languages
2. Identify assembly language programs

Compiling
---------

This program can be compiled by calling:

`make`

Running
-------

The output binary is called `hello` and can be run as:

`./hello`

It produces the following outout:

    Hello, world!
    1
    2
    3    

Assignment
----------

Modify the program to produce the following output:

    Hello, world!
    1
    2
    3
    4
    5
    6
    7
    8
    9

A test is included to verify completion of this assignment. Once you have appropriately modified `hello.s`, the following command should succeed:

`make test`

Extra challenge: If you are able to implement counting to 9 quickly and easily, try modifying the program to count to 99.

Reference Material
------------------

- [Wikibooks x86 Assembly](https://en.wikibooks.org/wiki/X86_Assembly)
