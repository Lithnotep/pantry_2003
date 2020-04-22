require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'


class IngredientTest < Minitest::Test

  def test_it_exists
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    assert_instance_of Ingredient, ingredient1
  end

  def test_it_has_attributes
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})

    assert_equal "Cheese", ingredient1.name
    assert_equal "oz", ingredient1.unit
    assert_equal 50, ingredient1.calories
  end
end

#
# pry(main)> ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
# # => #<Ingredient:0x007fe6041273d8...>
#
# pry(main)> ingredient1.name
# # => "Cheese"
#
# pry(main)> ingredient1.unit
# # => "oz"
#
# pry(main)> ingredient1.calories
# # => 50
#
# pry(main)> ingredient2 = Ingredient.new("Macaroni", "oz", 200)
# # => #<Ingredient:0x007fd88582ed98...>
#
# pry(main)> pantry = Pantry.new
# # => #<Pantry:0x007fd8858863b8...>
#
# pry(main)> pantry.stock
# # => {}
#
# pry(main)> pantry.stock_check(ingredient1)
# # => 0
#
# pry(main)> pantry.restock(ingredient1, 5)
#
# pry(main)> pantry.restock(ingredient1, 10)
#
# pry(main)> pantry.stock_check(ingredient1)
# # => 15
#
# pry(main)> pantry.restock(ingredient2, 7)
#
# pry(main)> pantry.stock_check(ingredient2)
# # => 7
