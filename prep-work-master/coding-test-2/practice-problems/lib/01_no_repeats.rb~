def no_repeats(year_start, year_end)
year_start.upto(year_end) { |year|
puts year if no_repeat?(year) == true
}

end

def no_repeat?(year)
arr = []
year.to_s.each_char {|x| arr << x}
return arr.uniq.length == year.inspect.length
end


no_repeats(1234, 1234)
no_repeats(1123, 1123)
no_repeats(1980, 1987)
# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

