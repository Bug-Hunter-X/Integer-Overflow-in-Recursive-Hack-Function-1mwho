function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

//This code has a subtle error related to integer overflow. When the input x becomes large enough, the intermediate results in the recursive calls to foo will exceed the maximum representable integer value, leading to incorrect or unexpected behavior. The integer overflow is happening silently without any runtime error.
