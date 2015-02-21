class Recipe < ActiveRecord::Base
  include ArelHelpers::ArelTable

  has_and_belongs_to_many :ingredients

  def self.recipe_of_the_day
    where(listed: true).first
  end

  def self.set_recipe_of_the_day
    current_recipe = recipe_of_the_day

    recipes_ids = current_recipe ? select(:id).where(Recipe[:id].not_eq(current_recipe.id)) : all

    next_recipe = find(recipes_ids.sample)

    current_recipe.toggle!(:listed) if current_recipe
    next_recipe.toggle!(:listed)
  end

end
