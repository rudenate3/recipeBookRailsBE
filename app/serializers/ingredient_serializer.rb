class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :quantity_type
  has_many :recipes
end
