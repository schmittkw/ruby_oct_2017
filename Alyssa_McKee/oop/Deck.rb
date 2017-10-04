class Deck
  attr_reader :cards

  def initialize
      reset
  end

  def shuffle
      @cards.shuffle!
  end

  def deal(number)
      @cards.pop(number)
  end

  def reset
      @cards = [ ]
      ["D", "H", "C", "S"].each do |suit|
        ["A", 2,3,4,5,6,7,8,9,10,"J","Q","K"].each do |val|
          @cards << [suit, val]
        end
      end
  end

end

class Player
  attr_reader :hand
  attr_accessor :name

  def initialize name
      @name = name
      @hand = []
  end

  def draw deck, number
      deck.deal(number).each{|card| @hand << card }
  end

  def discard cards
      @hand.delete_at(cards)
  end
end

# player1 = Player.new("Tom")
# player1.draw(deck, 5)
# p player1.hand
# player1.discard 3
# p player1.hand


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# -------------------GAME START------------------------
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

def add_hand hand 	#helper method, adds up a hand's value
	sum = 0
	num_aces = 0
	hand.each do |suit, value| 
		sum += value unless value.class == "".class
		sum += 10 if ["K","Q","J"].include?(value)
		num_aces+=1 if value == "A"
		# p "num aces#{num_aces}"
		# p "sum#{sum}"
	end
	num_aces.times do |i|
		if (sum + 11) < 21
			# p "case 1"
			sum += 11
		elsif (sum + 11) == 21 and i+1 == num_aces #only if its the last ace
			# p "case 2"
			sum += 11
		else
			# p "case 3"
			sum += 1
		end
		# p "sum: #{sum}"
	end
	sum
end

system "clear" or system "cls" #tries to clear the terminal 2 different ways

deck = Deck.new
deck.shuffle

print "enter a name: "
name = gets.chomp
player1 = Player.new(name)
p "your name is #{player1.name}"
dealer = Player.new("Dealer")

deck.shuffle
player1.draw deck, 2
dealer.draw deck, 2
p player1.hand
print "hit or stand? "
move = gets.chomp 	#waits for user input, stores it in move, chomp cuts off trailing whitespace
while move == "hit" do
	player1.draw deck, 1 if move == "hit"
	p player1.hand
	print "hit or stand? "
	move = gets.chomp
end
player_sum = add_hand player1.hand
dealer_sum = add_hand dealer.hand

while dealer_sum <17 do
	dealer.draw deck, 1
	dealer_sum = add_hand dealer.hand
end
sleep(0.5)	#pauses the terminal for 0.5 seconds


print "Dealers Hand: "
p dealer.hand
sleep(0.5)

print "Player's Hand: "
p player1.hand
sleep(0.5)

puts "your total: #{player_sum}"
sleep(0.5)
puts "dealer total: #{dealer_sum}"

sleep(1)
if player_sum > 21
	puts "Over 21! You lose!"
elsif dealer_sum >21
	puts "Dealer bust! You win!"
elsif player_sum > dealer_sum
	puts "less than 21, more than the dealer, You Win!"
elsif player_sum == dealer_sum
	puts "Draw!"
else
	puts "dealer is more than you, You Lose!"
end
sleep(1)

  
  #add the values, of player1
  #add the values of the dealer
  #if player over 21 they lose
  #elsif player > dealer they win
  #elsif player == dealer draw
  #else they lose
