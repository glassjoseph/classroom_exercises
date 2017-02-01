# Recreate the project, but do it without using any arrays, enumerables, or loops.
require 'pry'

valid = false


  #split string into array, convert each number into integer

  #From the rightmost digit, going left, double every second digit


# Beth's version:
#She just writes the index number in, one by one, checking for doubles 
#It's easy to refactor that way
#card_number[-1]
#card_number[-2]
#card_number[-3]

# You *can* just go, and enter in the the values for each index that you need to take, and then look at
#the pattern and refacor


#my version:
# She said 'no loops' but i ended up just manually making a loop, which wasn't the point.

index = -1
sum = 0

#copy 8 times
card_number = "4929735477250543"
sum += card_number[index].to_i
index -= 1

doubled = card_number[index].to_i * 2
if doubled > 9
  doubled = doubled - 9
end
sum += doubled
index -=1




#if > 9Doubled number - 9


#card_number[index] = doubled.to_s




  #if total % 10 == 0, the number is valid

if (sum % 10 == 0)
  valid = true
else
  valid = false
end

if valid == true 
  puts "The number is valid!"
else
  puts "The number is invalid!"
end

puts card_number
puts sum



# if doubled > 9
  # puts "number #{doubled} is found"
  # doubled_summed = (doubled / 10) + (doubled % 10)
  # puts "now it's summed to #{doubled_summed}"
  # sum += doubled_summed
  # doubled = doubled - 9




##Skip American Express numbers
###valid
#credit_check("342804633855673")
###invalid
#credit_check("342801633855673")



#Questions:

#do I need to keep the "valid = true" line 27? it doesn't add function
# but it does make code clearer?

#should I leave my comments or clear them up? 
## make your methods self-explanatory, good names, then everything can be read naturally

# Would an expert rubyist have broken this into more methods? YES!!!
#where?



#Every method should have Single Responsibility.

  ##Rather than make a cascade, make these into their own methods,
  ### helps with readability, descriptive names
  #### lets you reuse your code
  ####So, break it into 

