# Print 1-255
# Write a program that would print all the numbers from 1 to 255.
(1..255).collect{|i| i}

# Print odd numbers between 1-255
# Write a program that would print all the odd numbers from 1 to 255.
(1..255).reject { |i| i % 2 != 0 }

# Print Sum
# Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:
#
# New number: 0 Sum: 0
# New number: 1 Sum: 1
# New number: 2 Sum: 3
# New number: 3 Sum: 6
# ...
# New number: 255 Sum: __
# Do NOT use an array to do this exercise.

sum = 0
(1..255).each do |i|
  print "New Number: #{} "
  puts "Sum: #{}"
end
