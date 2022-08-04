class User < ApplicationRecord
    has_secure_password
    has_many :replies
    has_many :posts
    has_many :interactions


    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, length: { minimum: 4}
    validates :password_digest, presence: true
end

