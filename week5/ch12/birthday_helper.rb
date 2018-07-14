#open the file
birthdays = File.open('/Users/jwhinnery/ruby/ics_bc_s18/week5/ch12/birthday_helper_input.txt')

#split the file and fill a hash, setting up the key
hash = {}
birthdays.each do |line|
  key, monthDay, year = line.chomp.split(", ")
  hash[key.downcase] = monthDay + ', ' + year
end

#prompts user for person
puts 'Whose birthday would you like me to retrieve from the database?'
prompt = gets.chomp.downcase

#sets up contingency for if not in database and gives bday if is
if hash[prompt] == nil
  puts('I\'m sorry, they do not appear to be in the database.')
else
  puts(hash[prompt])
end
