def add(num, num_2)
num + num_2
end

def sum(arr)
answer = arr.inject{|sum, acc| sum + acc}

if answer.nil? == true
return 0
else 
return answer
end
end

def subtract(num_1, num_2)

num_1 - num_2
end

def multiply(arr)

return arr.inject{|mul, acc| mul * acc}

end

def pow(num, power)
total = 1
(0...power).each{ total *= num}
total
end

def factorial(num)
if num == 0
return 0
end
total = 1



(-num...0).each{|x| total *= x.abs }

total
end
