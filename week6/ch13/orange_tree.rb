class OrangeTree
  def initialize
    @age = 1
    @height = 1
    @numOranges = 0
  end

  def one_year_passes
    #the old oranges fell off
    @numOranges = 0

    #increment age
    @age += 1

    #increment height and orange count depending on age
    if @age < 5
      @height += 2
    elsif @age < 10 && @age >= 5
      @numOranges = @numOranges + 2*@age + rand(5)
      @height += 1
    elsif @age >= 10 && @age < 25
      @height += 0.5
      @numOranges = @numOranges + 4*@age + rand(10)
    elsif @age == 25
      puts("
        You arrive at the tree to find it withered and dead.
        After 25 years of bringing you fruit, it passed to the
        next world peacefully- a rarity in the tumultuous
        world we live in.")
      exit

    end
  end

  def height
    puts("The orange tree is #{@height} feet tall.")
  end

  def age
    puts("The orange tree is #{@age} years old.")
  end

  def orange_count
    puts("There are #{@numOranges} oranges on the tree.")
  end

  def pick_orange
    if @numOranges > 0
      puts("That was one juicy and succulent orange!")
      @numOranges -= 1
    else
      puts("There are no more oranges on the tree for you to pick!")
    end
  end

  def cut_down
    puts("
      You mercilessly hack down the orange tree with a
      rusty axe. Unfortunately, you miscalculate and the tree
      falls on you, pinning you to the ground. You scream but
      no one hears you and after you eat all the oranges you
      can reach, you starve.")
      exit
  end
end

puts("
  You planted an orange seed one year ago. On this momentous
  occassion, you decide to visit, and find a small tree in its
  place. You can \'wait\' another year, measure its \'height\',
  find its \'age\', \'count the oranges\' on the tree, or
  \'cut down\' the tree to exit the program. ")

oTree = OrangeTree.new

while true
  command = gets.chomp.downcase
  if command == 'wait'
    oTree.one_year_passes
  elsif command == 'height'
    oTree.height
  elsif command == 'age'
    oTree.age
  elsif command == 'count the oranges'
    oTree.orange_count
  elsif command == 'pick orange'
    oTree.pick_orange
  elsif command == 'cut down'
    oTree.cut_down
  else
    puts "
    Please enter a valid command: wait, height, age, count the
    oranges, pick orange, or cut down."
  end
end
