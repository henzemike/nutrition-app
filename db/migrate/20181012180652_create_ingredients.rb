class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :nutritionix_api_id

      t.timestamps
    end
  end
end
