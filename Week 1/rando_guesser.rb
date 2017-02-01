
#set up secret, guess variable, compare

=begin
secret_number = rand(1..10)
puts "(The secret number is #{secret_number})"
guess = gets.chomp
until guess == secret_number
    puts "Guess is #{guess}"
    puts "Guess again!"
    guess = gets.chomp.to_i
end
puts "You guessed it!"


=end

secret_number = rand(1..10)
puts "(The secret number is #{secret_number})"
guess = gets.chomp.to_i
while guess != secret_number
    puts "Guess is #{guess}"
    puts "Guess again!"
    guess = gets.chomp.to_i
end

puts "You guessed it!"

