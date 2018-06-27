#declare line length
lineLength = 42
pageNum = 0

#prints title
title = 'Table of Contents'
puts title.center(lineLength)

#declare & initialize array for pages
pages = ['page  1', 'page  9', 'page 13']

#declare & initialize array for grid
grid = ['Chapter 1: Getting Started', 'Chapter 2: Numbers', 'Chapter 3: Letters']

#print each line by calling different slots in the arrays
grid.each do |column|
  string = ''
  string = column.ljust(30) + pages[pageNum].rjust(12)
  puts string
  pageNum += 1
end
