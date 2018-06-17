#get first name
nameType = 'first name'
puts('What\'s your ' + nameType + '?')
firstName = gets.chomp

#get middle name
nameType = 'middle name'
puts('And your ' + nameType + '?')
middleName = gets.chomp

#get last name
nameType = 'last name'
puts('What about your ' + nameType + '?')
lastName = gets.chomp

#combine names and print greeting
fullName = firstName + ' ' + middleName + " " + lastName
puts('It\'s a pleasure to meet you ' + fullName + "!")
