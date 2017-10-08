# class User
#     @first_name
#     @last_name
#     # attr_reader :last_name #creates getter method automatically
#     # attr_writer :last_name #creates setter method automatically
#     attr_accessor :first_name, :last_name #creates getter/setter method automatically
#     # attr_accessor :last_name #creates getter/setter method automatically
#     def initialize(f_name, l_name)
#         @first_name = f_name
#         @last_name = l_name
#     end
#   end
#   user1 = User.new
#   user2 = User.new
#   user1.first_name = "Matz"

# # class User
# #     def first_name=(val) #setter method
# #         @first_name = val
# #     end
# # end

# steph = User.new("Stephen", "Curry")

# kobe = User.new
# kobe.first_name= "Kobe"
# kobe.last_name = "Bryant"

# user1.first_name = "Matz"

# puts user1.inspect # => #<User:0x007f8f4b043a30 @first_name="Matz">

# user1.first_name # =>  undefined method `first_name' for #<User:0x007fb104103b70 @first_name="Matz"> (NoMethodError)

# class User
#     def first_name
#         @first_name #don't need return to return something. Ruby will automatically return last line of function unless stated otherwise
#     end
# end


# class User
#     # creating instance methods that get and set the first_name and last_name attributes
#     attr_accessor :first_name, :last_name
    
#     def initialize(f_name, l_name)
#       @first_name = f_name
#       @last_name = l_name
#     end
    
#     def full_name
#       puts "I am #{@first_name} #{@last_name}"
#     end
    
#     def say_hello
#       puts "Hello!"
#     end
#     def self.foo
#         puts "This is a class method"
#     end
# end
# u = User.new("John", "Doe")
# u.full_name # => "I am John Doe"
# u.say_hello # => "Hello!"
# User.foo



# class CodingDojo 
#     @@no_of_branches = 0
#     def initialize(id, name, address) 
#       @branch_id = id 
#       @branch_name = name 
#       @branch_address = address 
#       @@no_of_branches += 1 
#       puts "Created branch #{@@no_of_branches}"
#     end
#     def hello 
#       puts "Hello CodingDojo!"
#     end
#     def display_all
#       puts "Branch ID: #{@branch_id}"
#       puts "Branch Name: #{@branch_name}" 
#       puts "Branch Address: #{@branch_address}"
#     end 
# end 
# # now using above class to create objects 
# branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
# branch.display_all 
# branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
# branch2.display_all









# class CodingDojo 
#     @@no_of_branches = 0
#     def initialize(id, name, address) 
#       @branch_id = id 
#       @branch_name = name 
#       @branch_address = address 
#       @@no_of_branches += 1 
#       puts "Created branch #{@@no_of_branches}"
#     end
#     def hello 
#       puts "Hello CodingDojo!"
#     end
#     def display_all
#       puts "Branch ID: #{@branch_id}"
#       puts "Branch Name: #{@branch_name}" 
#       puts "Branch Address: #{@branch_address}"
#     end
#     def self.num_of_branches
#       @@no_of_branches
#     end
# end
# seattle = CodingDojo.new(1, "Seattle", "123 Seattle Avenue")
# san_jose = CodingDojo.new(2, "San Jose", "456 San Jose Boulevard")
# burbank = CodingDojo.new(3, "Burbank", "789 Burbank Street")
# san_jose.display_all


# class Fixnum
#     def who_am_i
#       puts self
#     end
# end
# class String
#     def who_am_i
#         puts self
#     end
# end
# 4.who_am_i # => 4
# 15.who_am_i # => 15
# "string".who_am_i # => "string"
# "hello_world".who_am_i # => "hello_world"



# class Mammal
#     def initialize
#       puts "I am alive"
#     end
#     def breath  
#       puts "Inhale and exhale"
#     end
    
#     def who_am_i
#       # printing the current object
#       puts self
#     end
# end
# my_mammal = Mammal.new # => "I am alive"
# my_mammal.who_am_i # => #<Mammal:0x007f9e86025dd8>
# my_mammal.who_am_i.breath # => undefined method `breath' for nil:NilClass (NoMethodError)




class Mammal
    def initialize
      puts "I am alive"
      self
    end
    def breath  
      puts "Inhale and exhale"
      self
    end
    
    def who_am_i
      puts self
      self
    end
end
my_mammal = Mammal.new.who_am_i.breath