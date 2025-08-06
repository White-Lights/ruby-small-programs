def bubble_sort(array)
  is_sorted = false

  # As long as array isn't fully sorted, runs the bubble sort loop.
  while !is_sorted do
    i = 0
    until i >= array.length - 1 do
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        i = i + 1
      else
        i = i + 1
      end
    end
    is_sorted = check_if_sorted(array)
  end
  return array
end

# Checks if each item in the array is in sequence with the next one (or, is the final element in the array.)
def check_if_sorted(array)
  return array.each_with_index.all?{|num, index| (index == array.length - 1) || (num <= array[index + 1])}
end