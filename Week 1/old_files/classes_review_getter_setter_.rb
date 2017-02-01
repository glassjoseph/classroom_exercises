# explain the difference between classes and instances
# define a class and creating instances of that class
# identify and explain the role of attributes in an instance
# explain and use return values
# write and identify instance methods
# define methods with and without methods
# use arguments within methods



class Cups
  def initialize (type, contents)
    @type = type
    @contents = contents
  end

#getter method, == attr_reader :contents
def check_contents
  @contents
end

#setter method == attr_writer :contents
  def fill_cup(contents)
    @contents = contents
  end

#Both reader and writer together can be done:
#attr_accessor :contents
  
  def drop
    if @type == "glass"
      @type = "broken glass"
      @contents = "empty"
    else
      @contents = "empty"
    end
  end


end

require "pry"
binding.pry
""