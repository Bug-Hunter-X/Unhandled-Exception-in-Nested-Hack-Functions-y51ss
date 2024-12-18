```hack
function foo(x: int): int {
  if (x < 0) {
    throw new Exception("x must be non-negative");
  } else {
    return x + 1;
  }
}

function bar(x: int): int {
  try {
    return foo(x) * 2;
  } catch (Exception $e) {
    echo "Error: ".$e->getMessage();
    return 0; // Or handle the error as needed
  }
}

function main(): void {
  echo bar(5); // Output: 12
  echo bar(-5); // Output: Error: x must be non-negative0
}
```
This corrected version uses a `try-catch` block in `bar` to catch and handle the exception thrown by `foo`, preventing the program from crashing.