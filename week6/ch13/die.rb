class Die
  def initialize
    roll
  end

  def roll
    @number_showing = rand(1..6)
  end

  def showing
    puts "...and the die is showing a #{@number_showing}!"
  end

  # Define a cheat method here
  def cheat
    puts "Which number do you want to ~secretly~ show on the die?"
       @number_showing = gets.chomp.to_i
    if @number_showing <= 6 && @number_showing > 0
    else
      puts "Bro alL I do is rig dies, not change the laws of reality, try again."
      Die.new.cheat
    end
  end
end


die = Die.new
die.cheat
puts(die.showing)
