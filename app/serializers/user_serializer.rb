class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :college, :major, :password
end
