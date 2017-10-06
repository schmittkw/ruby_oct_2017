a = ["where", "is", "coding", "dojo"]
b = ["seattle", "washington"]


# at
a = [ "a", "b", "c", "d", "e" ]
a.at(0)    
a.at(-1)  

# delete
a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   #=> "b"
a                               #=> ["a", "c"]
a.delete("z")                   #=> nil
a.delete("z") { "not found" }   #=> "not found"

# reverse
[ "a", "b", "c" ].reverse   #=> ["c", "b", "a"]
[ 1 ].reverse               #=> [1]

# insert
a = %w{ a b c d }
a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"]
a.insert(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"]

# values_at
a = %w{ a b c d e f }
a.values_at(1, 3, 5)          # => ["b", "d", "f"]
a.values_at(1, 3, 5, 7)       # => ["b", "d", "f", nil]
a.values_at(-1, -2, -2, -7)   # => ["f", "e", "e", nil]
a.values_at(4..6, 3...6)      # => ["e", "f", nil, "d", "e", "f"]