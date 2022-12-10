class Category < ApplicationRecord
    has_many :post_categories

    validates :category, presence: true
end
