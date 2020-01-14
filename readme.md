x64 Assembly Hello World
========================

This is a basic "Hello World" program written in x64 Linux Assembly.

Compiling
---------

This program can be compiled by calling:

`make`

Running
-------

The output binary is called `hello` and can be run as:

`./hello`

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

This should probably be accomplished using a conditonal jump and an incrementing variable likely stored in the [bss section](https://en.wikipedia.org/wiki/.bss). Solutions that simply hardcode this output are unsatisfactory.

A test is included to verify completion of this assignment. Once you have appropriately modified `hello.s`, the following command should succeed:

`make test`

Reference Material
------------------

- [Wikibooks x86 Assembly](https://en.wikibooks.org/wiki/X86_Assembly)
