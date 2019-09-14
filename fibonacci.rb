
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
    fibsum = fib[i-1] + fib[i-2]
     fib << fibsum
  end
   
  return fib.last
end

puts "recursive:"
puts recursive_fib(9)
puts "---"
puts "iterative:"
puts iterative_fib(9)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end


#recursive:
#34
#---
#iterative:
#34
#       user     system      total        real
#recursive_fib  1.826717   0.001056   1.827773 (  1.837155)
#iterative_fib  0.000022   0.000000   0.000022 (  0.000017)
