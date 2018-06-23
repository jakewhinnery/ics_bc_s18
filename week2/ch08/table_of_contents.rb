#declare line length
lineLength = 25

#prints title
title = 'Table of Contents'
puts title.center(lineLength + 10)

#declare & initialize array for pages
pages = ['page  1', 'page  9', 'page 13']

#declare & initialize array for grid
grid = [['Chapter 1: ', 'Getting Started'], ['Chapter 2: ', 'Numbers'], ['Chapter 3: ', 'Letters']]

#declare counters
x = 0
y = 0

#increment into different array slots and print the table of contents
grid.each do |row|
  string = ""
  row.each do |col|
    string += col
    y += 1
  end
  if y == 2
    puts string + pages[x].rjust(lineLength - 10)
    x += 1
  else
    puts string + pages[x].rjust(lineLength - 4)
    x += 1
  end
end
