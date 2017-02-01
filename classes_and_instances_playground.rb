
# class Fridge
#   attr_reader :brand,
#               :color,
#               :temperature,
#               :plugged_in,
#               :contents
  
# #  attr_writer :temperature

#   attr_accessor :temperature

#  def initialize(brand, color, temperature, plugged_in, contents)
#    #HERE IS WHERE WE DEFINE THE **ATTRIBUTES**  the "Getter" method
#    @brand = brand
#    @color = color
#    @temperature = temperature
#    @plugged_in = plugged_in
#    @contents = contents
#  end

#   def temperature_in_celsius 
#     (@temperature - 32) * (5/9)
#   end

#   def add_contents(items)
#       @contents << items
#   end

# #This is called a SETTER METHOD
#   def temperature=(new_temperature)
#     @temperature = new_temperature
#   end


# end

# #create new instance of Fridge class, pass instance variables
# fridge_1 = Fridge.new("Maytag", "blue", 0, true, ["ice cream", "ice"])
# # p "Number 1: #{fridge_1}"



# require 'pry'; binding.pry  
# puts "---"






# # class Cups
# # end

# #   wine_glass = Cups.new
# #   p "wine_glass: #{wine_glass}"

# #   paper_cup = Cups.new
# #   p "paper_cup: #{paper_cup}"

# #   coffee_mug = Cups.new
# #   p "coffee_mug: #{coffee_mug}"

# #   tea_cup = Cups.new
# #   p "tea_cup: #{tea_cup}"

# #   nalgene = Cups.new
# #   p "nalgene: #{nalgene}"


# # class Tables
# # end
# #   dinner = Tables.new
# #   p "dinner: #{dinner}"
  
# #   coffee = Tables.new
# #   p "coffee: #{coffee}"

# #   round = Tables.new
# #   p "round: #{round}"





class Person
  attr_reader :hair_color
              :eye_color
              :height
              :current_mood
              :birthplace
              :birthdate



  def initialize(hair_color, eye_color, height, current_mood, birthplace, birthday)
    @hair_color = hair_color
    @height = height
    @current_mood = current_mood
    @eye_color = eye_color
    @birthplace = birthplace
    end

  def age
    @age = (Time.now.to_f - @birthday.to_f)/31536000
  end

end

george_washington = Person.new("white", "gray-blue", 6.0, "dead", "Virginia", Time.new(1988,05,20) )

joseph = Person.new("brown", "hazel", 5.8, "intrigued", "Utah", Time.new(1988,05,20))
danny = Person.new("black", "dark brown", 6.0, "excited", "Denver", Time.new(1988,05,20))

require "pry" ; binding.pry
""
