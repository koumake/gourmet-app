class CreateRestaurantFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_features do |t|

      t.timestamps
    end
  end
end
