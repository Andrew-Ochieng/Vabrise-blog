class Post < ApplicationRecord
    belongs_to :author
    belongs_to :category
    has_many :post_tags

    validates :author_id, presence: true
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true, length: {minimum: 100}

end
