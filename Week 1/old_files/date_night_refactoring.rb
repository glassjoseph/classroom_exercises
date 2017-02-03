require 'pry'


#create first node, check if it's nil 
#set as root
#assuming first node, how to make second node?
#how do I keep track of left?




class BinarySearchTree
  #Do I make an empty root? Yes?
  attr_reader :node, :left, :right

  def initialize
    @node = nil
  end

  

#stephs version
  def insert(rating, title)
    if @node.nil?
      @node = Node.new(rating, title)
    else
      @node.insert(rating, title)
    end
  end

  # def insert(rating, title)
  #   if @node.nil?
  #     @node = Node.new(rating, title)
  #   else
  #     @node = Node.new(rating, title)
  #     if rating < self.node.rating
  #       @node = @left
  #       insert(rating, title)
  #     else
  #       @node = @right
  #       insert(rating, title)
  #     end
  #   end


# #
# def insert(rating, title)
#   if @node.nil?
#     @node = Node.new(rating, title)
#   elsif @node.rating > rating
#     if @left.nil?
#       @left = Node.new(rating, title)
#     end
#     @left.insert(rating, title)

#   elsif @node.rating < rating
#     if @rating.nil?
#       @rating = Node.new(rating,title)
#     @right.insert(rating, title)
    
  #     @left = Node.new(rating, title)
  #   else
  #     self.insert(rating,title)
  #   end
  # elsif @node.rating < rating
  #   if @right.nil?
  #     @right = Node.new(rating, title)
  #   else
  # #     self.insert(rating,title)
  # end  
    




  
end

  

#You either create or pass it to a different node
#left and right should be methods


  #new node
  #insert





class Node
  #rating, title, probably read-only
 attr_accessor :rating, :title, :left, :right
  def initialize(rating, title)
    @rating = rating
    @title = title
    @left = nil
    @right = nil
  end

  def insert(new_rating, new_title)
    #check 
    if new_rating < rating
      if left.nil?
        @left = Node.new(new_rating, new_title)
      else
        @left.insert(new_title,new_title)
      end
    else
      if right.nil?
        @right = Node.new(new_rating, new_title)
      else 
        @right.insert(new_rating, new_title)
      end
    end
  end


  def is_leaf?
    @left.nil? && @right.nil?
  end

  def is_root
  end



end

binding.pry
""



#what are those children?

#can't call instance vars outside of class, need attr_reader/writer/accessor
#testing >> very methodical 
#common mistakes, get ahead of self, miss a step, testing fixes that
#pseudocode before coding

#Have the test drive as much as possible.

