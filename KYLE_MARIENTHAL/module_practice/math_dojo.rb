class MathDojo
  attr_reader :answer

  def initialize
    @answer = 0
  end

  def add *num
    @answer += num.flatten.reduce(0, :+)
    self
  end

  def subtract *num
    @answer -= num.flatten.reduce(0, :+)
    self
  end

end

challenge1 = MathDojo.new.add(2).add(2,5).subtract(3, 2).result
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2, 3], [1.1, 2.3]).result
puts challenge1
puts challenge2
#
# class MathDojo
#   attr_reader :answer
#
#   def initialize
#     @answer = 0
#   end
#
#   def add(*numbers)
#     @answer += numbers.flatten.reduce(0, :+)
#     self
#   end
#
#   def subtract(*numbers)
#     @answer -= numbers.flatten.reduce(0, :+)
#     self
#   end
# end
#
# challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).answer
# challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).answer
# puts challenge1
# puts challenge2
