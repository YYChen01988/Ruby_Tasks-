def change_capital(country, new_capital)
  country[:capital] = new_capital
  return country
end

def total_population(countries)
  total = 0
  for country in countries
    total += country[:population]
    end
  return total
end
