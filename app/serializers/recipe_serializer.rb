class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_one :user
  has_many :recipe_ingredients
end
