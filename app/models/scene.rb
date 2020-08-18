class Scene < ApplicationRecord
    has_many :restaurants, through: :restaurant_scene
    has_many :restaurants_scenes
end
