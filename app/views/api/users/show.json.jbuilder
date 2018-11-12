json.partial! "user.json.jbuilder", user: @user

json.meals do 
  json.array! @user.recent_meals.each do |meal|
    json.partial! "api/meals/meal.json.jbuilder", meal: meal
  end
end

