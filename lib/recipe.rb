require 'pry'

class Recipe
  attr_reader :name, :required_ingredients

  def initialize(name)
    @name = name
    @required_ingredients = Hash.new(0)
  end

  def add_ingredient(ingredient, amount)
    @required_ingredients[ingredient] += amount
  end

  def total_calories
    all_ingredients = @required_ingredients.map {|ingredient, amount| (ingredient.calories * amount)}
    all_ingredients.sum
  end
end
