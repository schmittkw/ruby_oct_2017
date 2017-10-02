a = ["Cat","Dog","Fish","Bear"]
b = [3,1,4,1,5,9,2,6,5,3,5,8,9,7]
c = ["a",8,"C",0,3,"F",9]
w = %w{Hello I Am an Array Of Words}

p a.at(3)
p b.fetch(1) 
p a.at(2)
p b.at(6)
p a.at(2)
c.delete("F")
p c

p b.reverse
p b.shuffle
p b
p b.shuffle!
p b
p b.sort
p c.join(" ")

a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
p w