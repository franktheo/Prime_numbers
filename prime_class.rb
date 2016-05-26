class Prime

   #def initialize
   #end
   
   def primality(n)
      i = 2
      while ( i * i <= n)
         if  (n % i == 0)
            return false
         end
         i += 1
      end
      return true
   end

   def sieve(n)
	  sieve = []
	  (2..n).each { |i| sieve[i] = i }
	  (2..Math.sqrt(n)).each do |i|
	    (i*i).step(n, i) { |j| sieve[j] = nil } if sieve[i]
	  end
	  sieve.compact
	end

   def prime_table(prime_array)
      n = prime_array.size
      printf "    |"
      prime_array.each {|i| printf("%5d",i)}
      puts " "
      puts "----+" + "-----" * n
      prime_array.each_with_index do |x,i|
      limit = i - 1
      print "%3d |" % x
      (0..limit).each {|y| print "     "}
        (i..n-1).each {|y| print " %4d" % (x*prime_array[y].to_f)}
         puts
      end
   end
end
