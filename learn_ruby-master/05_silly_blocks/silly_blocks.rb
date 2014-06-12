def reverser
sentence = ''
yield.split.each do |word|
sentence << word.split(%r{\s*}).reverse.join + " "
end
sentence.strip
end


def adder(x = 1)
yield + x
end

def repeater(x = 1)
executed = true
x.times do
!executed if yield 
end
executed
end
