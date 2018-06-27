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
def oldRomanizer (basic)
  thousands = basic/1000
  fiveHundreds = (basic % 1000)/500
  hundreds = (basic % 1000 % 500)/100
  fifties = (basic % 1000 % 500 % 100)/50
  tens = (basic % 1000 % 500 % 100 % 50)/10
  fives = (basic % 1000 % 500 % 100 % 50 % 10)/5
  ones = (basic % 1000 % 500 % 100 % 50 % 10) % 5
  puts ('M'*thousands + 'D'*fiveHundreds + 'C'*hundreds + 'L'*fifties + 'X'*tens +'V'*fives + 'I'*ones)
end

#call the method
oldRomanizer (number)
