def num_to_s(num, base)
num_string = ""
place = 0
hash = {
"0" => 0,
"1" => 1,
"2" => 2,
"3" => 3,
"4" => 4,
"5" => 5,
"6" => 6,
"7" => 7,
"8" => 8,
"9" => 9,
"A" => 10,
"B" => 11,
"C" => 12,
"D" => 13,
"E" => 14,
"F" => 15
}

(0..num_length(num)).each {|count|

puts "#{count} is the count"
place = (num/base**count)%base
puts "#{place} is the place"

#    (123 / 10**0) % 10 == 3 # ones place
#    (123 / 10**1) % 10 == 2 # tens place
#    (123 / 10**2) % 10 == 1 # hundreds place

num_string << hash.key(place)
puts "#{num_string.reverse} the string returned"

}

end


def num_length(num)
place = 10
length = 0

if num == 0
return 1
end

begin

length += 1
place *= 10

end while !(num/place < 1)

length 

end

=begin
In this exercise, I'd like you to write a method `num_to_s(num,
base)`, which will convert a number to a string in a different
base. For instance, `num_to_s(123, 10) == "123"` and `num_to_s(4, 2)
== 100`. It should work for bases up to 16 (hexadecimal).

You can also think of writing numbers in bases like this.
    123 in base 10 = 1*10^2 + 2*10^1 + 3*10^0

    8 in base 2 = 1000 = 2^3*1 + 2^2*0 + 2^1*0 + 2^0*0

    6 in base 2 = 110 = 2^2*1 + 2^1*1 + 2^0*0

    10 in base 3 = 101 = 1*3^2 + 0*3^1 + 1*3^0

You should not call the built in `to_s` yourself. To get around this
restriction you might either:

* Have a giant `case`/`when` switch (ugly; no!)
* Create a `Hash` where the keys are digit numbers and the values are
  the digit strings (for bases > 10 this will involve some characters;
  hex digits go up to `'f'`).

You will want to use the `%`, or modulus function; this finds the
remainder when you divide by a number:

    (123 / 10**0) % 10 == 3 # ones place
    (123 / 10**1) % 10 == 2 # tens place
    (123 / 10**2) % 10 == 1 # hundreds place

Notice that `% 10` gives you the ones place, in decimal. Why? Then you
can *shift* the ones place off by dividing by 10; this rounds down,
leaving you with everything except the ones.

The same logic applies for binary (base 2); but instead of the base
being ten, you use two instead. Then you find the digits in the ones
place, twos place, eights place, etc.
=end



=begin

* Implement a [Caesar cipher](http://en.wikipedia.org/wiki/Caesar_cipher).
  Example: `caesar("hello", 3) # => "khoor"`
  * Assume the text is all lower case letters.
  * You'll probably want to map letters to numbers (so you can shift
    them). You can do this mapping yourself, but you may also want to
    use the [ASCII codes][wiki-ascii], which are accessible through
    `String#each_byte`.
    * You will probably also want to use `String#ord` and
      `Fixnum#chr`.
    * Important point: ASCII codes are all consecutive!
    * Lastly, be careful of the letters at the end of the alphabet, like
      `"z"`!
=end

def caesar(str, num)
arr = []
index_arr = 0
pop = 0
('a'..'z').each {|x| arr << x}

letter = ''

(0...str.length).each {|index| 

letter = str[index]

index_arr = arr.index(letter)

str[index] = arr.fetch(index_arr + num)


}

str
end

puts caesar("hello", 3)
