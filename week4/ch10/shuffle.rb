#wrapper stuff
def randomizer(array)
  shuffle(array, [])
end

#shuffle method
def shuffle(array, shufArray)

#base case
  if array[0] == nil
    return shufArray
  else
#store random in variable
    random = rand(array.length)
#put into the new array and delete in the old
    shufArray.push array[random]
    array.delete(array[random])
#recursive
    shuffle(array, shufArray)
  end
end


array = ['AJ', 'Jake', 'Serena', 'Jane', 'Maddie']

puts(randomizer(array))
