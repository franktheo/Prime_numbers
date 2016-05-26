require 'benchmark'
require './prime_class'

prime = Prime.new

x = 10000000
n =  x*Math.log(x) + x*Math.log(Math.log(x))

benchmark = Benchmark.realtime do
  prime_array = prime.sieve(n).first(x)
end

puts "Time = %.5f seconds." %benchmark

