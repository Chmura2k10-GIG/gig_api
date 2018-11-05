class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :firstname, :lastname, :avatar, :age, :city, :login, :created_at, :updated_at
end
