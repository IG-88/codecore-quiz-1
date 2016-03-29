require "benchmark"

def return_even_loop(n)
  evens = []
  (1..n).each do |num|
    evens.push(num * 2)
  end
  evens
end

def return_even_recursion(n, i = 1)
  if i == n
    [i * 2]
  else
    [i * 2] + return_even_recursion(n, i + 1)
  end
end

Benchmark.bm do |x|
  x.report do
    def return_even_loop(n)
      evens = []
      (1..n).each do |num|
        evens.push(num * 2)
      end
      evens
    end
  end
end

Benchmark.bm do |x|
  x.report do
    def return_even_recursion(n, i = 1)
      if i == n
        [i * 2]
      else
        [i * 2] + return_even_recursion(n, i + 1)
      end
    end
  end
end

Benchmark.bm do |x|
  x.report do
    1_000_000.times { return_even_loop(30) }
  end
end

Benchmark.bm do |x|
  x.report do
    1_000_000.times { return_even_recursion(30) }
  end
end
