require 'pry'


card_number = "4929735477250543"

#split string into array, convert each number into integer
card_number = card_number.split("").map{|number| number.to_i}
                #don't need this?.
                # remove the last digit and save it as "check_number"
                #check_number = card_number.delete
valid = false

# Your Luhn Algorithm Here
#From the rightmost digit, going left, double every second digit
#reverse to iterate over
card_number = card_number.reverse 
length = card_number.length
puts length

                                #take every second item, turn it into an integer, then double it.
                                # This works, but isn't readable
                                # card_number.each.with_index do |number, index|
                                #     if index.odd?
                                #       puts "index is #{index}, number is #{number}"
                                #       card_number[index] = ((card_number[index].) * 2).to_s
                                #       puts card_number[index]
                                #       #binding.pry
                                #     end
                                # end

 #try that again
index = 1
while index < length
card_number[index] = ((card_number[index]) * 2)
index += 2
end

#unreverse it
#unnecessary 
#card_number = card_number.reverse

puts "this is the number #{card_number}"

  

#if any of those doublings are > 9, then split them and sum the digits of ones and tens places

#split them by using .to_s, splitting, and then to._i, then add    
#make this a method?
card_number.map!.with_index do |number, index|
  # if number > 9
    number = number.to_s.split("")
    #add together, put it back into card_number
    # binding.pry
    number[0].to_i + number[1].to_i
  # else
  #   number
  # end
end

puts "#{card_number}"
#sum all the digits
#if total %10 == 0, the number is valid




# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
#Take the last digit
