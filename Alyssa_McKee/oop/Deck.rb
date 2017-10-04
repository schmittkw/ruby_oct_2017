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
deck = Deck.new
# p deck.cards
#deck.shuffle
p deck.deal(2)
p deck.cards.count

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

player1 = Player.new("Tom")
player1.draw(deck, 5)
p player1.hand
player1.discard 3
p player1.hand

#start game logic

deck.reset
print "enter a name: "
name = gets.chomp
player1 = Player.new(name)
p "your name is #{player1.name}"
dealer = Player.new("Dealer")

def add_hand hand
	sum = 0
	num_aces = 0
		hand.each do |suit, value| 
			sum += value if value.class == 1.class
			sum += 10 if ["K","Q","J"].include?(value)
			num_aces+=1 if value == "A"
			p "num aces#{num_aces}"
		end
	num_aces.times do
		if (sum + 11) < 21
			sum += 11
		else
			sum += 10
		end
	end
	sum
end

ahand = [["A","A"],["C", "A"], ["H", 10]]
p add_hand ahand



deck.shuffle
player1.draw deck, 2
dealer.draw deck, 2
p player1.hand
print "hit or stand? "
move = gets.chomp
while move == "hit" do
	player1.draw deck, 1 if move == "hit"
	p player1.hand
	print "hit or stand? "
	move = gets.chomp
end
player_sum = add_hand player1.hand
dealer_sum = add_hand dealer.hand
print "Dealers hand: "
p dealer.hand
puts "your total: #{player_sum}
dealer total: #{dealer_sum}"

if player_sum > 21
	puts "Over 21! You lose!"
elsif player_sum > dealer_sum
	puts "less than 21, more than the dealer, You Win!"
elsif player_sum == dealer_sum
	puts "Draw!"
else
	puts "dealer is more than you, You Lose!"
end
  
  
  #add the values, of player1
  #add the values of the dealer
  #if player over 21 they lose
  #elsif player > dealer they win
  #elsif player == dealer draw
  #else they lose
