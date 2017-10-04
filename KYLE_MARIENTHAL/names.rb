# Create a ruby method that goes over each name in the names array and prints something like below.
a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

# puts "You have #{names.length} names in the 'names' array."
# names.each do |name|
#   puts "The name is #{name[:first_name]} #{name[:last_name]}"
# end

def names (arr)
  p "you have #{arr.length} names in the 'names' array"
  arr.each do |i|
    puts "The name is #{i[:first_name]} #{i[:last_name]}"
  end
end

names(names)
