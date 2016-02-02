class Prime

  
  def nth(number)

    primes = [2]
    i = 0
    
    while primes.length < number
        primes.each do |prime|
          if (primes[-1] + i) % prime != 0
            primes << (primes[-1] + i)
            break 
          end
        end
      i += 1
    end

    primes[-1]
  end


  def counter 

  end
end


#create array of prime numbers with length of n. then just grab that last number.

#that could be the conditional, as long as length of array of primes is less than the number they give, it'll keep searching

#test if new number is divisible by any of the other prime numbers