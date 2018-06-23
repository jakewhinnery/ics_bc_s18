#define and initialize variables
lineLength = 20
chNum = 1
pgNum = ' 1'
rightInit = 'page '
afterChapter = ': '

#set and print header
header = 'Table of Contents'
puts (header.center(2*(lineLength + 1)))

#while loop to set variable values to change what is printed each line
while chNum <= 3
  if chNum == 1
    right = rightInit + pgNum
    center = 'Getting Started'
  elsif chNum == 2
    center = 'Numbers'
    pgNum = ' 9'
    right = rightInit + pgNum
  elsif chNum == 3
    center = 'Letters'
    pgNum = '13'
    right = rightInit + pgNum
  end
  left = 'Chapter ' + chNum.to_s + afterChapter + center

  #print the table of contents
  if right == 'page  1'
    puts (left + right.rjust(lineLength - 6))
  else
    puts (left + right.rjust(lineLength))
  end

  #increment
  chNum = chNum + 1
end
