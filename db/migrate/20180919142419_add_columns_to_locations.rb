class AddColumnsToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :user_id, :integer
    add_column :locations, :coordinates, :string
  end
end
