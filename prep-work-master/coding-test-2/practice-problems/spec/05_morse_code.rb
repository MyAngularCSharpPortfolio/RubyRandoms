def morse_encode(str)
morse_phrase = ''

str.split(/\s/).each {|x|

morse_phrase += (morse_encode_word(x) + '  ') 

}

return morse_phrase.strip
end


def morse_encode_word(word)

morse_word = ''

morse_hash = {
:a=>".-",
:b=>"-...",
:c=>"-.-.",
:d=>"-..",
:e=>".",
:f=>"..-.",
:g=>"--.",
:h=>"....",
:i=>"..",
:j=>".---",
:k=>"-.-",
:l=>".-..",
:m=>"--",
:n=>"-.",
:o=>"---",
:p=>".--.",
:q=>"--.-",
:r=>".-.",
:s=>"...",
:t=>"-",
:u=>"..-",
:v=>"...-",
:w=>".--",
:x=>"-..-",
:y=>"-.--",
:z=>"--.."
}
word.split(%r{\s*}).each {|x|

morse_word += (' ' + morse_hash[x.downcase.to_sym]) 
}
return morse_word.strip
end

