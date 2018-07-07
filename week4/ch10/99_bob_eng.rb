def english_number(number)
  return 'Please enter a number that isn\'t negative.' if number < 0 # No negative numbers.
  return 'zero' if number == 0
  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = %w[one two three four five six
                  seven eight nine]
  tens_place = %w[ten twenty thirty forty fifty
                  sixty seventy eighty ninety]
  teenagers = %w[eleven twelve thirteen
                 fourteen fifteen sixteen seventeen eighteen nineteen]

  left = number
  write = left/1000000000000
  left -= write*1000000000000

  if write > 0
    trillions = english_number write
    num_string = num_string + trillions + ' trillion'
    if left > 0
      num_string += ' '
    end
  end

  write = left/1000000000
  left -= write*1000000000

  if write > 0
    billions = english_number write
    num_string = num_string + billions + ' billion'
    if left > 0
      num_string += ' '
    end
  end

  write = left/1000000
  left -= write*1000000

  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'
    if left > 0
      num_string += ' '
    end
  end

  write = left / 1000 # How many hundreds left?
  left -= write * 1000 # Subtract off those hundreds.

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string += ' '
    end
  end

  write = left / 100 # How many hundreds left?
  left -= write * 100 # Subtract off those hundreds.

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string += ' '
    end
  end

  write = left / 10 # How many tens left?
  left -= write * 10 # Subtract off those tens.

  if write > 0
    if (write == 1) && (left > 0)
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string += teenagers[left - 1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string += tens_place[write - 1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end
    if left > 0
      # So we don't write 'sixtyfour'...
      num_string += '-'
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string += ones_place[write - 1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
  # Now we just return "num_string"...
  num_string

end

#set initual number of beers to 99
numB = 99

#print title
puts('Lyrics of the song 99 Bottles of Beer')
puts('')

#run loop for 99 to 3 bottles of beer
while numB > 2
  puts (english_number(numB).capitalize + ' bottles of beer on the wall, ' + english_number(numB) + ' bottles of beer.')
  puts ('Take one down and pass it around, ' + english_number(numB - 1) + ' bottles of beer on the wall.')
  puts ('')

  #increment
  numB = numB - 1
end

#if 2 or less bottles of beer things change
while numB <= 2
  if numB == 2
    puts (english_number(numB).capitalize + ' bottles of beer on the wall, ' + english_number(numB) + ' bottles of beer.')
    puts ('Take one down and pass it around, ' + english_number(numB - 1) + ' bottle of beer on the wall.')
    puts ('')
    numB = numB - 1
  elsif numB == 1
    puts (english_number(numB).capitalize + ' bottle of beer on the wall, ' + english_number(numB) + ' bottle of beer.')
    puts ('Take one down and pass it around, no more bottles of beer on the wall.')
    puts ('')
    numB = numB - 1
  elsif numB == 0
    numB = 'no'
    puts (numB.capitalize + ' more bottles of beer on the wall, ' + numB + ' more bottles of beer.')
    puts ('Go to the store and buy some more, ninety-nine bottles of beer on the wall.')
    numB = 0
    numB = numB - 1
  elsif numB < 0
    break
  end
end
