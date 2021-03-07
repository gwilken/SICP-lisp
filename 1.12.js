// f(n) = n if n < 3 and f(n) = f(n-1) + 2f(n-2) + 3f(n -3) if n >= 3
// test cases: f(5) = 25, f(6) = 59, f(7) = 142


// recursive process

function y(n) {
  if (n < 3) {
    return n
  }

  return y(n - 1) + (2 * (y(n - 2))) + (3 * (y(n - 3)));
}

console.log(y(5));


//iterative

function f(n) {
  if (n < 3) {
    return n
  }

  function iterf(a, b, c, count) {
    if (count < 3) {
      return a
    }

    let old_a = a;
    a = a + (2 * b) + (3 * c);
    c = b;
    b = old_a;
    count -= 1;

    return iterf(a, b, c, count);
  }

  return iterf(2, 1, 0, n)
}


console.log(f(5));
