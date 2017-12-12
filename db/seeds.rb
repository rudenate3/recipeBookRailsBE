# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   --- Need to create user first
#

user = User.new
user.email = 'test@test.com'
user.password = 'testtest'
user.password_confirmation = 'testtest'
user.save!

Recipe.create(user_id: 1, title: 'Burger', description: 'A Cheeseburger')
Recipe.create(user_id: 1, title: 'Pasta', description: 'Some Pasta')
Recipe.create(user_id: 1, title: 'French Fries', description: 'Potatoes')

Ingredient.create(title: 'Bun', description: 'A sesame seed bun', quantity_type: 'bun')
Ingredient.create(title: 'Ground Beef', description: 'Grade A Beef', quantity_type: 'pound')
Ingredient.create(title: 'Cheese', description: 'Pepper Jack', quantity_type: 'slice')
Ingredient.create(title: 'Pasta', description: 'Pasta', quantity_type: 'oz')
Ingredient.create(title: 'Marinara Sauce', description: 'Marinara', quantity_type: 'oz')
Ingredient.create(title: 'Potatoes', description: 'From Idaho', quantity_type: 'potatoes')

RecipeIngredient.create(quantity: 1, recipe_id: 1, ingredient_id: 1)
RecipeIngredient.create(quantity: 1, recipe_id: 1, ingredient_id: 2)
RecipeIngredient.create(quantity: 1, recipe_id: 1, ingredient_id: 3)
RecipeIngredient.create(quantity: 16, recipe_id: 2, ingredient_id: 4)
RecipeIngredient.create(quantity: 24, recipe_id: 2, ingredient_id: 5)
RecipeIngredient.create(quantity: 3, recipe_id: 3, ingredient_id: 6)