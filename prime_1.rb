#Beth's Pseudocode
#i've got a number
#a prime number is only divisible by 1 and itself

# create a list of all nums between1 and the number

#go through that list, and check if my number is divisible by that number
  #if number % potential _factor, increment counter

  #if the number is divisible by any of those, it's NOT prime, otherwise it is!
    # use a counter
  #if counter is greater than 0, it's not prime.

# !!! - She creates the final output sentences before she codes, so she know's what she's shooting at.


#Beth's

# def prime?(number)
#     counter = 0
#     potential_factors = (2..number/2).to_a
#     potential_factors.each do |potential_factors|
#         if number % potential_factors == 0
#             counter += 1
#         end
#     end
#     if counter == 0
#         "#{number} is a prime!"
#     else
#         "#{number} is not a prime."
#     end
# end





# My version
def prime?(number)
    factors = (2...number).select { |x| number % x == 0 }
    if factors.empty?()
        puts "#{number} is a prime!"
    else
        puts "#{number} is not prime, it is divisible by these factors: #{factors}."
    end
end

# puts prime?(5) # <= "5 is a prime number"

# puts prime?(18)

#A number is prime if it is only disible by itself and 1. 
#is 7 a prime? is it divisible by 





# I need to find all primes from 2..N . 

#from 2..N, take each number and

#check if it's prime

# if it is, add it to list of primes


# def find_primes(quantity)
#     primes = []
#     while primes.length < quantity
#     Array(2...quantity).each do |number|
#         factors = (2...number).select { |x| number % x == 0 }
#         if factors.empty?()
#             #check if prime number in primes.
#             primes << number unless primes.include?(number)
            

#         end
#     end
#     end

#     puts "For #{quantity}, here are your primes #{primes}"
# end



#     quantity.times do
#         test = prime?(quantity)
#         puts test
#     end
# end
    

def find_primes(number)
    primes = []
    until primes.length > number
      factors = (2...1000).select { |x| number % x == 0 }
      if factors.empty?()
        primes << number
        #else
            #puts "#{number} is not prime, it is divisible by these factors: #{factors}."
        end
    end
end


puts find_primes(5) #<= "the first 5 prime numbers are 2, 3, 5, 7, 11"
puts find_primes(3) #<= "the first 5 prime numbers are 2, 3, 5"



