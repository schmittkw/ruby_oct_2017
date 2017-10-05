# arr = [3,5,2,2,7,9,8,13,25,32]
# puts arr.inject {|sum,n| sum + n}
# puts arr.find_all {|n| n>10}

# arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# puts arr.shuffle
# puts arr.find_all {|n| n.length>5}

# arr = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
# newarr = arr.shuffle
# puts newarr.last
# if ['a','e','i','o','u'].any? {|letter| letter == newarr.first} == true
#   puts newarr.first + ' <-- This is a vowel'
# else
#   puts newarr.first
# end
#
# if ['a','e','i','o','u'].any? {|letter| letter == newarr.first} == true then puts newarr.first + ' <-- This is a vowel'  else puts newarr.first end

# arr = []
# (1..10).each {|n| arr << rand(100-55)+55+1}
# puts arr

# arr = []
# (1..10).each {|n| arr << rand(100-55)+55+1}
# puts arr.sort,arr.max,arr.min

# newstr = (1..5).inject("") {|s,i|s = s + (65+rand(26)).chr}
# puts newstr

newarr = []
newarr = (0..10).inject{|a,e| newarr << (1..5).inject("") {|s,i|s = s + (65+rand(26)).chr}}
puts newarr
