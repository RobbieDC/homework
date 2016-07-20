# # Homework

# ### A. Given the following data structure:

puts "\nA"

# ```
lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']
# ```

# 1. Work out how many stops there are in the current west array

num_stops = lines.count
puts "1. There are #{num_stops} stops in the current west array."


# 2. Return 'Edinburgh Park' from the array

specific_stop = lines[1]
puts "2. #{specific_stop}"


# 3. How many ways can we return 'Princes Street' from the array?

princes_street_returns = []

princes_street_returns.push(lines[4])
princes_street_returns.push(lines[-1])
princes_street_returns.push(lines.last)
princes_street_returns.push(lines.last(1))

num_princes_street_returns = princes_street_returns.count

puts "3. Princes Street can be returned at least #{num_princes_street_returns} ways."


# 4. Work out the index position of 'Haymarket' 

haymarket_index = lines.index("Haymarket")
puts "4. Haymarket has an index of #{haymarket_index}."


# 5. Add 'Airport' to the start of the array 

lines.unshift("Airport")
puts "5. Airport added to the start of lines: #{lines}"


# 6. Add 'York Place' to the end of the array

lines.push("York Place")
puts "6. York Place added to the end of lines: #{lines}"


# 7. Remove 'Edinburgh Park' from the array using it's name 

lines_7 = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']
lines_7.delete("Edinburgh Park")
puts "7. Edinburgh Park removed from lines by name: #{lines_7}"


# 8. Delete 'Edinburgh Park' from the array by index

lines_8 = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']
lines_8.delete(1)
puts "8. Edinburgh Park removed from lines by index: #{lines_7}"


# 9. Reverse the positions of the stops in the array

reversed_lines = lines.reverse
puts "9. Reversed lines: #{reversed_lines}"


# 10. Print out all of the stops using a for loop and a while loop

puts "10. 
  - for loop printed stops:"
for stop in lines
  puts "      #{stop}"
end

puts "  - while loop printed stops:"
counter = 0
while (counter < lines.length) do
  puts "      #{lines[counter]}"
  counter += 1
end


# ### B. Given the following data structure:

puts "\nB"

# ```
my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# ```

# 1. How would you return the string `"One"`?

value_2 = my_hash[1]
puts "1. The string #{value_2} can be returned by calling its integer key on the hash."


# 2. How would you return the string `"Two"`?

value_3 = my_hash[:two]
puts "2. The string #{value_3} can be returned by calling its symbol key on the hash."


# 3. How would you return the number `2`?

value_4 = my_hash["two"]
puts "3. The number #{value_4} can be returned by calling its string key on the hash."


# 4. How would you add `{3 => "Three"}` to the hash? 

my_hash[3] = "Three"
puts "4. A key value pair can be added to an exisiting hash by calling the new key on the hash and assigning it to the new value. In this case we have an integer key and a string value."
puts my_hash


# 5. How would you add `{:four => 4}` to the hash? 

my_hash[:four] = 4
puts "5. A key value pair can be added to an exisiting hash by calling the new key on the hash and assigning it to the new value. In this case we have a symbol key and an integer value."
puts my_hash


# ### C. Given the following data structure:

puts "\nC"

# ```
users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  },
}
# ```

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)

jonathan_twitter_handle = users["Jonathan"][:twitter]
puts "1. Jonathan's Twitter handle is #{jonathan_twitter_handle}"


# 2. Return Erik's hometown 

erik_home_town = users["Erik"][:home_town]
puts "2. Erik's hometown is #{erik_home_town}"


# 3. Return the array of Erik's favorite numbers

erik_favourite_numbers = users["Erik"][:favourite_numbers]
puts "3. Erik's favourite numbers are: #{erik_favourite_numbers}"


# 4. Return the type of Avril's pet Colin

type_of_avril_pet = users["Avril"][:pets]["colin"]
puts "4. Avril's pet, Colin, is a #{type_of_avril_pet}"


# 5. Return the smallest of Erik's favorite numbers

smallest_of_erik_favourite_num = users["Erik"][:favourite_numbers].min
puts "5. The smallest of Erik's favourite numbers is #{smallest_of_erik_favourite_num}"


# 6. Return an array of Avril's favorite numbers that are even 

avril_favourite_num = (users["Avril"][:favourite_numbers])
avril_even_favourite_num = []

for num in avril_favourite_num
  if num.even?
    avril_even_favourite_num.push(num)
  end
end

puts "6. Avril's favourite even numbers are: #{avril_even_favourite_num}"


# 7. Return an array of Jonathans favourite numbers, sorted in ascending order and excluding duplicates

jonathan_favourite_numbers = users["Jonathan"][:favourite_numbers]
jonathan_uniq_ascend_num = jonathan_favourite_numbers.sort.uniq

puts "7. Jonathan's favourite, unique, numbers in ascending order are: #{jonathan_uniq_ascend_num}"


# 8. Add the number `7` to Erik's favorite numbers

users["Erik"][:favourite_numbers].push(7)
puts "8. 7 has been added to Erik' favourite numbers: #{erik_favourite_numbers}"


# 9. Change Erik's hometown to Edinburgh

users["Erik"][:home_town] = "Edinburgh"
erik_updated_home_town = users["Erik"][:home_town]
puts "9. Erik's hometown has been changed to #{erik_updated_home_town}"


# 10. Add a pet dog to Erik called "Fluffy"

users["Erik"][:pets]["Fluffy"] = "dog"
erik_updated_pets = users["Erik"][:pets]
puts "10. Erik now also has a pet dog named Fluffy: #{erik_updated_pets}"

# 11. Add yourself to the users hash

users["Robbie"] = {
  twitter: "boab",
  favourite_numbers: [8, 88, 888],
  home_town: "Inverness",
  pets: {
    "Ria" => :dog,
    "Rowan" => :dog,
    "Morag" => :chicken,
    "Caroline" => :chicken
  }
}

puts "11. User Robbie has been added to the hash: #{users["Robbie"]}"

puts "\n"


