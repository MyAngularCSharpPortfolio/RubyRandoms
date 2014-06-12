def letter_count(str)
arr = []
str.split(%r{\s*}).each {|letter| 
arr << letter
}

hash = {}
previousNum = nil
count = 1

arr.sort.each { |value|

if previousNum == value
hash[value] = (count = count + 1)

else

count = 1
hash[value] = count
end

previousNum = value
}
return hash
end

puts letter_count("cat")
puts letter_count("moon")
puts letter_count("ccattss aarea fauan")
