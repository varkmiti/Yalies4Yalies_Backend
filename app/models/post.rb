class Post < ApplicationRecord
    has_many :replies
    belongs_to :user, optional: true
    # validates :title, presence: true
    # validates :content, prescence: true
end
