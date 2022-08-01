class ReplySerializer < ActiveModel::Serializer
  attributes :id, :content, :post_id, :likes, :replyname
end
