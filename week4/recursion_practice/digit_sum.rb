def digit_sum(num, numDigits)
  if numDigits == 1
    num
  else
    digit = num % 10
    num = num/10
    numDigits -= 1
    total = digit + digit_sum(num, numDigits)
    total
  end
end

puts digit_sum(123456789, 9)
