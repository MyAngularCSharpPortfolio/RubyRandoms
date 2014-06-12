def wonky_coins(n)
arr = []
n
count = 0

(2..4).each { 

|x| 
if n == 0
return 1
elsif ((n/x).floor) > 0

count += wonky_coins((n/x).floor)
else
count = count + 1
end
}

return count
end


# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.

