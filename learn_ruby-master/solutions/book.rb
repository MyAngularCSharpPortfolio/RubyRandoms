class Book
@book = ''
@@preposition = ["and", "a","of","in", "the", "a", "an"]
def title=(title)
@book = title.capitalize
end

def title
arr = []
@book.split.each do |x|

if @@preposition.include?(x)
arr << x
else
arr << x.capitalize
end

end

arr.join(" ")
end


end

#best way to really do this problem right is to create an array of prepositions, then check to see if there are 
