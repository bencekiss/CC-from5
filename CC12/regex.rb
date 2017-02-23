def png(filename)
  return filename.scan(/ *\.png$ /)
end
puts png("dog.png")
