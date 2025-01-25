# Integer Overflow in Recursive Hack Function
This repository demonstrates a subtle integer overflow bug in a recursive Hack function.  The function `foo` calculates the factorial of a given integer. However, for sufficiently large inputs, the intermediate results exceed the maximum representable integer value, leading to an incorrect result without any explicit error message.

The `bug.hack` file contains the buggy code. The `bugSolution.hack` file provides a solution that addresses the integer overflow issue using arbitrary-precision arithmetic.
