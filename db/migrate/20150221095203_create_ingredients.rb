class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :value
      t.string :title, index: true

      t.timestamps null: false
    end
  end
end
