class Array
def sum
summ = self.inject{|sum, acc| sum + acc}
return 0 if summ.nil?
summ
end
def square
self.map{|x| x*x}
end

def square!
self.map!{|x| x*x }
end


end

