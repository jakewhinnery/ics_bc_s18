def array_min(array, len)
  if len <= 1
    array[0]
  else
    if array[0] < array[len-1]
      array.pop
    else
      array.shift
    end
    len = len - 1
    array_min(array, len)
  end
end

puts array_min([15, 27, 81, 17, 5, 13, 4, 81], 8)
