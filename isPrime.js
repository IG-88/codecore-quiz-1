var isPrime = function(n) {
  for (var i = n - 1 ; i >= 2; i--) {
    if (n % i === 0 ) {
      return false;
    }
  }
  return true;
};
