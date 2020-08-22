class Restaurant < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :budget_dinner
  belongs_to_active_hash :budget_lunch
  belongs_to_active_hash :reserve
  belongs_to_active_hash :private_room
  belongs_to_active_hash :charter
  belongs_to_active_hash :smoking
  belongs_to_active_hash :drink
  belongs_to_active_hash :food
  
  belongs_to :user, optional: true
  has_many :reservations
  has_many :reviews
  has_one_attached :image

end
