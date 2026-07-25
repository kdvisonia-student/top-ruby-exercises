def bubble_sort(arr)
  loop do
    swapped = false
    arr.each_with_index do |value, index|
      break if index == arr.length - 1

      if arr[index + 1] < arr[index] then
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        swapped = true
      end
    end

    break unless swapped
    end
   arr 
end

puts bubble_sort([4,3,78,2,0,2])