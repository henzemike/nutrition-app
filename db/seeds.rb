# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users
User.create([
  {first_name: "joe", last_name: "Henry", user_name: "joehenry", email: "joeh@gmail.com", password_digest: "$gdfheuihuidfhjkebtuihudg"}
])

User.create([
  {first_name: "Dave", last_name: "Brown", user_name: "davehenry", email: "dave@gmail.com", password_digest: "$gdfheudhuidfhjkebr$ihudg"}
])
# users end

# meals
Meal.create ([
  {user_id: 1, name: "grilled steak", recipe_instructions: "Grill chuck steak untill tender, cut open and if slightly pink it is cooked"}
])
#  meals end


# ingredients
Ingredient.create([
  {name: "chuck steak", nutritionix_api_id: "58ad39bdf7f1352754691416"}
])

Ingredient.create([
  {name: "banana", nutritionix_api_id: "513fceb475b8dbbc21000fd4"}
])
#ingredients end

#ingredient_meals
IngredientMeal.create([
  {ingredient_id: 1, meal_id: 1}
])
#ingredient_meals end