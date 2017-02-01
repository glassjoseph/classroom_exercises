puts "Please type your message"
message = gets.chomp

consonants = Array('a'..'z')-["a","e","i","o","u", "y"]

if consonants.include?(message[-1])
    puts "CONSONANT!"
elsif message[-1] == "y"
    puts "DON'T KNOW"
elsif
    puts "VOWEL!"
end

