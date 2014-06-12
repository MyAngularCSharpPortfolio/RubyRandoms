
* Loop through all the numbers, stopping when you encounter a number
  that is (a) >250 and (b) divisible by 7. Print this number down!
* Print out all the factors for each of the numbers 1 through 100.
* Implement [Bubble sort][wiki-bubble-sort] in a method `#bubble_sort`
  that takes an `Array` and modifies it so that it is in sorted order.


(0..250).each {
|num|
if num%7 == 0 
puts num
end
}

(1..100).each {|x| 
if 100%x == 0
puts x
end
}


def bubble_sort(arr)
old_value = 0
while arr.sort != arr 
arr.each_with_index {|value, index|

if (arr[index.next] != nil) && (value > arr[index.next])
old_value = arr[index.next]
arr[index.next] = value
value = old_value
end

}
end
end





* Write a method `substrings` that will take a `String` and return an
  array containing each of its substrings.
  Example output: `substrings("cat") => ["c", "ca", "cat", "a", "at", "t"]`



def substrings(str)
arr = []
stre = ''
count = 0
while count < str.length
(0..str.length).each_with_index {|index|
stre += str[index]

arr << stre

count += 1
}
end


puts arr
end
