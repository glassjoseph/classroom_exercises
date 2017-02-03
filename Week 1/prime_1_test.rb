#A number is prime if it is only disible by itself and 1. 


def prime?(number)
    factors = (2...number).select { |x| number % x == 0 }
    if factors.empty?()
      number
    end
end

puts prime?(7)


#puts prime?(5) # <= "5 is a prime number"

#puts prime?(18)







#I need to find the first N number of primes.
#make a list of each prime found, check length

#from 2..N, take each number and check if it's prime

# if it is, add it to list of primes


def find_primes(quantity)
    #make a list for the primes
    primes = []
    #starting variable 
    number = 2
    #until we have as many primes as specified by quantity 
    until primes.length == quantity
      #
      prime = prime?(number)
      #increment counter
      number = number.next
      primes << prime?(number.next) unless (prime == nil) || primes.include?(prime)
      primes.delete(nil)
    end
    puts "The first #{quantity} prime numbers are #{primes}"
end




#     puts "For #{quantity}, here are your primes #{primes}"


 puts find_primes(5) #<= "the first 5 prime numbers are 2, 3, 5, 7, 11"
 puts find_primes(3) #<= "the first 5 prime numbers are 2, 3, 5"
puts find_primes(19)

#BOOYAHH!!
#Now, how do I re-write this monstrosity?