class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :student_id, :content, :likes, :tag1, :tag2, :tag3, :postname, :created_at
end
