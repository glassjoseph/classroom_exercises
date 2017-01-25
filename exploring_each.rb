 # binding.pry can't run as the last thing in your script.
 # it "pries" into your code, into the middle, not end

# require 'pry'


# [1,2,3,4,5,6].each do |number|
#   puts number * 2
# end


# [1,2,3,4,5,6].each do |number|
#   if number.even?
#     puts number
#   end
# end

# [1,2,3,4,5,6].each {|number| puts number if number.odd?}

# new_array = []
# [1,2,3,4,5,6].each {|num| new_array << (num *2)}
# puts "This is it!"
# new_array






# [1,2,3,4,5,6].each {|number| puts number *2}


# [1,2,3,4,5,6].each {|number| puts number * 2 if number % 2 == 0}



names = ["Ilana Corson", "Lauren Fazah", "Beth Sebian"]
names.each do |name|
  puts name.split
  puts name[0]
end



