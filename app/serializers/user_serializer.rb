class UserSerializer < ActiveModel::Serializer
  attributes :uid, :name, :nickname, :image
end
