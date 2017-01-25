def prime?(number)
    factors = (2...number).select { |x| number % x == 0 }
    if factors.empty?()
        puts "#{number} is a prime!"
    else
        puts "#{number} is not prime, it is divisible by these factors: #{factors}."
    end
end

puts prime?(5) # <= "5 is a prime number"

puts prime?(18)

#A number is prime if it is only disible by itself and 1. 
#is 7 a prime? is it divisible by 





# I need to find the first N primes. 

# I can use the factors code, but I need to tell it 
def find_primes(quantity)
    primes = []
    quantity.times do |number|
        factors = (2...number).select { |x| number % x == 0 }
        if factors.empty?()
            primes << number
        end
    end

    puts primes
end
   
#     quantity.times do
#         test = prime?(quantity)
#         puts test
#     end
# end
    
puts find_primes(3)

puts find_primes(5) #<= "the first 5 prime numbers are 2, 3, 5, 7, 11"
puts find_primes(3) #<= "the first 5 prime numbers are 2, 3, 5"
