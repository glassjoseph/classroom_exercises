puts "Please type your message"
message = gets.chomp
puts "You said '#{message}'."

if message.length.even?
    puts "EVEN!"
else
    puts "ODD!"
end
