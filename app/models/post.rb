class Post < ApplicationRecord
    belongs_to :author

    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true, length: {minimum: 100}
    validates :category, presence: true, inclusion: { in: ['Software Development', 'Cyber Security', 'Graphics Design', 'Tech & Business'], message: "Must be one of Software Development, Cyber Security, Graphics Design, Tech & Business"}
end
