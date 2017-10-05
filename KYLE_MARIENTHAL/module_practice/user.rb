class User
  # these are the long ways
  # def first_name=(val)#this is the setter
  #   @first_name = val
  # end
  # def first_name#this is the getter
  #   @first_name #we don't need to write 'return' here because ruby automatically returns what is evaluated last
  # end
  # this is the short way to write getters and setters
  # attr_accessor :first_name#both of these can go on the same line --> attr_accessor :first_name, last_name
  # attr_accessor :last_name
#initialize, full_name, and say_hello are normal methods
  attr_accessor :first_name, :last_name
  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end

  def full_name
    puts "I am #{@first_name} #{@last_name}"
  end

  def say_hello
    puts "hello!"
  end
#foo is a class method as it utilizes the 'self'
  def self.foo
    puts "this is a class method"
  end

end
# user1 = User.new
# user2 = User.new
# user1.first_name = "kyle"
# p user1.first_name
kyle = User.new('kyle', 'marienthal')
p kyle.full_name
p kyle.say_hello
p User.foo
