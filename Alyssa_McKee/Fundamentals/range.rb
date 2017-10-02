#ranges wooooo

r = (1..5)
s = (10..15)
p r.class

y = ("a".."z")
z = ("f".."m")
puts y.to_a.shuffle.to_s

p r.include?("h")
p y.include?("h")
p y.include?(z)

#x = (r..s) bad value. because the variables are ranges
a = 17
b = 42

x = (a..b)

p x.min
p x.max