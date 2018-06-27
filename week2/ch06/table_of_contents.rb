#declare lineLength
lineLength = 42

#print header
header = 'Table of Contents'
puts header.center(lineLength)

#define ch1 with correct spacing and such
left1 = 'Chapter 1: Getting Started'
right1 = 'page  1'
ch1 = left1.ljust(30) + right1.rjust(12)

#define ch2 with correct spacing
left2 = 'Chapter 2: Numbers'
right2 = 'page  9'
ch2 = left2.ljust(30) + right2.rjust(12)

#define ch3 with correct spacing
left3 = 'Chapter 3: Letters'
right3 = 'page 13'
ch3 = left3.ljust(30) + right3.rjust(12)

#print the chapters
puts ch1
puts ch2
puts ch3
