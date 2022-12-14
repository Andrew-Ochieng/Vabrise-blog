class Author < ApplicationRecord
    has_many :posts
    has_secure_password

    validates :firstname, presence: true, uniqueness: true
    validates :lastname, presence: true, uniqueness: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true

end
