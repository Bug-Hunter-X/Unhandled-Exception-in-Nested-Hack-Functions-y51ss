# Unhandled Exception in Nested Hack Functions

This repository demonstrates a subtle bug related to unhandled exceptions in nested Hack functions. The `foo` function throws an exception if the input is negative, but the `bar` function does not handle this exception, leading to program termination.

The `bug.hack` file contains the buggy code, and `bugSolution.hack` provides a corrected version that demonstrates proper exception handling.

## Bug Description
When `bar` calls `foo` with a negative number, `foo` throws an exception. Since `bar` does not have a `try-catch` block, this exception propagates up, causing the program to crash.

## Solution
The solution involves adding a `try-catch` block to the `bar` function to gracefully handle exceptions thrown by `foo`.