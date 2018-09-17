class AddDescriptiontoGyms < ActiveRecord::Migration[5.2]
  def change
             add_column :gyms, :description, :text
  end
end
