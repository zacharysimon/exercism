class Prime

  def nth(number)
    check_weird_case(number)

    @primes = [2]
    i = 0
    
    while @primes.length < number
      next_number = (@primes[-1] + i)
      if prime_checker(next_number)
        @primes << (next_number) 
        i = 0
      end
      i += 1
    end

    @primes[-1]
  end

  def check_weird_case(number)
    if number == 0
      raise ArgumentError.new("This a weird case")
    end
  end


  def prime_checker(number)
    upper_bound = Math.sqrt(number).floor
    test_condition = true
    
    @primes.each do |prime|
      if number % prime == 0
        test_condition = false
        break 
      end
      if prime > upper_bound
        break
      end
    end

    test_condition
  end
end


#create array of prime numbers with length of n. then just grab that last number.

#that could be the conditional, as long as length of array of primes is less than the number they give, it'll keep searching

#test if new number is divisible by any of the other prime numbers