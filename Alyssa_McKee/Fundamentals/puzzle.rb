p "puzzule 1"
arr = [3,5,1,2,7,9,8,13,25,32]
def puzz1 arr
	p arr.inject(:+)
	arr.reject{|i| i<=10}
end

p puzz1 arr

puts "\npuzzle 2"
arr_n = %w{John KB Oliver Cory Matthew Christopher}

def puzz2 arr
	arr.shuffle.each{|i| p i}
	arr.find_all{|w| w.size > 5}
end

p puzz2 arr_n

puts "\npuzzle 3"
arr_l = ('a'..'z').collect{|i| i}

def puzz3 arr
	p arr.shuffle!.last
	p arr.first
	p "its a vowel!" if arr.first.match(/[aieou]/)
end

puzz3 arr_l

puts "\npuzzle 4"
p [].fill(0...10){ rand(55..100) }

puts "\npuzzle 5"
array_r = [].fill(0...10){ rand(55..100) }
p array_r.sort!
p array_r.first
p array_r.last

puts "\npuzzle 6"
def randword length
	letters = [].fill(0...length){ (65+rand(26)).chr }
	string = letters.join
end
p randword 5

puts "\npuzzle 7"
rand_sentance = [].fill(0...10){randword 5}
p rand_sentance