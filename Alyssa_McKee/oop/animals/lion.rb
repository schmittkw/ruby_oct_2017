require_relative "mammal.rb"

class Lion < Mammal
	def initialize
		@health = 170
		self
	end
	
	def fly
		@health -= 10
		self
	end
	
	def attack_town
		@health -= 50
		self
	end
	
	def eat_humans
		@health += 20
		self
	end
	
	def health
		p "This is a lion"
		super
	end
end

lion = Lion.new

p lion.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.health