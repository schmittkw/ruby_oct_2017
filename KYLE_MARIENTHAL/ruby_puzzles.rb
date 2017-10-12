# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
# x = [3,5,1,2,7,9,8,13,25,32]
# def puzzle x
#   puts x.inject(0, :+)/x.length #prints the average
#   puts x.find_all { |i| i > 10}#return an array that only include numbers that are greater than 10
# end
# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
# x = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# x.shuffle.each {|i| print i, "--is a name--"}
# p x.find_all {|i| i.length > 5}

 # Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.

# def alpha
#   a = ('a'..'z').collect {|i| i}
#   shuff = a.shuffle
#   p x = shuff.first
#   p 'this first one is a vowel' if ['a','e','i','o','u',].include? x
#   p shuff.last
# end
# alpha

# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
# random_array = []
# 10.times {random_array.push rand(55..100)}
# p random_array.sort
# p random_array.min
# p random_array.max

# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
# p (0...5).map {(65 + rand(26)).chr}.join

# Generate an array with 10 random strings that are each 5 characters long
arr = []
# rand_str = (0...5).map {(65 + rand(26)).chr}.join
10.times do
  arr << (0...5).map {(65 + rand(26)).chr}.join
end
p arr
