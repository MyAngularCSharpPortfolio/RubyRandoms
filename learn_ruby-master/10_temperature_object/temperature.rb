class Temperature

attr_accessor :degrees
attr_accessor :option

def initialize(options = {})
if options.include? :f
@degrees = options[:f] 
@option = :f
else
@degrees = options[:c]
@option = :c
end 
end

def in_fahrenheit
return(@degrees * 9.0/5.0 + 32) if @option == :c
@degrees 
end

def in_celsius
return ((@degrees - 32) * 5.0/9.0) if @option == :f
@degrees
end

class << self
#another class inheriting from itself, i think
def from_celsius(num)
new(:c => num)
end
def from_fahrenheit(num)
new(:f => num)
end
#factory methods, not sure how it works
end
end

class Celsius < Temperature #child inheriting from class Temperature
def initialize(num)
super(:c => num) #access the initializer from parent class
end
end
class Fahrenheit < Temperature
def initialize num
super(:f => num)
end
end
=begin
°C  x  9/5 + 32 = °F

(°F  -  32)  x  5/9 = °C
=end
