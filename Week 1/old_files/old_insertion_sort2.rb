require 'pry'
class InsertionSort
  def sort(collection)
    length = collection.length
    sorted = []

    sorted << collection.shift
    # index = 0    
    until sorted.length == length
      #iterate over sorted until sorted[index] > to_insert
      #then insert, break loop
      to_insert = collection.shift
      # index = 0
      # inserted = false
      # while inserted == false
      #   if index == sorted.length
      #     sorted << to_insert
      #     inserted = true
      #   elsif to_insert < sorted[index]  
      #     sorted.insert(index, to_insert)
      #     inserted = true
      #   elsif to_insert > sorted[index]
      #     index +=1
      #    end        
      #   end
  


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

  puts "Your collection is now sorted #{sorted}"
  end
end


sorter = InsertionSort.new


sorter.sort([3, 2, 1, 4])
sorter.sort(["d", "b", "a", "c"])
sorter.sort(["d", "g", "b", "f", "a", "c", "e"])

