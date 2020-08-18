class Feature < ApplicationRecord
    has_many :restaurants, through: :restaurant_features
    has_many :restaurants_features
end
