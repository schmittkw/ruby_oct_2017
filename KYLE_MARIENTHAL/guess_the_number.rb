def guess_number guess
 number = 25
 puts "you got it!" unless guess != number
 puts "Guess was too high!" unless guess <= number
 puts "Guess was too low!" unless guess >= number
 end

puts guess_number guess=2
puts guess_number guess=222
puts guess_number guess=25
