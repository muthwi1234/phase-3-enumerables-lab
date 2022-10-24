require 'pry'
# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end
# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
  ["Green Curry", "Buffalo Wings", "Mapo Tofu"].to_a
end
# given an array of spicy foods, **return an array of hashes**
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # your code here
    levels =spicy_foods.select {|l| l[:heat_level] >= 5}
    return levels
end
# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format:
# Buffalo Wings (American) | Heat Level: :hot_pepper::hot_pepper::hot_pepper:
# HINT: you can use * with a string to produce the correct number of :hot_pepper: emoji.
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here
  return spicy_foods.each {|l| puts "#{l[:name]} (#{l[:cuisine]}) | Heat Level: #{'🌶' * l[:heat_level]}"}
end
# given an array of spicy foods and a string representing a cuisine, **return a single hash**
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  selected = spicy_foods.each{|f| puts
  if f[:cuisine] == cuisine
  return f
end
}
end
# Given an array of spicy foods, **return an array of hashes**
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here
  sorted = spicy_foods.sort{|f1, f2| f1[:heat_level] <=> f2[:heat_level]}
  return sorted
end
# given an array of spicy foods, output to the terminal ONLY
# the spicy foods that have a heat level greater than 5, in the following format:
# Buffalo Wings (American) | Heat Level: :hot_pepper::hot_pepper::hot_pepper:
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
  levels = spicy_foods.filter{|f| f[:heat_level] > 5 }
  return levels.each {|l| puts "#{l[:name]} (#{l[:cuisine]}) | Heat Level: #{'🌶' * l[:heat_level]}"}
end
# given an array of spicy foods, return an integer representing
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  total = spicy_foods.sum{|f| f[:heat_level] }
  return total/spicy_foods.size
end