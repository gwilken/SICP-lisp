// n * (n - 1)
// 1 * 2 * 3 ...


function factorial(n) {
  function factIter(product, count) {
    if (count > n) {
      return product
    }
    product *= count;
    count += 1;
  
    return factIter(product, count);
  }

  return factIter(1, 1);
}

console.log(factorial(6));
