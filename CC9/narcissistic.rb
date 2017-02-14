def narcissistic(number)
  num_split = number.to_s.split(//)
  pow = num_split.length
  sum = 0
  num_split.each { |num|  sum += (num.to_i ** pow) }
  sum == number ? true : false
end

puts narcissistic(1634)
puts narcissistic(153)
puts narcissistic(169)
