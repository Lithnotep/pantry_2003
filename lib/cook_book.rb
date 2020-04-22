require 'pry'
require 'date'
class CookBook
  attr_reader :recipes, :date

  def initialize
    @recipes = []
    @date = DateTime.now.strftime("%m-%d-%Y")
  end

  def add_recipe(recipe)
    @recipes.push(recipe)
  end

  def ingredients
    ingredient_names = []
    @recipes.each do |recipe|
      recipe.ingredients.map {|ingredient, amount| ingredient_names << ingredient.name}
    end
    ingredient_names.uniq
  end

  def highest_calorie_meal
    @recipes.max_by {|recipe| recipe.total_calories}
  end
end
