class Ingredient < ApplicationRecord
  has_many :ingredient_meals
  has_many :meals, through: :ingredient_meals


  def protein
    # use api id to retrieve protein for this ingredient
    nutrients = HTTP.get("https://api.nutritionix.com/v1_1/item?id=#{nutritionix_api_id}&appId=#{ENV['API_ID']}&appKey=#{ENV['API_KEY']}").parse
    # parsing through to get protein
    nutrients["nf_protein"]
  end

  def carbohydrate
    # use api id to retrieve carbohydrates for this ingredient
    nutrients = HTTP.get("https://api.nutritionix.com/v1_1/item?id=#{nutritionix_api_id}&appId=#{ENV['API_ID']}&appKey=#{ENV['API_KEY']}").parse
    # parsing through to get protein
    nutrients["nf_total_carbohydrate"]
  end

  def fat
    # use api id to retrieve fats for this ingredient
    nutrients = HTTP.get("https://api.nutritionix.com/v1_1/item?id=#{nutritionix_api_id}&appId=#{ENV['API_ID']}&appKey=#{ENV['API_KEY']}").parse
    # parsing through to get protein
    nutrients["nf_total_fat"]
  end

end
