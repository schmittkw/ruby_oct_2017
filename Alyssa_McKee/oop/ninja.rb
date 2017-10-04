require_relative "human"

class Ninja < Human
	def initialize
		puts "can't see me!"
		options = {stealth: 175}
		super options
	end
	def steal target
		attack target
		healed 10 #if target.class <= Human	#should it only heal if the target was a subclass of human? the instructions don't specify...
	end
	def get_away
		damaged 15
	end
end