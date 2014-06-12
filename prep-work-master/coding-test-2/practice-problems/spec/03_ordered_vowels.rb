def ordered_vowel_words(str)
words = ''
str.split(/\W/).each {|word|
#str.split(/\W/, 1) would have 
if order_vowel_word?(word) == true
words << (" " + word)
end
}
return words.strip

end

def order_vowel_word?(str)
arr = []
str.split(/[^aeiou]/).each {|word|
arr << word

}
return arr == arr.sort
end



puts ordered_vowel_words("amends")
puts ordered_vowel_words("complicated")
puts ordered_vowel_words("afoot")
puts ordered_vowel_words("ham")
puts ordered_vowel_words("crypt")
puts ordered_vowel_words("o")
puts ordered_vowel_words("tamely")
phrase = "this is a test of the vowel ordering system"
puts ordered_vowel_words(phrase)


=begin

def ordered_vowels(str)

str.split.each{|x|

return x if ordered_vowel_word?(x)

}
end
ordered_vowel_word?(word)

arr = []
arr = word.split(/^aeiou/).each{|x|

}

arr.sort == arr
end
=end
