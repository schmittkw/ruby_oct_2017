require_relative "human"

class Samurai < Human
	def initialize
		puts "The way of the samurai is my way of life"
		options = {health: 200}
		super options
	end
	def death_blow target
		target.damaged target.health if target.class <= Human
	end
	def meditate
		@health = 200
	end
end