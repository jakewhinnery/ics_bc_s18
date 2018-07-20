
def hourly nameOfProgram, &block
  num = Time.new.hour
  num.times do
    block.call
  end
end

hourly 'chime' do
  puts('Dong!')
end
