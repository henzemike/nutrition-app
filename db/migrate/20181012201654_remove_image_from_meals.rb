class RemoveImageFromMeals < ActiveRecord::Migration[5.2]
  def change
    remove_column :meals, :image, :string
  end
end
