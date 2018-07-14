### Copy in your shuffle method first
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


### Now use it to build your playlist:
music = Dir['/Users/jwhinnery/ruby/ics_bc_s18/week5/ch11/music/billboard_top_100_hits/**/*.{mp3,MP3}']

puts(randomizer(music))
