#Make method
puts('Please enter a roman numeral to be converted that is less than MMMM.
      If the Roman numeral is not valid, the program will exit.')

def antiRomanizer(roman)

  #initialize arrays
  roman = roman.chars
  array = %w[M D C L X V I]
  sumArray = [0, 0, 0, 0, 0, 0, 0]
  values = [1000, 500, 100, 50, 10, 5, 1]

  #for each character see which letter it is and add it to sumArray
  roman.each do |letter|
    index = 0
    while index < 7
      if array[index] == letter
        sumArray[index] += 1
      end
      index += 1
    end
  end

  #make sure valid roman numeral
  sumArray.each do |check|
    if check > 4
      exit
    end
  end
  roman.each do |alphabet|
    if alphabet != 'M' && alphabet != 'D' && alphabet != 'C' && alphabet != 'L' && alphabet != 'X' && alphabet != 'V' && alphabet != 'I'
      puts("fasdf")
      exit
    end
  end

  #sum up everything
  alpha = 0
  total = 0
  sumArray.each do |add|
    total += values[alpha] * add
    alpha += 1
  end
  return total
end


#call the method
puts(antiRomanizer(gets.chomp))
