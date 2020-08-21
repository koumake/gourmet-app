class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :date_time, null: false
      t.string :number, null: false
      t.string :lastname, null: false
      t.string :firstname, null: false
      t.string :lastname_kana, null: false
      t.string :firstname_kana, null: false
      t.text :request
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.timestamps
    end
  end
end
