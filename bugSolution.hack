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

//Solution:

function foo_safe(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    var result = 1;
    for (var i = 1; i <= x; i++) {
      result *= i;
    }
    return result;
  }
}
function main(): void {
  echo foo_safe(5);
}
//This revised code uses iterative multiplication instead of recursion, preventing stack overflow.  For very large factorials, consider using libraries for arbitrary-precision arithmetic.
