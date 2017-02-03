class InsertionSort
  def sort(collection)
    length = collection.length
    sorted = []

    sorted << collection.shift

    until sorted.length == length
      to_insert = collection.shift
      #iterate over sorted until to_insert < item, or until last index is reached
      sorted.each_with_index do |item, index| 
        if index == (sorted.length - 1)
          sorted << to_insert
          break
        elsif to_insert < item 
          sorted.insert(index, to_insert)
          break
        end       
      end
    end

  puts "#{sorted}"
  end
end


sorter = InsertionSort.new


sorter.sort([3, 2, 1, 4])
sorter.sort(["d", "b", "a", "c"])
sorter.sort(["d", "g", "b", "f", "a", "c", "e"])

