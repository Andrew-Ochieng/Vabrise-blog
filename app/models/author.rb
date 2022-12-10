class Author < ApplicationRecord
    has_many :posts

    validates username, presence: true
    validates password, presence: true, uniqueness: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

end
