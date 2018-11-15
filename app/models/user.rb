class User < ApplicationRecord
  has_many :meals, dependent: :destroy

  has_secure_password
  validates :email, presence: true, uniqueness: true

  def recent_meals
    # users last 6 meals
    return meals.last(6)
  end
  
  
end
