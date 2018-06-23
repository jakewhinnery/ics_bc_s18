x = 1
while x

  #my words
  myWords = gets.chomp

  #checks if shouted and if they are, will respond with a new string with a year between 1938 and 1950 noninclusive
  if myWords.upcase == myWords && myWords != 'BYE'
    randoPartYear = rand(20)
    randoYear = randoPartYear + 1931
    puts ('NO, NOT SINCE ' + randoYear.to_s + '!')
  elsif myWords == 'BYE'
    break
  else
    puts ('HUH?! SPEAK UP, SONNY!')
  end
end
