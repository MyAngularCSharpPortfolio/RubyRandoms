require 'erb'

meaning_of_life = 42


shit = "meaning of life is <%= meaning_of_life %>"

template = ERB.new shit

results = template.result(binding)

puts results
