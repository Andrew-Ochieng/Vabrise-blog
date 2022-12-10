class Comment < ApplicationRecord
    belongs_to :post

    validates :name, presence: true
    validates :comment, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    
end
