def letter_count(str)
hash = {}
count = 0
str.chomp.each_char {|x|
next if x == " "
hash[x] = 0 unless hash	.include?(x)
hash[x] += 1
}

hash
end
