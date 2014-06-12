def ordered_word?(words)
let = ''
ordered = true
words.split(%r{\s*}).each do |word|
ordered = false if let > word
let = word
end
ordered
end

def encrypt(words)
letter_arr = []
count = 0
previous_letter = words[0]

words.split(%r{\s*}).each_with_index do |letter, index|


count += 1 if previous_letter == letter

if (previous_letter != letter || (words.length-1) == index )
letter_arr << [previous_letter, count]
count = 1
end
previous_letter = letter

end
letter_arr
end


def one_off_words(str, word_list)
word_array = []

count = 0

word_list.select do |word|
count = 0

(0..str.length).each { |num| count = count + 1 if str[num] != word[num]} 


(count < 2) && (str.length == word.length)
  
end

end



def overlap(range1, range2)

hash = {:range1 => [], :both => [], :range2 => []}
hash[:both] = [[range1.min, range2.min].max, [range1.max, range2.max].min]
hash[:range1] << [range1.min, range2.min] if range1.min < range2.min
hash[:range1] << [range2.max, range1.max] if range2.max < range1.max
hash[:range2] << [range2.mmin, range1.min] if range2.min < range1.min
hash[:range2] << [range1.max, range2.max] if range1.max < range2.max

hash
end


=begin
current_arr = [str[x], num]
if str[x] == str[x+1]
num = num + 1
current_arr = [str[x], num]
elsif str[x] != str[x+1]  
st_arr << current_arr
num = 1
current_arr = [str[x], num]
end
end

=end
