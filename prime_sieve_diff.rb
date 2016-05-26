%x(ruby prime_sieve.rb > output.txt)

puts %x(diff prime_table.txt output.txt) 
