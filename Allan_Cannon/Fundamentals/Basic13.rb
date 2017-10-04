#(1..255).each {|i| puts i }

#puts (1..255).find_all {|i| i%2 == 1}

# sum = 0
# (1..255).each {|i| sum +=i; puts "New number: #{i} Sum: #{sum}"}

# def print_arr arr
#   arr.each {|i| puts i}
# end
#
# print_arr [1,3,5,7,9,13]

# def max_num arr
#   puts arr.max
# end
#
# max_num [-3,-5,-7]
# max_num [1,3,5]
# max_num [0,1,2]

# def avg arr
#   sum = arr.inject { |sum, n| sum + n}
#   sum / arr.length
# end
#
# puts avg [1,2,3,4,5,6,7,8,9,10]

#arr = (1..255).find_all {|i| i%2 == 1}


# arr=[1,2,3,4,5,6,7,8,9]
# y=4
# def g_t_y arr,y
#   num = (arr.find_all {|i| i > y}).length
# end
#
# puts g_t_y arr,y


#arr.each {|i| puts i*i}

# arr = [1,-2,3,-4,5,-6,7,-8,9]
# p arr.map {|i| if i<0 then 0 else i end}

# def stats arr
#   vals = {}
#   vals['average'] = arr.inject(0){|sum,n| sum+n} / arr.length
#   vals['max'] = arr.max
#   vals['min'] = arr.min
#   return vals
# end
#
# puts stats [1,2,3,4,5,6,7,8,9]


# def shift_arr arr
#   arr.shift
#   arr.push(0)
# end
#
# puts shift_arr [1,2,3,4,5]


p 2.to_s
