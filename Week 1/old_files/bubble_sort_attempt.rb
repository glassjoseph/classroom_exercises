require 'pry'

class BubbleSort
  def sort(collection)
    counter = 0
    index = 0
    while counter <= (collection.length) * 10
      previous = collection[index]
      current = collection[index +1]
      if collection[index+1] != nil
        if previous > current
          collection[index], collection[index + 1] = collection[index +1], collection[index]
        #binding.pry
        end
        index += 1
      else
        index = 0
      end
      counter +=1
      puts "The collection on iteration #{counter} is currently #{collection}"
    end
  puts "#{collection}"
  end
end

sorter = BubbleSort.new

sorter.sort(["d", "b", "a", "c"])


sorter.sort(["z", "d", "b", "p", "q", "n", "a", "c", "r", "e",])
#sorter.sort(["d", "b", "a", "c"]) => ["a", "b", "c", "d"] 


