#get starting year
puts('Starting year?')
startYearS = gets.chomp
startYear = startYearS.to_i

#get ending year
puts('Ending year?')
endYearS = gets.chomp
endYear = endYearS.to_i

#title
puts('List of leap years between start year and end year')

#pull leap years and print them
while endYear >= startYear && endYear > 0
  if (endYear % 400) != 0
    if (endYear % 100) != 0
      if (endYear % 4) == 0
        puts endYear.to_s
        endYear = (endYear - 4)
      elsif (endYear % 4) == 1
        endYear = (endYear - 1)
        puts endYear.to_s
        endYear = (endYear - 4)
      elsif (endYear % 4) == 2
        endYear = (endYear - 2)
        puts endYear.to_s
        endYear = (endYear - 4)
      elsif (endYear % 4) == 3
        endYear = (endYear - 3)
        puts endYear.to_s
        endYear = (endYear - 4)
      end
    else
    endYear = (endYear - 4)
    end
  else
    puts endYear.to_s
  endYear = endYear - 4
  end
end
