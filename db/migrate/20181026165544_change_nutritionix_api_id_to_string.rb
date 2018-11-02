class ChangeNutritionixApiIdToString < ActiveRecord::Migration[5.2]
  def change
    change_column :ingredients, :nutritionix_api_id, :string
  end
end
