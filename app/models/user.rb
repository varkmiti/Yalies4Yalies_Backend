class User < ApplicationRecord
    has_secure_password
    has_many :replies
    has_many :posts
    has_many :interactions

    validates :username, presence: true, uniqueness: true
end

