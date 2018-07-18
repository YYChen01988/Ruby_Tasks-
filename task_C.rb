united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# Change the capital of Wales from "Swansea" to "Cardiff".
united_kingdom[0][:capital] = "Cardiff"
p united_kingdom[0][:capital]

# Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).
p united_kingdom << {name: "Northern Ireland", capital: "Belfast", population: 1811000 }

# Use a loop to print the names of all the countries in the UK.
for hash in united_kingdom
  p hash[:name]
end
# answer02 united_kingdom.each {|hash| p hash[:name]}

# Use a loop to find the total population of the UK.
total_population = 0
for hash in united_kingdom
  total_population += hash[:population]
end

p total_population
