#define ask method for yes, no, and anything else
def ask (question)
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    elsif reply == 'no'
      return false
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

#asks decoy question with no stored answer
ask 'Do you like eating tacos'

#stores return value in wets_bed variable
wets_bed = ask 'Do you wet beds?'

#prints debrief and then the return value
puts 'Debrief'
puts wets_bed
