class User < ApplicationRecord
    has_secure_password 

    validates :name, uniqueness: true
    validates :name, presence: true

    has_many :articles, foreign_key: :author_id
end
