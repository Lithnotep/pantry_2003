require 'pry'

class Recipe
  attr_reader :name, :ingredients

  def initialize(name)
    @name = name
    @ingredients = Hash.new(0)
  end

  def add_ingredient(ingredient, amount)
    @ingredients[ingredient] += amount
  end

  def total_calories
    all_ingredients = @ingredients.map {|ingredient, amount| (ingredient.calories * amount)}
    all_ingredients.sum
  end
  
end
