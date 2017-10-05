test = ['and', 'bear', 'cat']

puts ".any? test"
puts test.any? { |word| word.length >= 5 }

puts ".each test"
puts test.each {|word| print word, '--'}
