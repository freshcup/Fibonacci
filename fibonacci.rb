
def recursive_fib(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  elsif n == 2
    return 1
  else
    recursive_fib(n-1) + recursive_fib(n-2)
  end
end

def iterative_fib(n)
  fib = [0,1]
  (2..n).each do |i|
    fibsum = 
    fibsum = fib[i-1] + fib[i-2]
    fib << fibsum
  end
  fib.sum
end

puts recursive_fib(9)
puts "---"
puts iterative_fib(9)

#require 'benchmark'
#num = 35
#Benchmark.bm do |x|
#  x.report("recursive_fib") { recursive_fib(num) }
#  x.report("iterative_fib")  { iterative_fib(num)  }
#end
