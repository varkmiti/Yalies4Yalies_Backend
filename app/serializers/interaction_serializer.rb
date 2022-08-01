class InteractionSerializer < ActiveModel::Serializer
  attributes :id, :type, :user_id, :post_id, :target_user_id, :tag
end
