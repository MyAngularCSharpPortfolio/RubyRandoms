def ordered_vowel_words(str)
words = ''
str.split.each {|word|
if order_vowel_word?(word) == true
words << (word + " ")
end
}
return words
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



