class Tag < ApplicationRecord
    belongs_to :post_tag

    validates :tag, presence: true
end
