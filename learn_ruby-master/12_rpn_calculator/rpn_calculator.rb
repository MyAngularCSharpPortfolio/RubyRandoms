class RPNCalculator

def initialize
@arr = []
end
def push(num)
@arr.push num
end
def plus
return @arr.push(@arr.pop + @arr.pop) if @arr.size >= 2
raise "calculator is empty"
end
def value
@arr.last
end
def divide

return @arr.push(1/@arr.pop.to_f * @arr.pop.to_f) if @arr.size >= 2
raise "calculator is empty"

end

def minus
return @arr.push(-@arr.pop + @arr.pop) if @arr.size >= 2
raise "calculator is empty"
end

def times
return @arr.push(@arr.pop * @arr.pop) if @arr.size >= 2
raise "calculator is empty"
end
end
