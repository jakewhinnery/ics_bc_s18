#make array
tiempo = %w[year month day]
index = 0

#while loop to get info and store inside array
while index < tiempo.length
  puts("What #{tiempo[index]} were you born in?")
  tiempo[index] = gets.chomp.to_i
  index += 1
end

#run time method
yearsOld = ((Time.new - Time.local(tiempo[0],tiempo[1],tiempo[2]))/(365*24*3600)).to_i

#This is a very strange program...
puts("SPANK!\n"*yearsOld)
