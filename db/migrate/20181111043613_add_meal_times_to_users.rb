class AddMealTimesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :breakfast, :string
    add_column :users, :snack1, :string
    add_column :users, :lunch, :string
    add_column :users, :snack2, :string
    add_column :users, :dinner, :string
  end
end
