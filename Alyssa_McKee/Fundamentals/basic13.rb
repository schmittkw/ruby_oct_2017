#I wrote multiple different methods, and uncommented the one I thought was the best

puts "printing 1-255"
(1..255).each{|i| puts i }

#-------------------------------------------
puts "\nprint odd nums between 1 and 255"

(1..255).each{|i| puts i if i.odd?}
#(1..255).step(2).each{|i| puts i} #also works

#-------------------------------------------
puts "\nprint sum"
#sum = 0
#(0..255).each{|i| puts "New number: #{i} Sum: #{sum+=i}"}

puts (0..255).reduce(:+)

#-------------------------------------------
puts "\nItterating though an array"
X =  [1,3,5,7,-5,9,13]
X.each{|i| puts i}

#-------------------------------------------
puts "\nFind Max"

puts X.max

#x = [-5,-7,-16,-6]
#puts x.max

#-------------------------------------------
puts "\nGet Average"

p X.reduce(:+)/X.size

#sum = 0
#X.each{|i| sum += i}
#puts sum/X.size


#-------------------------------------------
puts "\nArray with odd numbers"

y =*(1..255).step(2)

#y = []
#(1..255).each{|i| y<<i unless i.even??}

#y =*(1..255)
#y.reject! {|i| i.even?}

#y = [].fill(1..255){|i| i if i.odd?}

p y

#-------------------------------------------
puts "\nGreater Than Y"
array = [1,3,5,7]
y = 3

puts array.reject{|i| i> y}.count()

#-------------------------------------------
puts "\n Square the values"
x =  [1, 5, 10, -2]

#x.collect!{|i| i*i }

x.map!{|i| i*i}

p x

#-------------------------------------------
puts "\nEliminate Negative Numbers"
x = [1, 5, 10, -2]

x.map!{|i| if i<0 then 0 else i end}

#x = x.each_index{|i| x[i] = 0 if x[i]<0 }

p x

#--------------------------------------------
puts "\nMin, Max, Average"
x = [1, 5, 10, -2]

mma = Hash["min" => x.min, "max" => x.max, "avg" => x.reduce(:+)/x.size]

p mma

#----------------------------------------------
puts "\nShifting the Values"

x = [1, 5, 10, 7, -2]

p x.rotate!

#-----------------------------------------------
puts "\nNumber to string"
x = [-1,-3,2]

x.map!{|i| if i<0 then "dojo" else i end}

p x