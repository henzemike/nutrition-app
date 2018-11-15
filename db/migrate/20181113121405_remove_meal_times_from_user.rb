class RemoveMealTimesFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :breakfast, :string
    remove_column :users, :snack1, :string
    remove_column :users, :lunch, :string
    remove_column :users, :snack2, :string
    remove_column :users, :dinner, :string
  end
end
