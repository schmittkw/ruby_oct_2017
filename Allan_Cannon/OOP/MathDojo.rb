class MathDojo
  @val
  attr_reader

  def initialize
    @val = 0
  end

  def add *nums
    for num in nums
      if num.is_a? Fixnum
        @val+=num
      elsif num.is_a? Array
        for item in num
          @val+=item
        end
      end
    end
    self
  end

  def subtract *nums
    for num in nums
      if num.is_a? Fixnum
        @val-=num
      elsif num.is_a? Array
        for item in num
          @val-=item
        end
      end
    end
    self
  end

  def result
    puts @val
    self
  end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
