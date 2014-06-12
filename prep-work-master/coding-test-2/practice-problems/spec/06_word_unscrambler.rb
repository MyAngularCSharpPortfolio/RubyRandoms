def word_unscrambler(str, words)

str_sorted = string_sort(str)

anagrams = []

words.each { |x|

if str_sorted.length == string_sort(x).length and str_sorted == string_sort(x)
anagrams << x
end

}

return anagrams


end

def string_sort(str)
arr = []

str.split(%r{\s*}).each { |x| arr << x }


return arr.sort.join


end
