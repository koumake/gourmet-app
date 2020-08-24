class Review < ApplicationRecord
 
  belongs_to :user
  belongs_to :restaurant
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :content
  end
end
