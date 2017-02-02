def luck_check(str)
  # return false if str.empty?
  return false unless str =~ /\A\d+\z/
# \d means decimal number -> any digit AND + means match one or more
  # \A means the start of the string
  # \z means the end of the string
  lres = 0
  rres = 0
  lstr = []
  rstr = []
  if str.length % 2 == 0
    lstr = str.slice(0..str.length/2 - 1)
    rstr = str.slice(str.length/2..str.length - 1)
  else
    lstr = str.slice(0..str.length/2 - 1)
    rstr = str.slice((str.length - str.length/2)..str.length - 1)
  end
  lstr.chars.map! do |c|
    lres += c.to_i
  end
  rstr.chars.map! do |c|
    rres += c.to_i
  end
  # lnum.each do |ln|
  #   lres += ln.to_i
  # end
  # rnum.each do |rn|
  #   rres += rn.to_i
  # end
  return rres == lres
end


puts luck_check("12321")
puts luck_check("123456")
puts luck_check("12340055")
