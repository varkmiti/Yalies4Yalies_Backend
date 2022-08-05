class InteractionSerializer < ActiveModel::Serializer
  attributes :id, :occured, :user_id, :post_id, :tag
end
