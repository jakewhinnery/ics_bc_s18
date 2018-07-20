
#attempt I gave up on
=begin
def profile block_description, &block
  if response == 'profile'
    start_time = Time.new
    puts(block.call)
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    puts(block.call)
  end

end

puts 'What number would you like to put to the hundredth power?'
num = gets.chomp.to_i
total = num

puts 'Type profile to profile or anything else not to.'
response = gets.chomp.downcase

  profile 'exponentiate to the hundredth' do

    total = num
    100.times do
    total = total*num
    end
  end
=end

#profile
def profile block_description, &block
puts "
Do you want to profile this? Yes to profile and anything else not to."
response = gets.chomp.downcase
  if response == 'yes'
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
    puts "Done!"
  end
end


#block
profile 'count to a hundred million' do number = 0
100_000_000.times do
    number = number + 1
end end
