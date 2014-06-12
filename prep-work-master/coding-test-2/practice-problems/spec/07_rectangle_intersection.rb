def rec_intersection(rect1, rect2)

bmyr = []
tmyr = []
lmxr = []
rmxr = []
if ([rect1[0][0],rect1[1][0]].min > [rect2[0][0],rect2[1][0]].min)
lmxr = rect2
rmxr = rect1
else
lmxr = rect1
rmxr = rect2
end

if ([rect1[0][1],rect1[1][1]].max > [rect2[0][1],rect2[1][1]].max)
bmyr = rect1
tmyr = rect2
else
bmyr = rect2
tmyr = rect1
end

if lmxr[]
else
return nil
end

end
