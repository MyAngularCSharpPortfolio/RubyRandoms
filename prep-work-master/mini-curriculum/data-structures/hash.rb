=begin
In Math a Set is an exlusive list of numbers. Examples are the best way to show this.

{3,5,6} is a set. 
{3,5,6,6} is not. 

In a set, order does not matter. So, {5,3,6} is the same as the one above. So, you can see, the actual index or order of these numbers do not matter, as they would were they to be held in an array. 


Ruby provides a class named `Set`. You can read all about it in the
[ruby-doc][ruby-doc]. Let's make a set of methods that will manipulate
a `Hash` as if it were a `Set`.  Like so:

```ruby
# Note these should be safe methods (no !)
set_add_el({}, :x) # => {:x => true}
set_add_el({:x => true}, :x) # => {:x => true} # This should automatically work if the first method worked
set_remove_el({:x => true}, :x) # => {}
set_list_els({:x => true, :y => true}) # => [:x, :y]
set_member?({:x => true}, :x) # => true
set_union({:x => true}, {:y => true}) # => {:x => true, :y => true}
set_intersection # I'm not going to tell you how the last two work
set_minus # Return all elements of the first array that are not in the second array, not vice versa
```

Note: true is just used as a placeholder value. 

We could have defined a class named `Set`, and these methods would
have been instance methods. We don't define a new class here because I
want you to see how you can do this with just methods, and hijack the
Ruby `Hash` class to represent your set.

### Hash offset

Martha has created a hash with letter symbols as keys to represent items that start with their keys. However, she realized everything is off by one letter.

```ruby
wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }
```
Write a program `hash_correct` that takes this wrong hash and returns the correct one.

### Counting with hashes!

Experiment by writing a couple of short programs that will use Hashes to count objects by incrementing a key value.

=end

def hash_correct(hash)
correct_hash = {}
hash.each {|key, value|
correct_hash.merge!({value[0].to_sym => value})

}
puts correct_hash
end
wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }

hash_correct(wrong_hash)

def set_add_el(hash, symbol)
hash_return = {}

if hash.count == 0 
puts hash_return.merge({symbol => true})

else
puts hash_return.merge(hash)
end
end

def set_remove_el(hash, symbol)
hash_return = {}
hash_return.merge(hash)
puts hash_return.delete(hash)
end
def set_list_els(hash)
puts hash.keys
end
def set_member?(hash, symbol)
puts hash.member?(symbol)
return hash.member?(symbol)
end
def set_union(hash)

end


