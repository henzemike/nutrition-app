# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users
User.create([
  {first_name: "Jack", last_name: "Henry", user_name: "jackhenry", email: "jack@gmail.com", password_digest: "$gdfheuihuidfhjkebtuihudg"}
])

User.create([
  {first_name: "Dave", last_name: "Brown", user_name: "davehenry", email: "dave@gmail.com", password_digest: "$gdfheudhuidfhjkebr$ihudg"}
])
# users end

# ingredients
Ingredient.create([
  {name: "chicken breast", nutritionix_api_id: 112}
])

Ingredient.create([
  {name: "jasmine rice", nutritionix_api_id: 134}
])

Ingredient.create([
  {name: "red potato", nutritionix_api_id: 108}
])

Ingredient.create([
  {name: "ground turkey", nutritionix_api_id: 156}
])

Ingredient.create([
  {name: "kale", nutritionix_api_id: 121}
])
#ingredients end

# meals
Meal.create ([
  {user_id: 1, name: "grilled chicken and rice", recipe_instructions: "Grill chicken breast, boil water, add rice and cook for 15 minutes"}
])

Meal.create ([
  {user_id: 2, name: "turkey and kale", recipe_instructions: "brown turkey, bake kale and serve"}
])
# meals end

#ingredient_meals
IngredientMeal.create([
  {ingredient_id: 1, meal_id: 1}
])

IngredientMeal.create([
  {ingredient_id: 2, meal_id: 1}
])

IngredientMeal.create([
  {ingredient_id: 4, meal_id: 2}
])

IngredientMeal.create([
  {ingredient_id: 5, meal_id: 2}
])

#ingredient_meals end