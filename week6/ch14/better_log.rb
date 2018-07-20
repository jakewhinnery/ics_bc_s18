#globals for indentation
$lineLength = 0
$space = " "

#Begin outer block
puts "Beginning \"log\"..."

#log block
def log nameOfProgram, &block
  $lineLength += 2
  puts "#{$space*$lineLength}Beginning \"#{nameOfProgram}\"..."
  puts "#{$space*$lineLength}...\"#{nameOfProgram}\" finished, returning: #{block.call}"
  $lineLength -= 2
end

#1st inner block
log 'blockBig' do
  #Another layer!
  log 'blockSmall' do
    desire = %w[pasta cheesecake mongolian kabobs cookies]
    "I hate #{desire[rand(5)]}!"
  end
  yum = rand(6)
end

#2nd inner block
log 'blockBigAnother' do
  starsInSky = rand(2_000_000)
  "There are #{starsInSky} stars in the sky."
end


#outer block complete
puts "...\"log\" finished, returning: Stop lying to me!"
