class InsertionSort
  def sort(collection)
    #create an empty array
    original_length = collection.length
    sorted = []
    #pull out first element into sorted
    sorted << collection.shift
    
    until sorted.length == original_length
      #iterate over sorted until sorted[index] > to_insert
      #then insert, break loop
      to_insert = collection.shift

      index = 0
      if sorted[index] > to_insert
        sorted.insert(index, to_insert)
      else
        sorted << to_insert
      end

      # sorted.each_with_index do |item, index| 
      #   if item > to_insert 
      #     sorted.insert(index, to_insert)
      #     break
      #   else
      #     sorted << to_insert
      #     break
      #   end
      # end

      #insert into sorted array at index
      #repeat loop until collection.empty?
    end

  puts "Your collection is now sorted #{sorted}"
  end
end


sorter = InsertionSort.new


sorter.sort([3, 2, 1, 4])
sorter.sort(["d", "b", "a", "c"])


sorter.sort(["d", "g", "b", "f", "a", "c", "e"])

