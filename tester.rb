def corgi_golden_age(arr)

s = 0
e = 1
z = 0
indexes = [0, 0]
high_sum = 0
sum = 0


((arr.length.to_f/2.0).ceil).times do |x|

while (e <= arr.length)

sum = (arr[s..e]).inject {|sum, com| sum + com }
if sum > high_sum
high_sum = sum
indexes = [s, e]
end
s += 1
e += 1

end
z += 1
s = 0
e = z
end

puts indexes
end
