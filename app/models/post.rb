class Post < ApplicationRecord
    has_many :replies
    belongs_to :user
    # validates :title, presence: true
    # validates :content, prescence: true
end
