def guess_number
    number = 25
    puts "Guess a number"
    input = gets
    if number > input.to_i
        puts "Guessed too low"
    
    elsif input.to_i > number
        puts "Guessed too high"
    
    elsif input.to_i == number
        puts "You got it!!"
    end
    # your code here
end 
guess_number