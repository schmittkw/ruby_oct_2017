def test
    puts "You are in method"
    yield
    puts "You are again back to method"
    yield 
end 
test {puts "You are in the block"}

def test
    yield(5)
    puts "You are in the method test"
    yield(100)
end
test { |i| puts "you are in block #{i}"}

def square(num)
    puts"num is #{num}"
    puts "yield(num) has a value of #{yield(num)}"
end

square (5) do |i|
    i=in
end

