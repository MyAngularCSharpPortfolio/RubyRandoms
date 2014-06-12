def my_tranpose(arr)
arr.transpose
end


rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
my_tranpose(rows)
=begin
### My Transpose

To represent a *matrix*, or two-dimensional grid of numbers, we can
write an array containing arrays which represent rows:

```ruby
rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

row1 = rows[0]
row2 = rows[1]
row3 = rows[2]
```

We could equivalently have stored the matrix as an array of
columns:

```ruby
cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]
```

Write a method, `my_transpose`, which will convert between the
row-oriented and column-oriented representations.



























=begin
Write a
[Towers of Hanoi](http://en.wikipedia.org/wiki/Towers_of_hanoi) game.

Keep three arrays, which represents the piles of discs. Pick a
representation of the discs to store in the arrays; maybe just a
number representing their size.

In a loop, prompt the user (using
[gets](http://andreacfm.com/2011/06/11/learning-ruby-gets-and-chomp/))
and ask what pile to select a disc from, and where to put it.

After each move, check to see if they have succeeded in moving all the
discs, to the final pile. If so, they win!
def toh(disks)
a = []
b = []
c = []
(0..disks).each {|x|
a << x
}

begin
puts "where are you moving from"
from = "@#{gets.chomp}"

puts "where are you moving to"
to = gets.chomp

if from == "a" && to == "b"
b << a.pop
elsif from == "a" && to == "c"
c << a.pop
elsif from "b" && to == "a"

elsif from "b" && to == "c"

elsif from "c" && to == "a"

elsif from "c" && to == "b"

end while c.length != disks

puts "you win #{c}"

end
=end






=begin
def two_sums(arr)
zero_array = []
so = nil

if arr.include?(0)
(arr - [0]).length < (arr.length - 1)
return true
end


arr.each {|x|

if  

return true
end

}

end

puts two_sums([1,2,0])









=begin
class Array
  def my_uniq
    # ...
	arr = []
	self.each {|x|
	if !arr.include?(x)
		arr << x
	end
	}
	arr
  end
end

arr = [1,2, 3, 4, 2, 1]
puts arr
puts "#{arr.my_uniq} nothing is return"
=end
