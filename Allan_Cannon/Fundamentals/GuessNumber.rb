def guess_number guess
  num = rand(1..11)
  return 'You got it!' unless guess != num
  return 'Guess was too high!' unless guess < num
  return 'Guess was too low!' unless guess > num
end

puts guess_number 7
