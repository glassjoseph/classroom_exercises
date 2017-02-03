class BubbleSort
  def sort(collection)
    index = 0
    same_counter = 0
    sorted = false
    #while swaps are still being made (i.e. list is unsorted)
    while same_counter < 10
      old_collection = collection
      #set previous and current
      previous = collection[index]
      current = collection[index +1]
      #stop before the end of the collection
      if collection[index+1] != nil
        #if previous > current, swap their values. 
        if previous > current
          collection[index], collection[index + 1] = collection[index +1], collection[index]
        end
        index += 1
      else
        index = 0
        #if there haven't been any swaps, increment the counter, 
        same_counter += 1
      end
      sorted = true
    end
  puts "#{collection}"
  end
end


sorter = BubbleSort.new

sorter.sort(["d", "b", "a", "c"])


sorter.sort(["z", "d", "b", "p", "q", "n", "a", "c", "r", "e",])
#sorter.sort(["d", "b", "a", "c"]) => ["a", "b", "c", "d"] 
