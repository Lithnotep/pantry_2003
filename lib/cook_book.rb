require 'pry'

class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
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
end
