def crazy_sum(arr)
s = 0
arr.each_with_index { |x, index| s += x * index }
s
end

def square_nums(num)
((0..num).select {|x| num > x*x }).max
end

def crazy_nums(max)
(0...max).select { |x| (x%3==0 || x%5==0) && !(x%15 == 0)}
end

