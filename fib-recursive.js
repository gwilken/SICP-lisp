// 1 1 2 3 5 8 13 21 34 55
// test: fib(0) = 0, fib(1) = 1, fib(10) = 55

function fib(n) {
  if (n == 1 || n == 0) {
    return n;
  }
  return fib(n - 1) + fib(n - 2)
}

console.log(fib(100));
