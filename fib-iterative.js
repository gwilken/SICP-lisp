// 1 1 2 3 5 8 13 21 34 55
// test: fib(0) = 0, fib(1) = 1, fib(10) = 55

function fib(n) {
  if (n == 0 || n == 1) {
    return n;
  }

  function iterFib(accum, previous, n) {
    if (n == 1) {
      return accum
    }

    // let oldCurrent = current;
    // current = current + previous;
    // previous = oldCurrent;
    // index += 1;

    return iterFib(accum + previous, accum, n -= 1)
  }

  return iterFib(1, 0, n);
}


console.log(fib(100));
