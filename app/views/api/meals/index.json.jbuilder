json.array! @meals.each do |meal|
  json.partial! "meal.json.jbuilder", meal: meal
end