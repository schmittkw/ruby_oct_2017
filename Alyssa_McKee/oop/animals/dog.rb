require_relative "mammal.rb"
class Dog < Mammal
	def initialize 
		super
		self
	end
	
	def pet
		@health += 5
		self
	end
	
	def walk
		@health -= 1
		self
	end
	
	def run
		@health -= 10
		self
	end
end

my_dog = Dog.new
p my_dog.walk.walk.walk.run.run.pet.health