class Post < ApplicationRecord
    belongs_to :author

    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true, length: {minimum: 100}
    validates :category, presence: true 
    # inclusion: { in: %w(Business Sports Travel), message: "must be one of Business,Sports,Travel"}
end
