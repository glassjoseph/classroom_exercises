class BubbleSort
  def sort(collection)
    #Take the first item in the collection and set "previous" equal to it.
    #Take the second item in the collection and set "current" equal to it.
    #Compare previous and current
    #if previous is larger than current, swap the values in the array
    #then make previous equal to next item (second in array) and current equal to next item (third item)
    #repeat the process once for each value in the array


    previous_index = 0
    current_index = 1
    while current_index < collection.length
      #Take the first item in the collection and set "previous" equal to it.
      previous = collection[previous_index]
      #Take the second item in the collection and set "current" equal to it.
      current = collection[current_index]
      #Compare previous and current
      #if previous is larger than current, swap the values in the array
      if previous < current
        collection[0] = current
        collection[1] = previous
      end
      #then make previous equal to next item (second in array) and current equal to next item (third item)
      previous_index += 1
      current_index += 1
      #repeat the process once for each value in the array
    end

  end
end

sorter = BubbleSort.new

puts sorter.sort(["d", "b", "a", "c"])

