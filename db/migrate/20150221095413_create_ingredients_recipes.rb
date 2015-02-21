class CreateIngredientsRecipes < ActiveRecord::Migration
  def change
    create_table :ingredients_recipes do |t|
      t.references :ingredient
      t.references :recipe
    end
    add_index :ingredients_recipes, [:ingredient_id, :recipe_id], unique: true
  end
end
