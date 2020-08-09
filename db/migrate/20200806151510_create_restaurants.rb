class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :name_alias, null: false
      t.string :tel, null: false
      t.string :prefecture, null: false, default: 0
      t.string :city_address, null: false
      t.string :building_name, null: false
      t.string :map, null: false
      t.string :area, null: false
      t.string :genre, null: false
      t.integer :reserve_id, null: false
      t.string :transportation, null: false
      t.text :hours, null: false
      t.string :holiday, null: false
      t.integer :budget_dinner_id, null: false
      t.integer :budget_lunch_id, null: false
      t.integer :seats_number
      t.string :seats_number_explain
      t.integer :private_room_id, null: false
      t.string :private_room_explain
      t.integer :charter_id
      t.integer :smoking_id
      t.string :scene, null: false
      t.string :feature, null: false
      t.integer :drink_id
      t.integer :food_id
      t.string :homepage

      t.timestamps
    end
  end
end
