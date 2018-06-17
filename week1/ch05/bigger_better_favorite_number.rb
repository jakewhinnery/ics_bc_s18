#obtains userFavN and adds one to it
puts('What\'s your favorite number?')
userFavN = gets.chomp
betterFavN = userFavN.to_i + 1

#tactfully suggests betterFavN
brag = ' is a vastly superior number in both magnitude and quantity?'
puts('My good sir/ma\'am, wouldn\'t you agree that ' + betterFavN.to_s + brag)
