# Challenge: Useful Methods
# Go ahead and try the following methods:
#
# .delete(key) => deletes and returns a value associated with the key
# e.g.  ruby h = {:first_name => "Coding", :last_name => "Dojo"} h.delete(:last_name) print h # => {:first_name => "Coding"}
# .empty? => returns true if hash contains no key-value pairs
# .has_key?(key) => true or false
# .has_value?(value) => true or false

the_hash = {first_name: 'kyle', last_name: 'marienthal'}

# the_hash.delete :first_name

# p the_hash.empty?
# p the_hash.has_key? :first_name


p the_hash.has_value? "marienthal"
puts the_hash
