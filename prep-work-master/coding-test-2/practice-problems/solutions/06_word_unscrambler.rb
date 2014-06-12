def word_unscrambler(str, words)
  str_letters = str.split("").sort

  anagrams = []
  words.select do |word|
    word_letters = word.split("").sort
    anagrams << word if str_letters == word_letters
  end

  anagrams
end

=begin
#ed's test code
def word_unscrambler(str, arr)
str_arr = str.split(%r{\s*}).map{|x|}
ana = arr.select{|x|
str_arr.sort == x.split(%r{\s*}).sort
}

ana
end

=end
