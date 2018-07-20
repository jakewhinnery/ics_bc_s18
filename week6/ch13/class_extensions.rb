
class Array
  def randomizer
    shuffle(self, [])
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

end


class Integer

  #just a little wrap
  def rapcaviar
    factorial(self, 0)
  end

  def factorial(num, total)
    if num == 0
      1
    elsif num == 1 && total == 0
      1
    elsif num == 1
      total
    else
      if total == 0
        total = num*(num - 1)
        num -= 1
        factorial(num, total)
      else
        total = total*(num - 1)
        num -= 1
        factorial(num, total)
      end
    end
  end

  def newRomanizer
    basic = self
    thousand = basic/1000
    nineH = (basic % 1000)/900
    fiveH = (basic % 1000 % 900)/500
    remainder = basic % 1000 % 900
    fourH = (remainder % 500)/400
    hundred = (remainder % 500 % 400)/100
    nineties = (basic % 100)/90
    fifties = (basic % 100 % 90)/50
    remainder = basic % 100 % 90
    fourties = (remainder % 50)/40
    tens = (remainder % 50 % 40)/10
    nines = (basic % 10)/9
    fives = (basic % 10 % 9)/5
    remainder = basic % 10 % 9
    fours = (remainder % 5)/4
    ones = remainder % 5 % 4
    puts ('M'*thousand + 'CM'*nineH + 'D'*fiveH + 'CD'*fourH + 'C'*hundred + 'XC'*nineties + 'L'*fifties + 'XL'*fourties + 'X'*tens + 'IX'*nines + 'V'*fives + 'IV'*fours + 'I'*ones)
  end
end


puts(['AJ', 'Jake', 'Serena', 'Jane', 'Maddie'].randomizer)
puts("Enter a number for factorialization.")
puts(gets.chomp.to_i.rapcaviar)
puts("Enter a number between 1 and 3000 for romanization.")
puts(gets.chomp.to_i.newRomanizer)
