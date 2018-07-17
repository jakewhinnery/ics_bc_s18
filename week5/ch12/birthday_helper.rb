#open the file
birthdays = File.open('/Users/jwhinnery/ruby/ics_bc_s18/week5/ch12/birthday_helper_input.txt')

#split the file and fill a hash, setting up the key
hash = {}
monthHash = {"Jan"=> 1, "Feb"=> 2, "Mar"=> 3, "Apr"=> 4, "May"=> 5, "Jun"=> 6,
             "Jul"=> 7, "Aug"=> 8, "Sep"=> 9, "Oct"=> 10, "Nov"=> 11, "Dec"=> 12}

#split up each line in the file
birthdays.each do |line|
  key, monthDay, year = line.chomp.split(", ")
  month, day = monthDay.chomp.split(" ")
  happenedYet = monthHash["Jan"]

#make sure year is right
  if happenedYet < 8
    hash[key.downcase] = monthDay + ', 2019'
  else
    hash[key.downcase] = monthDay + ', 2018'
  end
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
