class AddAreaToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :area, :string
  end
end
