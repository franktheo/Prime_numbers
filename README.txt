 1. One of the fastest algorithms to find prime numbers is Sieve of_Eratosthenes
 2. The time complexity of this algorithm is O(n log log n)
 3. Rosser's theorem states that nth prime should be less than nlogn+nloglogn
    The bit complexity of the algorithm is O(n (log n) (log log n)) 
 4. Memory requirement is O(n)
 5. Example:
    100th prime is 541
    For n = 100
      n log n =  460.52
      log log n = 152.72
      upper bound = n log n + log log n = 613
    We need to pass 613 to the sieve method and take the first 100 of returned prime numbers.
 6. Notes that in Multiplication of prime table we only print out half of the entries.
    This requires 1/2 n^2 operations instead of n^2 operations.
 7. Generating prime numbers multilication table to STDOUT
    Please run prime_sieve.rb
 8. Benchmarking
    Please run prime_sieve_benchmark.rb 
 9. TDD test
    Please run prime_sieve_benchmark.rb 
10. Multiplication diff (for first 10 prime numbers)
    Please run prime_sieve_diff.rb
11. Benchmarking results
    x: number of prime numbers
    Run on MacBook Pro, 2.4 GHz Intel Core i5 with 8GB of memory

    For the first 100000 prime numbers, algorithm runs under 1 s
    The algorithm scales up pretty good, algorithm runs around 2 minutes    
    for the first 10 million prime numbers. Run time for printing multiplication
    table is dominated by IO operation.

    #x       real run time (in seconds)   memory
    #        prime_sieve   table
    #10      0.00004       0.00058
    #1000    0.00462       3.51471
    #2000    0.01030       14.33948             
    #10000   0.06737
    #100000  0.89083
    #1000000 11.45880                      148 M
    #2000000 23.54210                      268 M
    #3000000 36.49008                      409 M
    #4000000 49.72509                      553 M
    #5000000 62.74472                      699 M
    #6000000 76.10348                      846 M
    #7000000 89.97264                      995 M
    #8000000 103.61615                     1144 M
    #9000000 117.51578                     1296 M           
    #10000000 132.21573                    1448 M
