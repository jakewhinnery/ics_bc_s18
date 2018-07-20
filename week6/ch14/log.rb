#Begin outer block
puts "Beginning \"log\"..."

#log block
def log nameOfProgram, &block
  puts "Beginning \"#{nameOfProgram}\"..."
    block.call
  puts "...\"#{nameOfProgram}\" finished, returning: #{block.call}"
end

#1st inner block
log 'block1' do
  yum = rand(6)
end

#2nd inner block
log 'block2' do
  desire = %w[pasta cheesecake mongolian kabobs cookies]
  "I hate #{desire[rand(5)]}!"
end

#outer block complete
puts "...\"log\" finished, returning: Stop lying to me!"
