class WelcomeController < ApplicationController
  def index
    @recipe_listed = Recipe.recipe_of_the_day
  end
end
