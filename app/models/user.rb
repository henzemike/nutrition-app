class User < ApplicationRecord
  has_many :meals, dependent: :destroy

  has_secure_password
  validates :email, presence: true, uniqueness: true
  # validates :password, presence: true, confirmation: true, length: { minimum: 8 }

  def recent_meals
    # users last 6 meals
    meals.last(6)
  end
  
  
end
