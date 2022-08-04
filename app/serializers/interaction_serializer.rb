class InteractionSerializer < ActiveModel::Serializer
  attributes :id, :type, :user_id, :post_id, :tag
end
