puts "Welcome! What age are you?"
user_age = gets.chomp.to_i

if user_age > 21
  puts "Come on in!"

elsif user_age == 21
  puts "Happy Birthday! Come on in."
else
  puts "Sorry. Come back in a few years. You have your whole life ahead of you!"

end
#  if user_age <= 21
 # puts "You have your whole life ahead of you!"