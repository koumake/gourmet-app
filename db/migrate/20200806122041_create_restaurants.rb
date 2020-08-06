class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :genre,   null: false
      t.string :scene,   null: false
      t.string :date_time,  null: false
      t.references :area,  foreign_key: true
      t.timestamps
    end
  end
end
