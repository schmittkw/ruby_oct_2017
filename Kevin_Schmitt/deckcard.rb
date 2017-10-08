class Card
    attr_accessor :num, :suit
  
    def initialize(num, suit)
      raise "Invalid card" unless (1..13).include? num
      @num = num
      raise "Invalid suit" unless ["spades", "hearts", "diamonds", "clubs"].include? suit
      @suit = suit
    end
  
    def value
      @num > 10 ? 10 : @num
    end
  
    def to_s
      ["","A",2,3,4,5,6,7,8,9,10,"J","Q","K"][num].to_s + 
      {spades: "♠", hearts: "♥", diamonds: "♦", clubs: "♣"}[suit.to_sym]
    end
  end

  class Deck
    attr_accessor :cards, :cards_played
  
    def initialize
      @cards = (1..13).to_a.product(["spades", "hearts", "diamonds", "clubs"]).collect{|n,s| Card.new(n,s)}
      @cards_played = []
    end
  
    def draw(n=1)
      draw = @cards.sample(n).each do |card|
        @cards_played.push @cards.delete(card)
      end
    end
  
    def cards_left
      @cards - @cards_played
    end
  end

  deck = Deck.new
  hand = deck.draw(2)
  loop do
    puts "Your cards are: "
    puts hand
    value = hand.map(&:value).sum
    puts "Your hand's value is #{value}"
    if value > 21
      puts "Bust!"
      break
    end
    puts "Hit (H) or Stay (S)?"
    action = gets.chomp.downcase
    if action == "s"
      break
    elsif action == "h"
      hand += deck.draw
    end
  end