#define array
array = []

#get them in a loop and put them into the array
while true
  entry = gets.chomp
  if entry != ""
      array.push entry
  else
    break
  end
end

#print array in alphabetical order
puts (array.sort)
