class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.integer :user_id
      t.string :recipe_ingredients
      t.string :recipe_instructions

      t.timestamps
    end
  end
end
