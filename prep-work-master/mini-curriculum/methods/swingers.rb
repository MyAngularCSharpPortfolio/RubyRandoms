def swingers(arr)
random_man = []
random_number = 0
used = []
what_is_left = arr

arr.each {|current_group|
#puts current_group
random_number = rand(0...what_is_left.length)
what_is_left -= [current_group]

puts "start of what is left #{what_is_left} end"
puts random_number
if random_number != nil
random_man = [what_is_left[random_number]]
puts random_man
end

#what_is_left += [current_group]

#subtract the current group from what groups are left

#
#the random number


#random_man = what_is_left[random_number]

#puts what_is_left
#puts "#{random_man} random man with out brackets"
#puts "#{[random_man]} with brackets"
#current_group[0] = random_man[0]
#what_is_left += [current_group]

#what_is_left -= [random_man]


random_man.clear
}
#puts arr
return arr
end

swingers([
  ["ma", "fa"],
  ["mb", "fb"],
  ["mc", "fc"],
  ["md", "fd"]
])
