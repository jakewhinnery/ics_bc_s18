#prompt user
bossesWords = 'What in the darn heck do you want?'
puts (bossesWords.upcase)

#get response
myWords = gets.chomp

#script responses of boss
bossResponseOne = 'Whaddaya mean "'
bossResponseTwo = '"?!? You\'re fired!! '

#print angry boss firing
puts (bossResponseOne.upcase + myWords.upcase + bossResponseTwo.upcase)
