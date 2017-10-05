# Iterators
# Iterators are extremely important for Ruby. Please go through each of these functions through Ruby's official documentation and build a single ruby file where you go through each of the following Ruby functions. This will be listed in one of the assignments below.
#
# .any? { |obj| block } => true or false
arr=["ant", "bear", "cat"]
arr2=[5, 4, 3]
# arr.any?{|i| i.length >= 2}

# .each => calls block once for each element in ruby self, passing that element as a block parameter.
# e.g. ["ant", "bear", "cat"].each { |word| print word, "--" } # => ant--bear--cat--
# arr.each{|i| print i, "--"}

# .collect { |obj| block } => returns a new array with the results of running block once for every element in enum
# e.g. (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
# e.g. (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]
# puts arr2.collect{|i| i*i}
# puts (1..5).collect{'ant'}
# .detect/.find => returns the first for which block is not false.
# e.g. (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
# e.g. (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
# (5-5000).find{|i| i % 5 == 0}

arr.collect { |i| p i if i.include?('a') }

# .find_all { |obj| block } or .select { |obj| block } => returns an array containing all elements of enum for which block is not false
# e.g. (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]

# .reject { |obj| block } => opposite of find_all
# e.g. (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]

# .upto(limit) => iterates block up to the int number
# e.g. 5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10
