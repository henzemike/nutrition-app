class CreateIngredientMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_meals do |t|
      t.integer :ingredient_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
