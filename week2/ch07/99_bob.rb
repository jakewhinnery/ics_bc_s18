#set initual number of beers to 99
numB = 99

#print title
puts('Lyrics of the song 99 Bottles of Beer')
puts('')

#run loop for 99 to 3 bottles of beer
while numB > 2
  puts (numB.to_s + ' bottles of beer on the wall, ' + numB.to_s + ' bottles of beer.')
  puts ('Take one down and pass it around, ' + (numB - 1).to_s + ' bottles of beer on the wall.')
  puts ('')

  #increment
  numB = numB - 1
end

#if 2 or less bottles of beer things change
while numB <= 2
  if numB == 2
    puts (numB.to_s + ' bottles of beer on the wall, ' + numB.to_s + ' bottles of beer.')
    puts ('Take one down and pass it around, ' + (numB - 1).to_s + ' bottle of beer on the wall.')
    puts ('')
    numB = numB - 1
  elsif numB == 1
    puts (numB.to_s + ' bottle of beer on the wall, ' + numB.to_s + ' bottle of beer.')
    puts ('Take one down and pass it around, no more bottles of beer on the wall.')
    puts ('')
    numB = numB - 1
  elsif numB == 0
    numB = 'no'
    puts (numB.capitalize + ' more bottles of beer on the wall, ' + numB + ' more bottles of beer.')
    puts ('Go to the store and buy some more, 99 bottles of beer on the wall.')
    numB = 0
    numB = numB - 1
  elsif numB < 0
    break
  end
end
