def nearest_larger(arr, i)
#arr[i] < arr[j]
arr.each { |value|
#puts p
if arr[i] < value
return arr.index value #shows the index
break
end
if arr[i] == arr.max
return "nil"
end
}

#return j #another index
end
puts nearest_larger([2,3,4,8], 2)
puts nearest_larger([2,8,4,3], 2)
puts nearest_larger([2,6,4,8], 2)
puts nearest_larger([2,6,4,6], 2)
puts nearest_larger([8,2,4,3], 2)
puts nearest_larger([2,4,3,8], 1)
puts nearest_larger( [2, 6, 4, 8], 3)


# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.

