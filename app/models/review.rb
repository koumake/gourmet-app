class Review < ApplicationRecord
 
  belongs_to :user
  belongs_to :restaurant
  has_one_attached :image
end
