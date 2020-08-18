class CreateRestaurantScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_scenes do |t|

      t.timestamps
    end
  end
end
