class Mammal
  def initialize
    puts "I am alive"
    self
  end

  def breath
    puts "inhale and exhale"
    self
  end

  def who_am_i
    puts self
    self
  end
end

# my_mammal = Mammal.new# => "I am alive"
# my_mammal.who_am_i# => #<Mammal:0x007f9e86025dd8>
# my_mammal.who_am_i.breath# => undefined method `breath' for nil:NilClass (NoMethodError)
# In the last line of our script, we tried to chain methods. However, we get a NoMethodError that 'breath' is an undefined method for a nil value. The reason is that since the puts method prints the value and returns nil, the value that is getting returned from our instance methods is nil. To be able to chain methods, our instance methods need to return an object, more specifically, they need to return self. i went back and put in the word self so all the methods returned it
my_mammal = Mammal.new.who_am_i.breath
