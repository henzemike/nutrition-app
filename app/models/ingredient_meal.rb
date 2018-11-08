class IngredientMeal < ApplicationRecord
  belongs_to :ingredient
  belongs_to :meal


  def protein
    # use api id to retrieve protein for this ingredient
  end
  
end
