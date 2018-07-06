def sum_of_integers(n)
  while n < 1
    puts 'Please enter a postive integer.'
    n = gets.chomp.to_i
  end
  if n == 1
    n
  else
    n + sum_of_integers(n - 1)
  end
end

puts sum_of_integers (gets.chomp.to_i)
