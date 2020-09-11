
function recursive_fib(n) {
 return (n < 2) ? n : recursive_fib(n-1) + recursive_fib(n-2)
}
console.log(recursive_fib(9));