def no_repeats(year_start, year_end)
arr = []
(year_start..year_end).each {|x|
if no_repeat?(x) == true
arr << x
end
}
return arr
end


def no_repeat?(year)
arr = []
year = year.to_s
arr = year.split(%r{\s*})
if arr.uniq.length == year.length
return true
else
return false
end
end
