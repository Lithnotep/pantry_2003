require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cook_book'


class CookBookTest < Minitest::Test

  def test_it_exists
    pantry = Pantry.new
    cookbook = CookBook.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1 = Recipe.new("Mac and Cheese")
    assert_instance_of CookBook, cookbook
  end

  def test_it_has_attributes
    pantry = Pantry.new
    cookbook = CookBook.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1 = Recipe.new("Mac and Cheese")
    assert_equal [], cookbook.recipes
  end

end
#
# pantry = Pantry.new
# # => #<Pantry:0x007fd8858863b8...>
#
# pry(main)> cookbook = CookBook.new
# # => #<CookBook:0x00007faae6a42228 @recipes=[]>
#
# pry(main)> ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
# # => #<Ingredient:0x00007faae6a207e0...>
#
# pry(main)> ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
# # => #<Ingredient:0x00007faae69e3cf0...>
#
# pry(main)> recipe1 = Recipe.new("Mac and Cheese")
# # => #<Recipe:0x00007faae69c9698...>
#
# pry(main)> recipe1.add_ingredient(ingredient1, 2)
#
# pry(main)> recipe1.add_ingredient(ingredient2, 8)
#
# pry(main)> ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
# # => #<Ingredient:0x00007faae6950860...>
#
# pry(main)> ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
# # => #<Ingredient:0x00007faae694bb80...>
#
# pry(main)> recipe2 = Recipe.new("Cheese Burger")
# # => #<Recipe:0x00007faae692a110...>
#
# pry(main)> recipe2.add_ingredient(ingredient1, 2)
#
# pry(main)> recipe2.add_ingredient(ingredient3, 4)
#
# pry(main)> recipe2.add_ingredient(ingredient4, 1)
#
# pry(main)> recipe1.total_calories
# # => 440
#
# pry(main)> recipe2.total_calories
# # => 675
#
# pry(main)> cookbook.add_recipe(recipe1)
#
# pry(main)> cookbook.add_recipe(recipe2)
#
# pry(main)> cookbook.ingredients
# # => ["Cheese", "Macaroni", "Ground Beef", "Bun"]
#
# pry(main)> cookbook.highest_calorie_meal
# # => #<Recipe:0x00007faae692a110...>
#
# pry(main)> pantry.restock(ingredient1, 5)
#
# pry(main)> pantry.restock(ingredient1, 10)
#
# pry(main)> pantry.enough_ingredients_for?(recipe)
# # => false
#
# pry(main)> pantry.restock(ingredient2, 7)
#
# pry(main)> pantry.enough_ingredients_for?(recipe)
# # => false
#
# pry(main)> pantry.restock(ingredient2, 1)
#
# pry(main)> pantry.enough_ingredients_for?(recipe)
# # => true
