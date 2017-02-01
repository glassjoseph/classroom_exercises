class SuperFizz
attr_reader :num, :output
  def initialize(num)
    @num = num
    @output = ""
  end

#this is called divisible_by_what b/c
  def divisible_by_what
    if num % 7 == 0
      output << "Super"
    end
    divisible_by_3
  end

  def divisible_by_3
    if num % 3 == 0
      output << "Fizz"
    end
    divisible_by_5
  end

  def divisible_by_5
    if num % 5 == 0
      output << "Buzz"
    end
    check_the_output
  end


#You don't have to put your methods in order!! it will look in all the available scope for a method of the right name
#This is an advantage of class methods over if/else 

#

# When to put things in different methods?
#A: when you're doing 'different' things, e.g.  
##divisible_by_5 does one thing, check_the_output completely different thing
  def check_the_output
    if output.empty?
      puts num
    else
      puts output
    end

  end


end


#OR chain them: SuperFizz.new(87687687).divisible_by_what
superfizz = SuperFizz.new(87687687)
superfizz.divisible_by_what


1000.times do |num|
  superfizz = SuperFizz.new(num)
  superfizz.divisible_by_what
end


#Old unfactored code
    # if num % 3 == 0 && num % 5 == 0 && num % 7 == 0
    #   puts "SuperFizzBuzz"
    # elsif num % 3 == 0 && num % 7 == 0
    #   puts  "SuperFizz"
    # elsif num % 5 == 0 && num % 7 == 0
    #   puts "SuperBuzz"
    # elsif num % 3 == 0 && num % 5 == 0
    #   puts "FizzBuzz"
    # elsif num % 3 == 0
    #   puts "Fizz"
    # elsif num % 5 == 0
    #   puts "Buzz"