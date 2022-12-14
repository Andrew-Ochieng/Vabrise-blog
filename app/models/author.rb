class Author < ApplicationRecord
    has_secure_password
    has_many :posts

    validates :firstname, presence: true, uniqueness: true
    validates :lastname, presence: true, uniqueness: true
    validates :image_url, presence: true, uniqueness: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true

end
