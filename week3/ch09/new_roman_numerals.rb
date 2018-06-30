#I'm true
jake = true

#not technically within stipulations of the programming assignment but just having
#some fun making the program a little more advanced so that numbers not within the
#range are not accepted
while jake == true
  puts 'Please enter a number between 1 and 3000.'
  number = gets.chomp.to_i
  if number <= 1 || number >= 3000
    puts 'Number entered not within range.'
  else
    jake = false
  end
end

#method to romanize numbers using modulus and division to set each digit
def newRomanizer (basic)
  thousand = basic/1000
  nineH = (basic % 1000)/900
  fiveH = (basic % 1000 % 900)/500
  fourH = (basic % 1000 % 900 % 500)/400
  hundred = (basic % 1000 % 900 % 500 % 400)/100
  nineties = (basic % 100)/90
  fifties = (basic % 100 % 90)/50
  fourties = (basic % 100 % 90 % 50)/40
  tens = (basic % 100 % 90 % 50 % 40)/10
  nines = (basic % 10)/9
  fives = (basic % 10 % 9)/5
  fours = (basic % 10 % 9 % 5)/4
  ones = basic % 10 % 9 % 5 % 4
  puts ('M'*thousand + 'CM'*nineH + 'D'*fiveH + 'CD'*fourH + 'C'*hundred + 'XC'*nineties + 'L'*fifties + 'XL'*fourties + 'X'*tens + 'IX'*nines + 'V'*fives + 'IV'*fours + 'I'*ones)
end

#call the method
newRomanizer (number)
