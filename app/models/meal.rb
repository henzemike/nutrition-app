class Meal < ApplicationRecord
  belongs_to :user
  has_many :ingredient_meals, dependent: :destroy
  has_many :ingredients, through: :ingredient_meals

  
  def protein
    ingredients.each do |ingredient|
      # use the ingredient model method proetien to get a sum
    end
  end

end
