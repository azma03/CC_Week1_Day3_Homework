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

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p "Jonathan's Twitter handle is " + users["Jonathan"][:twitter]

# 2. Get Erik's hometown
p "Erik's hometown is " + users["Erik"][:home_town]

# 3. Get the array of Erik's lottery numbers
p "Erik's lottery numbers are " + users["Erik"][:lottery_numbers].to_s()

# 4. Get the type of Avril's pet Monty
p "The type of Avril's pet Monty is " + users["Avril"][:pets][0][:species]

# 5. Get the smallest of Erik's lottery numbers
p "The smallest of Erik's lottery numbers is " + users["Erik"][:lottery_numbers].min().to_s()

# 6. Return an array of Avril's lottery numbers that are even
avril_lottery_even_numbers = []
for lottery_number in users["Avril"][:lottery_numbers]
  if (lottery_number % 2 == 0)
    avril_lottery_even_numbers.push(lottery_number)
  end
  #p lottery_number
end
p "Avril's even lottery numbers are " + avril_lottery_even_numbers.to_s()


# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
users["Erik"][:lottery_numbers].push(7)
p "Added 7 to Erik's lottery number " + users["Erik"][:lottery_numbers].to_s

# 8. Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
p  "Erik's hometown changed to " + users["Erik"][:home_town]

# 9. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets].push(name: "Fluffy", species: "dog")
p "Added Fluffy to Erik's pets"
p users["Erik"][:pets]


# 10. Add another person to the users hash
new_person = {
  "Sarah" => {
    :twitter => "sarah12",
    :lottery_numbers => [9, 11, 34, 65, 90, 45],
    :home_town => "Ayr",
    :pets => [
      {
        :name => "max",
        :species => "cat"
      },
      {
        :name => "rocky",
        :species => "dog"
      }
    ]
  }
}
users.merge!(new_person)
p "Added another person " + users.keys.last + " to the users hash"
p users
