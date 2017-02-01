require 'pry'

class BubbleSort
  def sort(collection)
    index = 0
    same_counter = 0
    #while swaps are still being made (i.e. list is unsorted)
    sorted = false
    while same_counter < 10
      
      old_collection = collection
      #set previous and current
      previous = collection[index]
      current = collection[index +1]
      #stop before the end of the collection
      if collection[index+1] != nil  #the element in collection with index+1 is not equal to nil look at value of index vs lenghtarray or index of last
        #if previous > current, swap their values. 
        if previous > current
          collection[index], collection[index + 1] = collection[index +1], collection[index]
        #binding.pry
        end
        index += 1
      else
        index = 0
        #if there haven't been any swaps, increment the counter, 
        same_counter += 1
      end
      sorted = true
#      binding.pry
    end
  puts "#{collection}"
  end
end

#swap = false, iterate through whole array, if you swap, = true, if not, it's been sorted!

sorter = BubbleSort.new

sorter.sort(["d", "b", "a", "c"])


sorter.sort(["z", "d", "b", "p", "q", "n", "a", "c", "r", "e",])
#sorter.sort(["d", "b", "a", "c"]) => ["a", "b", "c", "d"] 
