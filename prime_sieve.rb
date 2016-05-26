require './prime_class'

prime = Prime.new

x = 10

n =  x*Math.log(x) + x*Math.log(Math.log(x))

prime_numbers = prime.sieve(n).first(x)

prime.prime_table(prime_numbers)
