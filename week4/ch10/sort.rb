def sort(some_array) # This "wraps" recursive_sort.
  recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array[0] == nil
    sorted_array
  else
    i = 1
    min = unsorted_array[0]
    while i < unsorted_array.length
      if min > unsorted_array[i]
        min = unsorted_array[i]
      end
      if true
        i += 1
      end
    end
    sorted_array.push min
    unsorted_array.delete(min)
    recursive_sort(unsorted_array, sorted_array)
  end
end


puts(sort ['bananas', 'apples', 'cakes', 'zebras', 'dandelions', 'leaves'])
