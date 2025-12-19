def bubble_sort(array)
  length = array.length

  loop do
    swapped = false

    (length - 1).times do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index] # Ruby's shorthand for swapping variables
        swapped = true
      end
    end

    break unless swapped
  end
  array
end

p bubble_sort([4,3,78,2,0,2])