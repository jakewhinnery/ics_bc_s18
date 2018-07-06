def array_sum(array)
  if array[1] == nil
    array[0]
  else
    array[1] = array[0] + array[1]
    array.shift
    array_sum(array)
  end
end

puts array_sum [5, 3, 87, 16, 31, 5]
