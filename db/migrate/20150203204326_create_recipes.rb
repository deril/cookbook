class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.integer :ingredients_count
      t.integer :cooking_time
      t.string :complexity
      t.boolean :listed, index: true

      t.timestamps null: false
    end
  end
end
