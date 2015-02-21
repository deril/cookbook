class WelcomeController < ApplicationController
  def index
    @recipe_listed = Recipe.recipe_of_the_day
    @listed_ingredients = @recipe_listed.ingredients.pluck(:value)
    @listed_ingredients.take(11) << '. . .' if @listed_ingredients.length > 12
  end
end
