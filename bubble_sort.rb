def bubble_sort(array)
  sorted = false

  while !sorted do
    i = 0
    until i >= array.length - 1 do
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        i = i + 1
      else
        i = i + 1
      end
      p array
    end
    sorted = check_if_sorted(array)
    p sorted
  end
  
  return array
end

def check_if_sorted(array)
  return array.each_with_index.all?{|num, index| (index == array.length - 1) || (num < array[index + 1] || num == array[index + 1])}
end