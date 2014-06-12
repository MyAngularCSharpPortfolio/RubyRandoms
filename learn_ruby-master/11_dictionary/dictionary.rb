class Dictionary
attr_accessor :words
def initialize
@words = {}
end

def add(hash = {})
return @words.merge! hash unless hash.is_a? String
@words[hash] = nil
end

def entries
@words
end
def keywords
@words.keys.sort
end
def include?(word)
@words.include? word
end
def find(word)

@words.select {|key, value|  (/#{word}/ =~ key) == 0 }

end
def printable

(@words.sort.map { |key,value| "[#{key}] \"#{value}\""}).join "\n"

end
end

=begin
class Dictionary
@@entries = {}
def entries
@@entries
end

def add(hash)
if hash.is_a?(String)
@@entries[hash] = nil
else 
@@entries.merge!(hash)
end
end
def include?(key)
@@entries.include?(key) #&& (@@entries[key].nil? == false)

end
def keywords
@@entries.keys.sort
end
def find(key)
hash = {}
@@entries.find(key).each {|key, value| hash[key] = value}
hash
end
def empty?(key)
@@entries[key].nil?
end
def call(prefix)

end
def printable
@@entries.each {|key, value| puts "[#{key}] #{value}" }

end 

end
=end
