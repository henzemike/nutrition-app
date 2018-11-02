class RemoveIngredientsFromMeals < ActiveRecord::Migration[5.2]
  def change
    remove_column :meals, :recipe_ingredients, :string
  end
end
