#make array
tiempo = %w[year month day hour minute second]
index = 0

#while loop to get info and store inside array
while index < tiempo.length
  puts("What #{tiempo[index]} were you born in?")
  tiempo[index] = gets.chomp.to_i
  index += 1
end

#run time method
puts(Time.local(tiempo[0],tiempo[1],tiempo[2],tiempo[3],tiempo[4],tiempo[5]) + 1000000000)
