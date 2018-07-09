def dict_sort(some_array) # This "wraps" recursive_sort.
  recursive_dict_sort(some_array, [])
end

def recursive_dict_sort(unsorted_array, sorted_array)
  if unsorted_array[0] == nil
    sorted_array
  else
    i = 1
    min = unsorted_array[0]
    while i < unsorted_array.length
      if min.downcase > unsorted_array[i].downcase
        min = unsorted_array[i]
      end
        i += 1
    end
    sorted_array.push min
    unsorted_array.delete(min)
    recursive_dict_sort(unsorted_array, sorted_array)
  end
end


puts(dict_sort ['Bananas', 'apples', 'Cakes', 'zebras', 'dandelions', 'Leaves'])
