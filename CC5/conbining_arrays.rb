numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']

cards=[]

suits.each do |suit|
  numbers.each do |number|
    card = [number,suit]
    cards << card
  end
end

print cards.length
