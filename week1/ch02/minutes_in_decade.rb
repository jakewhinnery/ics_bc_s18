#number of minutes in a decade assuming that there are two leap years in any given decade
twoLeapDecade = (365*24*60*8 + 366*24*60*2)

#number of minutes in a decade assuming that there are three leap years in any given decade
threeLeapDecade = (365*24*60*7 + 366*24*60*3)

#prints possible answers
puts ('If there are two leap years in the decade, there will be ' + twoLeapDecade.to_s + ' minutes in the decade.')
puts ('If there are three leap years in the decade, there will be ' + threeLeapDecade.to_s + ' minutes in the decade.')
