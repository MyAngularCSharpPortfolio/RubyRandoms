class Timer

def seconds=(timey)
@time = timey

end

def seconds(time = 0)
@time = time
end
def time_string
"#{padded(@time/3600)}:#{padded((@time/60)%60)}:#{padded(@time%60)}"

end
def padded(num)

return "0#{num}" if num.to_s.length < 2

return num
end

end

