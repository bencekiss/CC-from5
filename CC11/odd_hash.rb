def remove_odd_sum(hashes, k1, k2)
  return hashes.select do |hash|
    ((hash[k1] + hash[k2]) % 2) == 0
  end
end

ex = [{a: 5, b: 5}, {a: 3, b: 4}, {a: 2, b: 0}, {a: 2, b: 1}]

puts remove_odd_sum(ex, :a, :b)
puts ex
