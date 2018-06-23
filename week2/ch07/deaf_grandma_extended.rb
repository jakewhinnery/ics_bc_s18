x = 0
while x < 3

  #my words
  myWords = gets.chomp

  #checks if shouted and if they are, will respond with a new string with a year between 1938 and 1950 noninclusive
  if myWords.upcase == myWords && myWords != 'BYE'
    randoPartYear = rand(20)
    randoYear = randoPartYear + 1931
    puts ('NO, NOT SINCE ' + randoYear.to_s + '!')
    x = 0
  elsif myWords == 'BYE'
    x = x + 1
    if x != 3
      puts ('HUH?! SPEAK UP, SONNY!')
    end
  else
    puts ('HUH?! SPEAK UP, SONNY!')
    x = 0
  end
end

#say goodbye Grandma
puts ('goodbye')
