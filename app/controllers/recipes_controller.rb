class RecipesController < ApplicationController

  before_action :find_recipe, only: [:show]

  def show
    @ingredients = @recipe.ingredients
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
