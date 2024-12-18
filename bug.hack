```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function main(): void {
  echo bar(5);
}
```
This code compiles and runs fine, but the issue arises when you try to modify the `foo` function to handle errors. For example:
```hack
function foo(x: int): int {
  if (x < 0) {
    throw new Exception("x must be non-negative");
  } else {
    return x + 1;
  }
}
```
Now, if you call `bar(5)`, it works correctly. However, if you call `bar(-5)`, the exception isn't handled, and the program crashes. This is an uncommon error because it highlights a subtle interaction between function calls and exception handling.  The `bar` function doesn't expect or handle the possibility of an exception thrown by `foo`.