require 'benchmark'

def recursive_fib(number)
  return number <= 1 ? number : recursive_fib(number - 1) + recursive_fib(number - 2)
end

def iterative_fib(number)
  target = 4
  sequence = [0, 1, 1, 2]

  while target <= number
    sequence.push((sequence[-1]) + (sequence[-2]))
    target += 1
  end

  sequence[-1]
end

num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end