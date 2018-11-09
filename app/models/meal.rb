class Meal < ApplicationRecord
  belongs_to :user
  has_many :ingredient_meals, dependent: :destroy
  has_many :ingredients, through: :ingredient_meals

  
  def protein
    total_protein = 0
    ingredients.each do |ingredient|
      # use the ingredient model method protein to get a sum
      total_protein += ingredient.protein
    end
    total_protein
  end

  def carbohydrate
    total_carbohydrate = 0
    ingredients.each do |ingredient|
      # use the ingredient model method carbohydrate to get a sum
      total_carbohydrate += ingredient.carbohydrate
    end
    total_carbohydrate
  end

  def fat
    total_fat = 0
    ingredients.each do |ingredient|
      # use the ingredient model method fat to get a sum
      total_fat += ingredient.fat
    end
    total_fat
  end

end
