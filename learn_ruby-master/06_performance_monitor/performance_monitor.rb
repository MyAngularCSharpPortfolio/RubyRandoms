def measure(x = 1)
a = Time.now
x.times { yield }
(Time.now - a)/x
end
