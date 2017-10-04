class MathDojo
	attr_reader :result
	
	def initialize
		@result = 0
		self
	end
	def add *values
		@result += values.flatten.inject(:+)
		self
	end
	def subtract *values
		@result -= values.flatten.inject(:+)
		self
	end

end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
p challenge1
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
p challenge2