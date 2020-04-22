require 'pry'

class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, amount)
    @stock[ingredient] += amount
  end

  def enough_ingredients_for?(recipe)
    have_enough = recipe.ingredients.map do |ingredient, amount|
     @stock[ingredient] >= amount
    end
    if have_enough.include?(false)
      false
    else
      true
    end
  end
end
