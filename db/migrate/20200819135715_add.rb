class Add < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :menus, :string
  end
end
