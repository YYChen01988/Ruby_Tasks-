users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}


# Get Jonathan's Twitter handle (i.e. the string "jonnyt")
p users["Jonathan"][:twitter]

# Get Erik's hometown
p users["Erik"][:home_town]

# Get the array of Erik's lottery numbers
p users["Erik"][:lottery_numbers]

# Get the type of Avril's pet Monty
p users["Avril"][:pets][0][:species]

# Get the smallest of Erik's lottery numbers
p users["Erik"][:lottery_numbers].min()

# Return an array of Avril's lottery numbers that are even

#Answer1
p users["Avril"][:lottery_numbers].select {|x| x if x.to_i%2==0}

#Answer2
Aviral_lottery = users["Avril"][:lottery_numbers]
p Aviral_lottery .select {|lottery_numbers| x if lottery_numbers % 2 == 0}

#Answer3
even_number = []
for number in users["Avril"][:lottery_numbers]
  even_numbers.push(number)if number.even?()
end


# Erik is one lottery number short! Add the number 7 to be included in his lottery numbers
p users["Erik"][:lottery_numbers].push(7)
p users["Erik"][:lottery_numbers] << 7

# Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
users["Erik"][:home_town].replace("Edinburgh")

# Add a pet dog to Erik called "Fluffy"
#Answer1
p users["Erik"][:pets] << {
  :name => "Fluffy",
  :species => "dog"}

# Answer2
new_pet = {:name => "Fluffy",
  :species => "dog"}
users["Erik"][:pets].push(new_pet)

# Answer3
p users["Erik"][:pets].push({:name => "Fluffy",
  :species => "dog"})

# Answer4
new_add_hashes ={
   :name => "Fluffy",
   :species => "dog"}
 a = users["Erik"][:pets]
 p a << new_add_hashes


# Add another person to the users hash
# Answer1
Amy_hash = {"Amy" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }}
users = users.merge(Amy_hash)
p users

# Answer2
users["Ally"]= {} # already add to the users hash.
p users # so just print out users and it will be there
