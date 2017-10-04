require_relative "human"

class Wizard < Human
	def initialize
		puts "You're a wizard, Harry!"
		options = {health: 50, intelligence: 25}
		super options
	end
	def heal target #because wizards can heal other people too :)
		puts "HEAL!"
		#healed 20 
		target.healed 20 if target.class <= Human
	end
	def fireball target
		puts "FIREBALL!"
		target.damaged 20 if target.class <= Human
	end
end