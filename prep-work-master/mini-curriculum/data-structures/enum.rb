def concatenate(arr)
new_arr = []
new_arr = arr.inject {|accum, element|

accum + element

}

puts new_arr

end


def median(arr)
puts arr.sort[(arr.length/2).to_i]


end
#median([1,3,0,4,5,6])
def something(sample)

sample.inject {|sum, n| 

sum + n

}
end

def squares(x)
arr = []
da = []
(1..x).each {|s| 
if (1..x).include?(s*s)
da << (s*s)
end
}
puts da
end
squares(100)
def mul_arr(arr)
arr_new = arr.map{|x| x*2}

puts arr_new
end
