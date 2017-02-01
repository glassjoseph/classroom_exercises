#given nested arrays, [name, votes]
#choose people with  > 3000 votes and return


votes = [["Ilana", 2468], ["Lauren", 9872], ["Beth", 4521]]
highest = []

votes.each{ |array| highest << array if array[1] > 3000} 
#Output
# "Lauren (9872) and Beth (4521) have more than 3000 votes"
puts "#{highest[0][0]} (#{highest[0][1]}) and #{highest[1][0]} (#{highest[1][1]}) have more than 3000 votes." 



#extension
votes = [["Lauren", 9872], ["Ilana", 3468], ["Beth", 4521], ["Josh", 1673]]
highest = []
votes.each{ |array| highest << array if array[1] > 3000} 
puts "#{highest[0][0]} (#{highest[0][1]}) and #{highest[1][0]} (#{highest[1][1]}) and #{highest[2][0]} (#{highest[2][1]}) have more than 3000 votes." 


#refactoring 
# I think I can do it without the extra array
# 'array' as a variable name is bad practice.
#There's definitely a better way to print all that. 


highest = ""

votes.each do |pair|
  if pair[1] > 3000
    highest += "#{pair[0]} (#{pair[1]}) and "
  end
end

# highest = highest[0..-5]
puts highest +"have more than 3000 votes."

# names_and_votes = ""
# highest.each{ |array| "#{array+" and "} 


highest = ""

votes.each_with_index do |pair, index|
  if index == votes.length && pair[1] > 3000
    highest += "#{pair[0]} (#{pair[1]})"
  elsif pair[1] > 3000
    highest += "#{pair[0]} (#{pair[1]}) and "
  end
end

# highest = highest[0..-5]
puts highest +"have more than 3000 votes."