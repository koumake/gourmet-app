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

  validates :reserve_id, numericality: { other_than: 1 }
  validates :budget_dinner_id, numericality: { other_than: 1 }
  validates :budget_lunch_id, numericality: { other_than: 1 }
  validates :private_room_id, numericality: { other_than: 1 }
  validates :charter_id, numericality: { other_than: 1 }
  validates :smoking_id, numericality: { other_than: 1 }
  validates :drink_id, numericality: { other_than: 1 }
  validates :food_id, numericality: { other_than: 1 }

  with_options presence: true do
    validates :name_alias, format: {with: /\A[ァ-ヶー－]+\z/ }
    validates :tel, format: {with: /\A\d{11}\z/}
    validates :tel, length: {maximum: 11}
    validates :name
    validates :about
    validates :prefecture
    validates :city_address
    validates :genre
    validates :scene
    validates :feature
  end

end
