class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email, :college, :major
end
