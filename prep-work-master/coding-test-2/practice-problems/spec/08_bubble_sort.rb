def bubble_sort(arr)
swapped = false
count = 0
oldie = ''
#while (swapped == false) 
#do


while (arr[count + 1] != nil) do

if (arr[count] > arr[count + 1]) 
old = arr[count]
arr[count] = arr[count + 1]
arr[count + 1] = old
swapped = true
#swap it
end
count += 1
end#go through the array
bubble_sort(arr) if swapped == true
#end

return arr
end
