def find_leap_years(a, b)
  array = []
  (a..b).each do |year|
    if year % 400 == 0
      array << year
    elsif year % 100 != 0 && year % 4 == 0
      array << year
    end
  end
  array
end
def leap_short(a, b)
  ar = (a..b).select do |year|
    year % 400 == 0 || year % 4 == 0 && year % 100 != 0
  end
  ar
end


p leap_short(2095, 2105)

p find_leap_years(2000,2012)
