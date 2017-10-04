class Human
	attr_reader :strength, :intelligence, :stealth, :health
	def initialize strength: 3, stealth: 3, intelligence: 3, health: 100
		@strength = strength
		@stealth = stealth
		@intelligence = intelligence
		@health = health
	end
	def attack target
		if target.class <= Human #if target's class is a subclass or same class as Human
			target.damaged @strength  
			#puts "attack sucessfull"
		#else
			#puts "attack unsucessfull"
		end
	end
	def damaged amount
		@health -= amount
	end
	def healed amount
		@health += amount
	end
	def to_s
		"#{self.class}: strength:#{@stealth} intelligence:#{@intelligence} stealth:#{@stealth} health: #{@health}"
	end
end

# human1 = Human.new
# human2 = Human.new
# puts human1
# puts human2
# human1.attack human2
# puts human1
# puts human2
# human1.attack "rock"
# puts human1
# puts human2