def fibonacci(n)
  elements = [0, 1]
  (2..n).each do |c|
    elements[c] = series(elements[c-2], elements[c-1])
  end
  elements[n-1]
end


# working recursive
def series(term, second = 1, first = 0)
  return term == 0 ? 0 : (term == 1 ? (first > 0 ? first : 1) : (series(term-1, second+first, second)))
end




puts series(5)
