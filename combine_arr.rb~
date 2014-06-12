def combine_arrays
arr_both = []
arr1 = [1, 3, 5]
arr2 = [2, 4, 6]
index1 = 0
index2 = 0

(arr1.length + arr2.length).times do

if arr1[index1].nil?
arr_both << arr2[index2]
index2 = index2 + 1
elsif arr2[index2].nil?
arr_both << arr1[index1]
index1 = index1 + 1
elsif arr1[index1] < arr2[index2]
arr_both << arr1[index1]
index1 = index1 + 1
elsif arr1[index1] > arr2[index2]
arr_both << arr2[index2]
index2 = index2 + 1
end

end

puts "#{arr_both}"
end

combine_arrays
