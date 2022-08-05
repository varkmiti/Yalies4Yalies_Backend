class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :content, :likes, :tag1, :tag2, :tag3, :postname, :created_at, :score
end
