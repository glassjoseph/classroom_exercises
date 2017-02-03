require 'pry'

class ReverseCalculator
  attr_reader :total, :input, :operator, :numbers

#This works, but needs major refactoring
  def initialize(input)
    @total = 0
    @input = input
    @operator = @input[-1]
    @numbers = @input[0..-2].split(", ").map!{|number| number.to_i}


    if @operator == "+"
      #Turn this 
      sum = 0
      @numbers.each{|num| sum += num}
      # binding.pry
      @total += sum
    end

    if @operator == "-"
      sum = 0
      @numbers.each{|num| sum += num}
      @total -= sum
    end
   
  
  end



  def clear
    @total = 0
  end

  def subtract(*number)
    @total -= number
  end

end

calc = ReverseCalculator.new("1, 2 +")

binding.pry
""
