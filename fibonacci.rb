def recursive_fib(n)
  if n < 2
    return n    
  else
    recursive_fib(n-1) + recursive_fib(n-2)
  end
end

def iterative_fib(n)
  fib = [0,1]
  (2..n).each do |i|
    fibsum = fib[i-1] + fib[i-2]
     fib << fibsum
  end
  return fib.last
end


puts "recursive:"
puts recursive_fib(35)
puts "---"
puts "iterative:"
puts iterative_fib(35)


require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end

#recursive:
#9227465
#---
#iterative:
#9227465
#user           system     total      real
#recursive_fib  0.990097   0.000000   0.990097 (  1.001550)
#iterative_fib  0.000000   0.000000   0.000000 (  0.000012)

