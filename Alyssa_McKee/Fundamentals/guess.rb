def guess_number guess
	number = 25
	puts "You got it!" if guess == number
	puts "Guess was too high!" if guess > number
	puts "Guess was too low!" if guess < number
end

p "##################"
guess_number(4)
p "##################"
guess_number(27)
p "##################"
guess_number(25)
p "##################"