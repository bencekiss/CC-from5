animals = [['dogs', 4], ['cats', 3], ['dogs', 7]]
# convert animals to {'dogs' => 11, 'cats' => 3}

def tohash(animals)
  h = {}
  animals.each do |animal|
    if h[animal[0]]
      h[animal[0]] += animal[1]
    else
      h[animal[0]] = animal[1]
    end
  end
  h
end

puts tohash(animals)
puts animals
